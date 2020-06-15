---
title: R Twitter Scraper Data Manipulation – Part 2
author: mtgingrass
type: post
date: 2019-08-04T11:16:18+00:00
url: /2019/08/04/r-twitter-scraper-data-manipulation-part-2/
featured_image: http://markgingrass.com/wp-content/uploads/2019/08/SCRAPE-TWITTER-WITH-R-pt2.jpg
classic-editor-remember:
  - block-editor
tap_disable_autolinker:
  - no
tap_autolink_inside_heading:
  - global
tap_autolink_random_placement:
  - global
categories:
  - Uncategorized
tags:
  - data manipulation
  - programming
  - r
  - rprogramming
  - word cloud

---
In the last lesson, <a rel="noreferrer noopener" aria-label="R Programming Twitter Scraper Part 1 (opens in a new tab)" href="http://r-programming-twitter-scraper-part-1" target="_blank">R Programming Twitter Scraper Part 1</a>, I showed you how to interface with the Twitter API using R and how to scrape tweets based on your search results. If you haven&#8217;t worked through that tutorial yet, make sure to go back and cover that one first.

In this lesson, we&#8217;re going to talk about how to clean the data, perform some analysis on it, and how to create a word cloud. You&#8217;ll need the Twitter account and API keys/tokens that you created in the last lesson. It&#8217;s worth noting that your API keys should be kept private, which is why mine are all XXXX&#8217;d out in the screenshots and video.

<div id="ez-toc-container" class="ez-toc-v2_0_11 counter-hierarchy counter-decimal ez-toc-grey">
  <div class="ez-toc-title-container">
    <p class="ez-toc-title">
      Overview
    </p>
    
    <span class="ez-toc-title-toggle"><a class="ez-toc-pull-right ez-toc-btn ez-toc-btn-xs ez-toc-btn-default ez-toc-toggle"><i class="ez-toc-glyphicon ez-toc-icon-toggle"></i></a></span>
  </div><nav>
  
  <ul class="ez-toc-list ez-toc-list-level-1">
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-1" href="http://markgingrass.com/2019/08/04/r-twitter-scraper-data-manipulation-part-2/#Get_Started" title="Get Started">Get Started</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-2" href="http://markgingrass.com/2019/08/04/r-twitter-scraper-data-manipulation-part-2/#Tidy_Up_Your_Data" title="Tidy Up Your Data">Tidy Up Your Data</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-3" href="http://markgingrass.com/2019/08/04/r-twitter-scraper-data-manipulation-part-2/#Create_a_Corpus" title="Create a Corpus">Create a Corpus</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-4" href="http://markgingrass.com/2019/08/04/r-twitter-scraper-data-manipulation-part-2/#Clean_Up_the_Tweet_Text" title=" Clean Up the Tweet Text"> Clean Up the Tweet Text</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-5" href="http://markgingrass.com/2019/08/04/r-twitter-scraper-data-manipulation-part-2/#Change_the_Order_of_the_Commands" title="Change the Order of the Commands">Change the Order of the Commands</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-6" href="http://markgingrass.com/2019/08/04/r-twitter-scraper-data-manipulation-part-2/#Create_a_Matrix_of_Terms" title="Create a Matrix of Terms">Create a Matrix of Terms</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-7" href="http://markgingrass.com/2019/08/04/r-twitter-scraper-data-manipulation-part-2/#View_the_Matrix" title="View the Matrix">View the Matrix</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-8" href="http://markgingrass.com/2019/08/04/r-twitter-scraper-data-manipulation-part-2/#Sort_the_Matrix_Data" title="Sort the Matrix Data">Sort the Matrix Data</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-9" href="http://markgingrass.com/2019/08/04/r-twitter-scraper-data-manipulation-part-2/#Create_a_Color_Palette_and_Word_Cloud" title="Create a Color Palette and Word Cloud">Create a Color Palette and Word Cloud</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-10" href="http://markgingrass.com/2019/08/04/r-twitter-scraper-data-manipulation-part-2/#View_Your_Word_Cloud!" title="View Your Word Cloud!">View Your Word Cloud!</a>
    </li>
  </ul></nav>
</div>

## <span class="ez-toc-section" id="Get_Started"></span>Get Started<span class="ez-toc-section-end"></span><figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_12_45-1024x638.png" alt="" class="wp-image-876" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_12_45-1024x638.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_12_45-300x187.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_12_45-768x479.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_12_45.png 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>A few more libraries have been added into the code</figcaption></figure> 

Since the last lesson I&#8217;ve added a few more libraries to our code:

  * **tm** (text manipulation)
  * **wordcloud**
  * **plyr**
  * **RColorBrewer**

Follow along and add these to your code. Run these libraries, run your API keys and run your twitter authorisation, all the way down to line 16 in the above screenshot.

Now enter and run **line 19** which is to collect 3000 tweets which include the tag **@realDonaldTrump** and assign them to the variable **tweets_trump**.

This search returns a data object from Twitter which we don&#8217;t know a lot about so we&#8217;re going to convert it into a **Data Frame**, something that we&#8217;re more familiar with. 

Scraping those 3000 tweets from Twitter may take a few minutes because of the large amount of data, so don&#8217;t worry if nothing happens immediately. You&#8217;ll know when it&#8217;s complete because the new variable **tweets_trump** will appear in the Global Environment panel. 

## <span class="ez-toc-section" id="Tidy_Up_Your_Data"></span>Tidy Up Your Data<span class="ez-toc-section-end"></span><figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_1_05-1024x639.png" alt="" class="wp-image-877" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_1_05-1024x639.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_1_05-300x187.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_1_05-768x479.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_1_05.png 1725w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Run line 21 when line 19 has completed its operation</figcaption></figure> 

Once this happens you should run **line 21** which will convert the data from the **tweets_trump** variable into a data frame. When this process completes you&#8217;ll see a new data object called **tweets.text** in the Global Environment.

Click on this object to bring up a full view of the data in the left-hand panel. There&#8217;s a lot of columns with various data points from the 3000 tweets and we really only need the first column for our purposes. We need to delete all the other columns and **line 22** of the code will do this for us: 

**tweets.text = tweets.text[,1]**

Now that the data set only contains one column, it becomes a **vector** and no longer appears as a data frame that we can click on to view. Notice that **tweets.text** has moved out of the **Data** section and into the **Values** section of the Global Environment.

## <span class="ez-toc-section" id="Create_a_Corpus"></span>Create a Corpus<span class="ez-toc-section-end"></span>

We now want to create a corpus from these tweets. A corpus is a large collection of articles about any subject.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_1_21-1024x638.png" alt="" class="wp-image-878" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_1_21-1024x638.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_1_21-300x187.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_1_21-768x479.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_1_21.png 1722w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Line 25 creates a corpus from tweets.txt</figcaption></figure> 

Run line 25: **tweets.corpus = Corpus(VectorSource(tweets.text))**

This will create the **tweets.corpus** variable from the vector source **tweets.text**. This is a dynamic source meaning that the source can change. It&#8217;s also using the data frame as the source, not the text data inside directly.

## <span class="ez-toc-section" id="Clean_Up_the_Tweet_Text"></span> Clean Up the Tweet Text<span class="ez-toc-section-end"></span>

We want to remove as much unnecessary content from the tweets as possible to make things easier for us later on. If you search around the internet you can find lots of examples of helper functions that will help you do this. A couple of example links are here on <a rel="noreferrer noopener" aria-label="github  (opens in a new tab)" href="https://github.com/raredd/regex" target="_blank">github</a> and <a rel="noreferrer noopener" aria-label="gnu (opens in a new tab)" href="https://www.gnu.org/software/grep/manual/html_node/Character-Classes-and-Bracket-Expressions.html" target="_blank">gnu</a>. Lines 30-33 help us by removing **URLs**, **@usernames**, **emojis**, and **special characters**. 

Go ahead and load these functions into memory by running lines 30-33. We can then call these functions any time we like, which is just what we&#8217;re going to do next.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_2_54-1024x638.png" alt="" class="wp-image-880" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_2_54-1024x638.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_2_54-300x187.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_2_54-768x479.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_2_54.png 1725w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>The first 4 tweets we want to inspect will show in the console</figcaption></figure> 

Run line 35. Essentially this applies the **tweet.removeURL** command to our **tweet.corpus** data. 

Then run line 36, which brings up the first 4 tweets from **tweet.corpus** for us to inspect in the Console. Take a look and you&#8217;ll see there are 4 tweets, and if everything has worked correctly there should be no URL data.

Next run line 37 to apply **tweet.removeATUser** to **tweet.corpus** and then line 38 to inspect the results again. Notice that tweet **[1]** is almost empty. This is because it was a tweet largely filled with @usernames and we just removed all of them. Sometimes this can catch us out because they could be relevant information such as famous people&#8217;s names. Often they&#8217;re unknown people&#8217;s names and therefore irrelevant so I normally go ahead and remove them all. 

Next run line 39 to remove emojis, line 40 to remove special characters, line 41 to strip white space (such as multiple spaces), line 42 to remove punctuation, and line 43 to make all text lowercase.

Another good idea is to remove words like **and**, **a**, **the**, which don&#8217;t really mean anything for statistical analysis, with the **stopwords** command on line 46. I&#8217;ve also added words like **RT** and **rt** (standing for retweet) because they&#8217;re common and we don&#8217;t need to count them. Also included is **realdonaldtrump** which should have been removed with the @usernames so this is just to catch any strays. 

Line 47 is self-explanatory with the **removeNumbers** command.

## <span class="ez-toc-section" id="Change_the_Order_of_the_Commands"></span>Change the Order of the Commands<span class="ez-toc-section-end"></span><figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_3_15-1024x638.png" alt="" class="wp-image-881" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_3_15-1024x638.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_3_15-300x187.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_3_15-768x479.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_3_15.png 1722w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>After removing words, there is white space left in our data</figcaption></figure> 

Inspect the results again by going back to run line 38, and look in the Console below. You&#8217;ll notice there are a whole lot of extra spaces (or white space) in our data. We already removed white spaces, so why is this? It&#8217;s because of the order of our commands. We removed white space first, and then afterwards removed other content like punctuation, numbers, and certain types of words. Removing these new words created new white space, which we again want to remove. 

The way to do this is to move the command on line 38 to the end, after the final **removeNumbers** command.

Now run line 38 again to inspect the results once more and you&#8217;ll see the spaces have gone! This is exactly what we want.

## <span class="ez-toc-section" id="Create_a_Matrix_of_Terms"></span>Create a Matrix of Terms<span class="ez-toc-section-end"></span>

Next up we want to use the **TermDocumentMatrix** command on our **tweet.corpus**. This will inspect all the data in the corpus and count the number of times each word has been used and then lay out the results in a matrix which we can use for various purposes.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_3_28-1024x639.png" alt="" class="wp-image-882" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_3_28-1024x639.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_3_28-300x187.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_3_28-768x480.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_3_28.png 1723w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Our term matrix shows in the Global Environment</figcaption></figure> 

Run line 54 **ap.tdm <- TermDocumentMatrix(tweet.corpus)**

Next run line 55 **ap.m <- as.matrix(ap.tdm)** to bring the this into a matrix named **ap.m** that we can view in R Studio showing up in the Global Environment.

## <span class="ez-toc-section" id="View_the_Matrix"></span>View the Matrix<span class="ez-toc-section-end"></span>

Go ahead and click on **ap.m** 

Near the bottom of the viewer you&#8217;ll see in my example it&#8217;s showing 4092 different words from the 3000 articles (tweets). You can scroll up and down to show different words, and across the top is the article number. Scroll over to the right and the numbers stop at 100. This is because of a limitation of R Studio, and in fact, there should be 3000 columns in total. They still exist, we just can&#8217;t view them directly in this program. <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_3_37b-1024x639.png" alt="" class="wp-image-884" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_3_37b-1024x639.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_3_37b-300x187.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_3_37b-768x479.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_3_37b.png 1724w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Our matrix on display in R Studio</figcaption></figure> 

In my example, you can also see the column headings aren&#8217;t quite correctly lined up with the results below, but we can do a quick check to establish that the results are correct and this is just a graphical quirk of R Studio again.

From the matrix, we can see that **promises** should be in article number 2. Go to the console and type **inspect(tweet.corpus[2])**<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_5_20-1024x639.png" alt="" class="wp-image-886" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_5_20-1024x639.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_5_20-300x187.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_5_20-768x479.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_5_20.png 1722w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>How to inspect an individual article in the Console</figcaption></figure> 

From the screenshot you can see the results show the article contains **promises**, so we don&#8217;t need to worry about the misalignment of columns, everything is where it should be.

As mentioned earlier, R Studio can only show 100 columns (in this case 100 articles) from left to right. To test whether the rest of the data is there we can run the code on line 56: **dim(ap.m)**. This will show us the dimensions of the matrix named **ap.m**. Go ahead and do this and the results will show in the Console. In my example the results show **4092 3000** which means 4092 rows and 3000 columns, so all is well.

## <span class="ez-toc-section" id="Sort_the_Matrix_Data"></span>Sort the Matrix Data<span class="ez-toc-section-end"></span>

Next we want to sort the rows in the matrix so that we can get a picture of which words show up the most. Run the code on line 57 to do this: **ap.v <- sort(rowSums(ap.m),decreasing=TRUE)** to do this.

Next we can create a data frame from this sorted info by running line 58: **ap.d <- data.frame(word = names(ap.v),freq=ap.v)** and then click on this result in the Global Environment to view it.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_5_35-1024x639.png" alt="" class="wp-image-887" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_5_35-1024x639.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_5_35-300x187.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_5_35-768x479.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_5_35.png 1723w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>**ap.d** data frame shown in the viewer</figcaption></figure> 

You&#8217;ll now see a table of words from the matrix sorted by how commonly they were used, the most common at the top. You can scroll down through all 4092 rows if you need to.

## <span class="ez-toc-section" id="Create_a_Color_Palette_and_Word_Cloud"></span>Create a Color Palette and Word Cloud<span class="ez-toc-section-end"></span>

On line 60 in the screenshot, there&#8217;s a link to some examples of <a rel="noreferrer noopener" aria-label="palette creation (opens in a new tab)" href="https://cran.r-project.org/web/packages/RColorBrewer/RColorBrewer.pdf" target="_blank">palette creation</a> tools. I&#8217;ve used one in our example here called **pal2**, which will make a palette of varying colours that we can apply to the word cloud we&#8217;ll generate later. It&#8217;s worth reading up on it in the pdf to fully understand what we&#8217;re doing there. Run the code on line 61 to create our palette and it will show inthe Global Environment.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_5_46-1024x639.png" alt="" class="wp-image-888" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_5_46-1024x639.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_5_46-300x187.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_5_46-768x479.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_5_46.png 1723w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Our new palette **pal2** showing in the Global Environment</figcaption></figure> 

Next up we create the **word cloud** itself by running 2 lines of code. Firstly line 62 creates a **png** file (a popular image file format) called **realdonaldtrump.png** with specific dimensions which you can change to anything you like. Next up run the code shown on line 63 with the command **wordcloud** to populate the image with our data. Lastly run line 65 **dev,off()** which tells the program that you&#8217;re done grabbing data for the png.

There are several parameters in the **wordcloud** command which can be adjusted. If you research more on wordcloud and play with the parameters shown you&#8217;ll be able to create some interesting different results. 

## <span class="ez-toc-section" id="View_Your_Word_Cloud!"></span>View Your Word Cloud!<span class="ez-toc-section-end"></span>

Finally, let&#8217;s have a look at what you&#8217;ve made with your hard work. Find the file called **realdonaldtrump.png** in the lower-right Files area and click on it. If you&#8217;re wondering this is stored in your working directory. To find out what your working directory is you can check in the Console by typing **getwd()**.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_6_01-1024x574.png" alt="" class="wp-image-891" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_6_01-1024x574.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_6_01-300x168.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_6_01-768x431.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-04_6_01.png 1684w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>The finished word cloud made in R Studio from Twitter scraping</figcaption></figure> 

And there you have it, our finished word cloud. Yours will look slightly different depending on what tweets and words you scraped. I&#8217;m curious to see what kind of results you got and what clouds you created so feel free to share them with me.

There was a lot of info to take in from today&#8217;s lesson so I hope it was useful to you, please let me know in the comments, and good luck with your word cloud!