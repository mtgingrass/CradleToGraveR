---
title: R Programming Twitter Scraper – Part 1
author: mtgingrass
type: post
date: 2019-08-02T11:20:32+00:00
url: /2019/08/02/r-programming-twitter-scraper-part-1/
featured_image: http://markgingrass.com/wp-content/uploads/2019/08/SCRAPE-TWITTER-WITH-R-2560-featured.jpg
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
  - programming
  - r
  - rprogramming
  - Tweet
  - twitter

---
In this lesson, you&#8217;ll learn how to use R Programming to capture Twitter search results and how to grab tweets from someone you&#8217;re interested in.

<div id="ez-toc-container" class="ez-toc-v2_0_11 counter-hierarchy counter-decimal ez-toc-grey">
  <div class="ez-toc-title-container">
    <p class="ez-toc-title">
      Overview
    </p>
    
    <span class="ez-toc-title-toggle"><a class="ez-toc-pull-right ez-toc-btn ez-toc-btn-xs ez-toc-btn-default ez-toc-toggle"><i class="ez-toc-glyphicon ez-toc-icon-toggle"></i></a></span>
  </div><nav>
  
  <ul class="ez-toc-list ez-toc-list-level-1">
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-1" href="http://markgingrass.com/2019/08/02/r-programming-twitter-scraper-part-1/#Register_for_a_Twitter_API" title="Register for a Twitter API">Register for a Twitter API</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-2" href="http://markgingrass.com/2019/08/02/r-programming-twitter-scraper-part-1/#Using_Your_API_Keys_in_R_Studio" title="Using Your API Keys in R Studio">Using Your API Keys in R Studio</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-3" href="http://markgingrass.com/2019/08/02/r-programming-twitter-scraper-part-1/#Install_Libraries" title="Install Libraries ">Install Libraries </a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-4" href="http://markgingrass.com/2019/08/02/r-programming-twitter-scraper-part-1/#Grab_Some_Tweets_Using_the_Code" title="Grab Some Tweets Using the Code">Grab Some Tweets Using the Code</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-5" href="http://markgingrass.com/2019/08/02/r-programming-twitter-scraper-part-1/#Place_the_Tweets_into_Data_Frames" title="Place the Tweets into Data Frames">Place the Tweets into Data Frames</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-6" href="http://markgingrass.com/2019/08/02/r-programming-twitter-scraper-part-1/#Write_Your_Data_Frames_to_CSV" title="Write Your Data Frames to CSV">Write Your Data Frames to CSV</a>
    </li>
  </ul></nav>
</div>

## <span class="ez-toc-section" id="Register_for_a_Twitter_API"></span>Register for a Twitter API<span class="ez-toc-section-end"></span>

Before interacting with Twitter you need to register for a Twitter API. To do this go to **<a rel="noreferrer noopener" aria-label="apps.twitter.com (opens in a new tab)" href="https://apps.twitter.com" target="_blank">apps.twitter.com</a>** &#8211; this is completely free, simple and only takes a couple of minutes to do.

<div class="wp-block-image">
  <figure class="aligncenter"><img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-01_2_37-1024x711.png" alt="" class="wp-image-847" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-01_2_37-1024x711.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-01_2_37-300x208.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-01_2_37-768x533.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-01_2_37.png 1122w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Click &#8220;Create New App&#8221;</figcaption></figure>
</div>

If you&#8217;re not registered on the <a class="thirstylink" target="_blank" title="SiteUnderground Link" href="http://markgingrass.com/recommends/siteunderground-link/" data-shortcode="true">site</a> you&#8217;ll need to go ahead and complete that part and sign in. Once that&#8217;s done, you should see a <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a> similar to the one above, except that you won&#8217;t have any apps like my &#8220;TrumpGrabber&#8221; there. Click on **Create New App**, and you&#8217;ll see this <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a> next:<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-01_2_44-1024x516.png" alt="" class="wp-image-848" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-01_2_44-1024x516.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-01_2_44-300x151.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-01_2_44-768x387.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-01_2_44.png 1725w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>You need to fill in everything apart from &#8220;Callback URL&#8221;</figcaption></figure> 

For **Name** and **Description** you can make up your own, anything you like. In the **Website** section, the small print says that you don&#8217;t _have_ to have a website, so just fill this in with something as a place holder for now, and we can come back and change it later. You don&#8217;t need to fill in the **Callback URL**.

Then hit **Create your Twitter application** down at the bottom of the page and this is going to give you access to an **API Key**, ****a **Secret API Key** and **Token Keys**. That part should be pretty self-explanatory.

## <span class="ez-toc-section" id="Using_Your_API_Keys_in_R_Studio"></span>Using Your API Keys in R Studio<span class="ez-toc-section-end"></span>

Switch to R Studio and we&#8217;ll figure out how to use your API keys in your code. <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_08-1024x603.png" alt="" class="wp-image-851" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_08-1024x603.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_08-300x177.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_08-768x452.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_08.png 1725w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>How to place your API keys in R Studio</figcaption></figure> 

Following the example in the screenshot above, paste your API codes in the relevant spots on lines 5-9 replacing the XXXXXs with the codes. Copy the **API Key** from Twitter to the API Key line in the code. Copy the **API Secret** from Twitter to the API Secret line in the code. The hardest part of this is getting the **Access Token** which you&#8217;ll need to grab by clicking **generate** **token** on the Twitter account.

## <span class="ez-toc-section" id="Install_Libraries"></span>Install Libraries <span class="ez-toc-section-end"></span>

There are two libraries we need to install, **twitteR** and **ROAuth**, both shown in the screenshot above. You can include these in the code, but you might have to install them. <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_19-1024x603.png" alt="" class="wp-image-852" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_19-1024x603.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_19-300x177.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_19-768x452.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_19.png 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Installing libraries in R Studio</figcaption></figure> 

To do so, go to the **Packages** tab in the lower-left and then the **Install** tab. In the pop-up search the name of the first library by starting to type **twitteR** and as you type the list will shorten until you find the library you want. Capitals do matter here so make sure to get them right. Hit install when you&#8217;re done and repeat for **ROAuth**.

## <span class="ez-toc-section" id="Grab_Some_Tweets_Using_the_Code"></span>Grab Some Tweets Using the Code<span class="ez-toc-section-end"></span>

Line 11 is where the magic starts to happen and you connect to the Twitter API. This line instructs the program to set up the Twitter OAuth, enter the API key and secret, access token and access token secret. <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_32-1024x602.png" alt="" class="wp-image-854" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_32-1024x602.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_32-300x176.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_32-768x451.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_32.png 1727w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Run lines 14-16</figcaption></figure> 

Lines 14-16 describe to the program what tweets to grab from Twitter. 

Line 14 asks for the last 50 (**n=50**) tweets from the username **realDonaldTrump** and assigns these to the variable **tweets_trump**. 

Line 15 asks for the last 200 tweets containing **@realDonaldTrump** and assigns them to **tweets_trump2**.

Line 16 looks for the last tweets containing **morning**+**bacon** and assigns them to **tweets_trump3**.

It&#8217;s important to know that there&#8217;s a limit to how far back you can go with the Twitter API. At some point in the last week or ten days or so, you won&#8217;t be able to grab any more data.

## <span class="ez-toc-section" id="Place_the_Tweets_into_Data_Frames"></span>Place the Tweets into Data Frames<span class="ez-toc-section-end"></span>

Go ahead and run lines 19-21 and this will assign the data in our variables into data frames shown in the Global Environment. Click on **tweets.df** to bring up the list of data contained inside.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_44-1024x604.png" alt="" class="wp-image-855" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_44-1024x604.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_44-300x177.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_44-768x453.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-02_3_44.png 1724w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Click on **tweets.df** to bring up a list of the data contained</figcaption></figure> 

On the left-hand side, you&#8217;ll see the various tweets sorted into rows and columns including the text of the tweet, how many times it&#8217;s been favorited when it was created, and so on. The reason we use data frames is that the data is easier to manipulate in this form compared to just using the variables such as **tweets_trump** where all the data is more compacted and not so useful.

## <span class="ez-toc-section" id="Write_Your_Data_Frames_to_CSV"></span>Write Your Data Frames to CSV<span class="ez-toc-section-end"></span>

Lastly, you can write the data to **comma separated value** files (**CSV)** by using the code **write.csv** and then specifying the variables as per lines 23-25. This way you&#8217;ll be able to bring up the data in Excel or Google Sheets too.

That&#8217;s all it takes to create a tweet scraper using R Programming. I hope you enjoyed this lesson, please leave a comment down below!

[embedyt] https://www.youtube.com/watch?v=1_K01qD4Exw[/embedyt]