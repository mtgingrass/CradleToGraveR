---
title: 🤱Cradle to Grave ⚰R – R Markdown Part 2 – Lesson 3
author: mtgingrass
type: post
date: 2019-07-16T00:35:50+00:00
url: /2019/07/16/cradle-to-grave-r-lesson-3/
featured_image: http://markgingrass.com/wp-content/uploads/2019/07/Copy-of-Copy-of-Copy-of-Python-Virtual-Environment-1.png
tap_disable_autolinker:
  - no
tap_autolink_inside_heading:
  - global
tap_autolink_random_placement:
  - global
classic-editor-remember:
  - classic-editor
categories:
  - Programming
  - R
tags:
  - markdown
  - r
  - rmarkdown
  - rprogramming
  - Rstudio

---
In Lesson 2 we started to learn the basics of R Markdown, created a new project called RProject1 and created our first Markdown files. In this lesson, I want to show you some of the R Markdown capabilities that will create some cool HTML files.

<div id="ez-toc-container" class="ez-toc-v2_0_11 counter-hierarchy counter-decimal ez-toc-grey">
  <div class="ez-toc-title-container">
    <p class="ez-toc-title">
      Overview
    </p>
    
    <span class="ez-toc-title-toggle"><a class="ez-toc-pull-right ez-toc-btn ez-toc-btn-xs ez-toc-btn-default ez-toc-toggle"><i class="ez-toc-glyphicon ez-toc-icon-toggle"></i></a></span>
  </div><nav>
  
  <ul class="ez-toc-list ez-toc-list-level-1">
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-1" href="http://markgingrass.com/2019/07/16/cradle-to-grave-r-lesson-3/#Embed_HTML_in_the_Markdown_file" title="Embed HTML in the Markdown file">Embed HTML in the Markdown file</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-2" href="http://markgingrass.com/2019/07/16/cradle-to-grave-r-lesson-3/#Link_Using_Markdown_Language" title="Link Using Markdown Language">Link Using Markdown Language</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-3" href="http://markgingrass.com/2019/07/16/cradle-to-grave-r-lesson-3/#Bold_Text" title="Bold Text">Bold Text</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-4" href="http://markgingrass.com/2019/07/16/cradle-to-grave-r-lesson-3/#Italic_Text" title="Italic Text">Italic Text</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-5" href="http://markgingrass.com/2019/07/16/cradle-to-grave-r-lesson-3/#Use_to_Change_Heading_Sizes" title="Use # to Change Heading Sizes">Use # to Change Heading Sizes</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-6" href="http://markgingrass.com/2019/07/16/cradle-to-grave-r-lesson-3/#Creating_a_Bullet_List_in_R_Markdown" title="Creating a Bullet List in R Markdown">Creating a Bullet List in R Markdown</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-7" href="http://markgingrass.com/2019/07/16/cradle-to-grave-r-lesson-3/#Create_a_Horizontal_Rule" title="Create a Horizontal Rule">Create a Horizontal Rule</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-8" href="http://markgingrass.com/2019/07/16/cradle-to-grave-r-lesson-3/#Create_a_Numbered_List" title="Create a Numbered List">Create a Numbered List</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-9" href="http://markgingrass.com/2019/07/16/cradle-to-grave-r-lesson-3/#Create_Superscript" title="Create Superscript ">Create Superscript </a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-10" href="http://markgingrass.com/2019/07/16/cradle-to-grave-r-lesson-3/#Only_in_HTML" title="Only in HTML">Only in HTML</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-11" href="http://markgingrass.com/2019/07/16/cradle-to-grave-r-lesson-3/#Summary" title="Summary">Summary</a>
    </li>
  </ul></nav>
</div>

## <span class="ez-toc-section" id="Embed_HTML_in_the_Markdown_file"></span>Embed HTML in the Markdown file<span class="ez-toc-section-end"></span><figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-40-1024x596.png" alt="" class="wp-image-782" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-40-1024x596.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-40-300x175.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-40-768x447.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-40.png 1728w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>We can hide this ugly looking link using HMTL</figcaption></figure> 

On line 12 of our example file, there&#8217;s a link to **http://rmarkdown.rstudio.com** and it doesn&#8217;t look great. We can make this look better by embedding the link into our Markdown. In this example, we&#8217;ll use simple HTML code, but if you don&#8217;t know HTML don&#8217;t worry, this is just an example to demonstrate and we&#8217;ll avoid it from now on. Try changing the text from: 

For more details on using R Markdown see **http://rmarkdown.rstudio.com**

To:

For more details on using R Markdown see **this <a href=&#8221;http://rmarkdown.rstudio.com&#8221;>link.</a>**<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-24-1024x633.png" alt="" class="wp-image-783" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-24-1024x633.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-24-300x185.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-24-768x475.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-24.png 1729w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Your new text should look like this</figcaption></figure> 

Once that&#8217;s done, we&#8217;re going to **knit** this by clicking on the knit button at the top of the R Markdown file window. If you&#8217;re not sure how to do this jump back to Lesson 2 for full instructions.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-57-1024x641.png" alt="" class="wp-image-784" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-57-1024x641.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-57-300x188.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-57-768x481.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-57.png 1718w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Our new clean looking link</figcaption></figure> 

Your new HTML file will pop up and you can see that our link shows up as a clean looking embedded link instead of showing the full address. It&#8217;s worth using the &#8220;Open in Browser&#8221; button at the top of the HTML display window to check how it looks in a normal web browser. The RStudio browser does its best to mimic what other browsers show you, but to be sure there are no differences it&#8217;s best to check.

## <span class="ez-toc-section" id="Link_Using_Markdown_Language"></span>Link Using Markdown Language<span class="ez-toc-section-end"></span>

Another way to achieve a similar result is to use Markdown Language instead of embedded HTML. <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-84-1024x632.png" alt="" class="wp-image-785" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-84-1024x632.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-84-300x185.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-84-768x474.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-84.png 1727w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Link using markdown language instead of HTML</figcaption></figure> 

Try changing the text to:

For more details on using R Markdown see **this \[link\](http://rmarkdown.rstudio.com**)

You&#8217;ll notice when you knit this new file that you see the exact same results, so you now have two different ways to hide the link and embed it into the text.

## <span class="ez-toc-section" id="Bold_Text"></span>Bold Text<span class="ez-toc-section-end"></span>

Look down at line 14 and you&#8217;ll see the text **\*\*Knit\*\***. Notice it&#8217;s surrounded by 2 asterisks/stars on each side. Very simply, this is a way to make text appear **bold** when you knit the file. Hit the knit button and you can see for yourself, or check it out in the previous screenshots.

## <span class="ez-toc-section" id="Italic_Text"></span>Italic Text<span class="ez-toc-section-end"></span>

If you want the text to display in _italics_ then instead of using 2 asterisks, just use 1 on each side. A quick way to do this is to highlight the word you want to be italicised and hit **shift+*** (shift with asterisk/star). Try this in your editor on the word **document**, then hit the knit button to see the result. If you prefer, you can manually type an asterisk on each side of the word, it will give the same result.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-51-1024x573.png" alt="" class="wp-image-786" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-51-1024x573.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-51-300x168.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-51-768x430.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-14-07-51.png 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Try \*document\* to create italic text</figcaption></figure> 

You can repeat the **shit+*** trick again on the same word to add another set of asterisks, making the word **bold** instead of _italics._

## <span class="ez-toc-section" id="Use_to_Change_Heading_Sizes"></span>Use # to Change Heading Sizes<span class="ez-toc-section-end"></span>

On line 10 you can see a subheading: **\## R Markdown**  
The number of HashTags # we use determines the size of the heading font in the resulting HTML file. More # symbols mean a smaller size. Go ahead and add another # symbol, hit the Knit button and you&#8217;ll see the results.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-76-1024x596.png" alt="" class="wp-image-787" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-76-1024x596.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-76-300x175.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-76-768x447.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-76.png 1727w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Using more HashTag # symbols to change the heading size</figcaption></figure> 

As you can see, the **R Markdown** heading with 3 hashtags ### ends up a slightly smaller size than the **Including Plots** heading with only 2 hashtags ##.

It&#8217;s really important to make sure everything in the editor is just right. Slightly altering the code can give strange results. For example, if you delete the space between the hashtags and the heading text, the hashtags themselves might become part of the heading and not perform their intended function.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-30-1024x597.png" alt="" class="wp-image-790" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-30-1024x597.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-30-300x175.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-30-768x448.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-30.png 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Removing the space causes an error in the heading display</figcaption></figure> 

## <span class="ez-toc-section" id="Creating_a_Bullet_List_in_R_Markdown"></span>Creating a Bullet List in R Markdown<span class="ez-toc-section-end"></span>

For this example, move your cursor to the empty line 11, hit enter to move down another line, and on line 12 type **This is a list:**  
Hit enter again to go to line 13, type an asterisk/star ***** and then type two spaces. That&#8217;s right, not one space, but two. If you don&#8217;t do this it won&#8217;t work correctly. After the two spaces you can enter the first item on the list, which in our case we&#8217;ll simply call **Item 1**  
Then hit enter to go to line 14, type a star ***** and then two spaces again, followed by **Item 2**. Then repeat again on Line 15 with **Item 3**.   
At this point hit **knit** to see the results. <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-17-1024x597.png" alt="" class="wp-image-791" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-17-1024x597.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-17-300x175.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-17-768x448.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-17.png 1727w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>This is how your list should look when you&#8217;re done</figcaption></figure> 

You&#8217;ll notice at this point that your list doesn&#8217;t look like the one in the screenshot above. Why is that? It&#8217;s a spacing issue. There&#8217;s nothing wrong with the double-spacing on your item list. Instead, you need to create one line of space above and below your list in the code. Go ahead and use the enter key to make a blank line on 13 and 17, and then hit **knit** again. This time you should have a result like the one above.

## <span class="ez-toc-section" id="Create_a_Horizontal_Rule"></span>Create a Horizontal Rule<span class="ez-toc-section-end"></span>

This is a simple one. Go to empty line 17, hit enter to create a new empty line on 18, and enter 4 horizontal dashes like this: **&#8212;-**<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-33-1024x632.png" alt="" class="wp-image-794" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-33-1024x632.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-33-300x185.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-33-768x474.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-33.png 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>The horizontal rule</figcaption></figure> 

Remember to keep a line of space between the end of your list and the horizontal rule, or the list won&#8217;t work correctly when you knit the file.

## <span class="ez-toc-section" id="Create_a_Numbered_List"></span>Create a Numbered List<span class="ez-toc-section-end"></span><figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-07-1024x596.png" alt="" class="wp-image-795" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-07-1024x596.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-07-300x175.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-07-768x447.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-15-07-07.png 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Make a numbered list in R Markdown</figcaption></figure> 

A numbered list is very similar to the bullet list we made earlier. Make sure there is a line of space at the top and bottom of the list in the Markdown window and for each line type:  
**1. Item 1**  
**2. Item 2**  
**3. Item 3**  
And so on. The key here again is that there are **two spaces** between the period and the name of the item, just like with the bullet list. 

## <span class="ez-toc-section" id="Create_Superscript"></span>Create Superscript <span class="ez-toc-section-end"></span>

Another super simple example, all you need to do is create a new line and type:  
**x^2^**  
The key here is to surround the 2 with a **^** (named the caret symbol) either side. This tells the program that you&#8217;d like to raise this text to become superscript. Hit the **knit** button and check out the results.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-16-07-41-1024x776.png" alt="" class="wp-image-796" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-16-07-41-1024x776.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-16-07-41-300x227.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-16-07-41-768x582.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Markdown-Part-2-Lesson-3-YouTube-2019-07-28-16-07-41.png 1057w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>How to create superscript using R Markdown</figcaption></figure> 

Feel free to look up other R Markdown examples and experiment with them. 

## <span class="ez-toc-section" id="Only_in_HTML"></span>Only in HTML<span class="ez-toc-section-end"></span>

It&#8217;s important to understand that these examples only work when you knit to HTML. If you try to knit to PDF, you&#8217;ll encounter a number of errors and a lot of red text. To switch back to HTML you need to expand the drop-down menu next to the **knit** button and switch back to HTML, just like the very first time you selected this method.

## <span class="ez-toc-section" id="Summary"></span>Summary<span class="ez-toc-section-end"></span>

In this lesson, we&#8217;ve explored a few more cool examples of what you can do with R Markdown and HTML, including lists, horizontal rules, superscript and more.

In the next lesson, I&#8217;ll introduce you to R Notebook.

I hope this lesson was useful for you, if it was please leave a comment and let me know how.

[embedyt] https://youtu.be/DNyKaW0QdlI[/embedyt]