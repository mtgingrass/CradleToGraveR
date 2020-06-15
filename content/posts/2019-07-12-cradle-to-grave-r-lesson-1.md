---
title: 🤱Cradle to Grave ⚰R – Lesson 1
author: mtgingrass
type: post
date: 2019-07-12T13:36:17+00:00
url: /2019/07/12/cradle-to-grave-r-lesson-1/
featured_image: http://markgingrass.com/wp-content/uploads/2019/07/hqdefault-5.jpg
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
  - programming
  - r
  - r script
  - rprogramming
  - scripts

---
In this series of tutorials, we&#8217;ll cover the basics of R programming and RStudio. By the end of this lesson you&#8217;ll know:

  * Basic math operations in the RStudio
  * Where your variables are stored
  * How to create and run your first R Script

I&#8217;m assuming that you&#8217;ve already installed R and RStudio, and the tutorial is going to cater to people who already have a little programming experience. It&#8217;s not essential that you have this, but a little bit of math knowledge or logical thinking will get you through. Let&#8217;s get started!

<div id="ez-toc-container" class="ez-toc-v2_0_11 counter-hierarchy counter-decimal ez-toc-grey">
  <div class="ez-toc-title-container">
    <p class="ez-toc-title">
      Overview
    </p>
    
    <span class="ez-toc-title-toggle"><a class="ez-toc-pull-right ez-toc-btn ez-toc-btn-xs ez-toc-btn-default ez-toc-toggle"><i class="ez-toc-glyphicon ez-toc-icon-toggle"></i></a></span>
  </div><nav>
  
  <ul class="ez-toc-list ez-toc-list-level-1">
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-1" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#Open_RStudio" title="Open RStudio">Open RStudio</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-2" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#Getting_Started" title="Getting Started">Getting Started</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-3" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#Create_Your_First_R_Script" title="Create Your First R Script">Create Your First R Script</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-4" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#Assign_a_Value_to_a_Variable" title="Assign a Value to a Variable">Assign a Value to a Variable</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-5" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#Run_Your_Script" title="Run Your Script">Run Your Script</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-6" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#Summary" title="Summary">Summary</a><ul class="ez-toc-list-level-3">
        <li class="ez-toc-heading-level-3">
          <a class="ez-toc-link ez-toc-heading-7" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#GOOD_AUDIO_%E2%80%93_Install_R_RStudio_on_Windows_+_First_Script_2019" title="GOOD AUDIO &#8211; Install R &#038; RStudio on Windows + First Script 2019">GOOD AUDIO &#8211; Install R & RStudio on Windows + First Script 2019</a>
        </li>
        <li class="ez-toc-page-1 ez-toc-heading-level-3">
          <a class="ez-toc-link ez-toc-heading-8" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#Download_R_R_Studio_%E2%80%93_First_R_Script_Complete_Guide_%E2%80%93_Lesson_0" title="Download R &#038; R Studio &#8211; First R Script Complete Guide &#8211; Lesson 0">Download R & R Studio &#8211; First R Script Complete Guide &#8211; Lesson 0</a>
        </li>
        <li class="ez-toc-page-1 ez-toc-heading-level-3">
          <a class="ez-toc-link ez-toc-heading-9" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#Math_Operations_%E2%80%93_Lesson_1_R_Tutorial_for_Begginers" title="Math Operations &#8211; Lesson 1 R Tutorial for Begginers">Math Operations &#8211; Lesson 1 R Tutorial for Begginers</a>
        </li>
        <li class="ez-toc-page-1 ez-toc-heading-level-3">
          <a class="ez-toc-link ez-toc-heading-10" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#R_Markdown_%E2%80%93_Lesson_2" title="R Markdown &#8211; Lesson 2">R Markdown &#8211; Lesson 2</a>
        </li>
        <li class="ez-toc-page-1 ez-toc-heading-level-3">
          <a class="ez-toc-link ez-toc-heading-11" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#R_Markdown_Part_2_%E2%80%93_Lesson_3" title="R Markdown Part 2 &#8211; Lesson 3">R Markdown Part 2 &#8211; Lesson 3</a>
        </li>
        <li class="ez-toc-page-1 ez-toc-heading-level-3">
          <a class="ez-toc-link ez-toc-heading-12" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#Vectors_and_Functions_%E2%80%93_Lesson_4" title="Vectors and Functions &#8211; Lesson 4">Vectors and Functions &#8211; Lesson 4</a>
        </li>
        <li class="ez-toc-page-1 ez-toc-heading-level-3">
          <a class="ez-toc-link ez-toc-heading-13" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#R_Notebooks_%E2%80%93_Lesson_5" title="R Notebooks &#8211; Lesson 5">R Notebooks &#8211; Lesson 5</a>
        </li>
        <li class="ez-toc-page-1 ez-toc-heading-level-3">
          <a class="ez-toc-link ez-toc-heading-14" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#Import_CSV_Files_using_Tidyverse_%E2%80%93_R_Lesson_6" title="Import CSV Files using Tidyverse &#8211; R Lesson 6">Import CSV Files using Tidyverse &#8211; R Lesson 6</a>
        </li>
        <li class="ez-toc-page-1 ez-toc-heading-level-3">
          <a class="ez-toc-link ez-toc-heading-15" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#Sequence,_Repeat_and_Sample_%E2%80%93_R_Lesson_7" title="Sequence, Repeat and Sample &#8211; R Lesson 7">Sequence, Repeat and Sample &#8211; R Lesson 7</a>
        </li>
        <li class="ez-toc-page-1 ez-toc-heading-level-3">
          <a class="ez-toc-link ez-toc-heading-16" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#Random_Numbers,_Seeds_%E2%80%93_R_Lesson_8" title="Random Numbers, Seeds &#8211; R Lesson 8">Random Numbers, Seeds &#8211; R Lesson 8</a>
        </li>
        <li class="ez-toc-page-1 ez-toc-heading-level-3">
          <a class="ez-toc-link ez-toc-heading-17" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#Subsetting_Data_(data_frame),_1_of_Many_%E2%80%93_R_Lesson_9" title="Subsetting Data (data frame), 1 of Many &#8211; R Lesson 9">Subsetting Data (data frame), 1 of Many &#8211; R Lesson 9</a>
        </li>
        <li class="ez-toc-page-1 ez-toc-heading-level-3">
          <a class="ez-toc-link ez-toc-heading-18" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#Subsetting_Data_Conditionally,_1_of_Many_%E2%80%93_R_Lesson_10_CradleToGraveR" title="Subsetting Data Conditionally, 1 of Many &#8211; R Lesson 10 CradleToGraveR">Subsetting Data Conditionally, 1 of Many &#8211; R Lesson 10 CradleToGraveR</a>
        </li>
        <li class="ez-toc-page-1 ez-toc-heading-level-3">
          <a class="ez-toc-link ez-toc-heading-19" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#ggplot_Scatter_Plot,_geompoint_(first_plot)_%E2%80%93_R_Lesson_11_CradleToGraveR" title="ggplot Scatter Plot, geom_point (first plot) &#8211; R Lesson 11 CradleToGraveR">ggplot Scatter Plot, geom_point (first plot) &#8211; R Lesson 11 CradleToGraveR</a>
        </li>
        <li class="ez-toc-page-1 ez-toc-heading-level-3">
          <a class="ez-toc-link ez-toc-heading-20" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#ggplot_Labels_and_Titles,_markdown_tabs_%E2%80%93_R_Lesson_12_CradleToGraveR" title="ggplot Labels and Titles, markdown tabs &#8211; R Lesson 12 CradleToGraveR">ggplot Labels and Titles, markdown tabs &#8211; R Lesson 12 CradleToGraveR</a>
        </li>
        <li class="ez-toc-page-1 ez-toc-heading-level-3">
          <a class="ez-toc-link ez-toc-heading-21" href="http://markgingrass.com/2019/07/12/cradle-to-grave-r-lesson-1/#ggplot_Colors,_Size,_Alpha_%E2%80%93_R_Lesson_13" title="ggplot Colors, Size, Alpha &#8211;  R Lesson 13">ggplot Colors, Size, Alpha &#8211; R Lesson 13</a>
        </li>
      </ul>
    </li>
  </ul></nav>
</div>

## <span class="ez-toc-section" id="Open_RStudio"></span>Open RStudio<span class="ez-toc-section-end"></span>

Once RStudio is open your <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a> will look like this:<figure class="wp-block-image">


<img class="wp-image-727" src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-98b-1024x597.png" alt="" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-98b-1024x597.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-98b-300x175.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-98b-768x448.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-98b.png 1734w" sizes="(max-width: 1024px) 100vw, 1024px" /> <figcaption>Console Area and Input Cursor</figcaption> </figure> 

The left-hand-side of the <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a> will be the Console Area, and inside that, you&#8217;ll see a greater-than sign **>** followed by a blinking cursor. This is where you&#8217;ll input code.<figure class="wp-block-image">


<img class="wp-image-730" src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-80-1024x694.png" alt="" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-80-1024x694.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-80-300x203.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-80-768x520.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-80.png 1190w" sizes="(max-width: 1024px) 100vw, 1024px" /> <figcaption>Environment</figcaption> </figure> 

On the top-right hand side, you&#8217;ll find the Environment. At the start, this will be empty because nothing has been stored there, but later on, this is where your variables will be stored.<figure class="wp-block-image">


<img class="wp-image-731" src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-46-1024x744.png" alt="" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-46-1024x744.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-46-300x218.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-46-768x558.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-46.png 1396w" sizes="(max-width: 1024px) 100vw, 1024px" /> <figcaption>Other tabs</figcaption> </figure> 

In the bottom-right of the <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a>, you&#8217;ll find several other tabs, and usually the Packages or Files tab is selected by default.

## <span class="ez-toc-section" id="Getting_Started"></span>Getting Started<span class="ez-toc-section-end"></span>

You can go right ahead and type simple calculations into the console. You can try typing **2 + 4** then hitting **ENTER** and you&#8217;ll get the result **[1] 6**. What this means is that the first line of your output **[1]** has the result of **6**. Carry on and follow the other examples in the video including multiplications, exponents, trigonometric functions, and more.

This is a great start. However, we don&#8217;t really want to work in the console, as this is a bit like working directly on a stove. We don&#8217;t want it all to cook immediately. Instead, we need to create a recipe first and we&#8217;re going to call this recipe an &#8216;**R Script**&#8216;. We can store these recipes just like you would a cooking book, and not actually cook anything until we&#8217;re ready to put it all on the stove.

## <span class="ez-toc-section" id="Create_Your_First_R_Script"></span>Create Your First R Script<span class="ez-toc-section-end"></span><figure class="wp-block-image">


<img class="wp-image-735" src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-74-1024x637.png" alt="" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-74-1024x637.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-74-300x187.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-74-768x478.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-17-07-74.png 1727w" sizes="(max-width: 1024px) 100vw, 1024px" /> <figcaption>Select File > New File > R Script</figcaption> </figure> 

To create your first R Script go to the **File** menu, then **New File**, then **R Script**. A new window will appear above the console, with the tab **Untitled 1**. This will be your script. It&#8217;s a great habit to save at this point and regularly as you go.

Scripts offer the simplest form of _repeatable analysis_ in R. They&#8217;re text files that contain codes and comments, and their extension is **.R** (dot with a capital R).

A great practice with scripts is to leave comments. You can do this by starting any line with the **\#** symbol. Anything to the right of that hashtag or pound symbol will not be executed when you run the script.<figure class="wp-block-image">


<img class="wp-image-737" src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-18-07-22-1024x638.png" alt="" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-18-07-22-1024x638.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-18-07-22-300x187.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-18-07-22-768x478.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-24-18-07-22.png 1724w" sizes="(max-width: 1024px) 100vw, 1024px" /> <figcaption>Use # symbols for comments</figcaption> </figure> 

Down the left-hand side of the script, you&#8217;ll see the **line numbers** 1, 2, 3 etc.

At this point, if you want to change the look and feel of RStudio, head to the **Tools** menu, followed by **Global Options**, and then go to the **Appearance** tab. From there you can change font, text size, zoom and you can choose an Editor Theme. The themes change the general look of a few different parts of the program all at once, so click through a few and choose the one you like the look of.

Once you&#8217;re happy with the look of your RStudio, go ahead and try entering a basic math command in the script window such as **2 + 2** as in the video. You&#8217;ll notice that when you hit **ENTER**, nothing happens! This is different from the console window, where the formula would be calculated immediately. If you look lower on the <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a>, you&#8217;ll see you still have the console window available, it&#8217;s just moved to the bottom.<figure class="wp-block-image">


<img class="wp-image-742" src="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-13-07-22-1024x597.png" alt="" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-13-07-22-1024x597.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-13-07-22-300x175.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-13-07-22-768x448.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-13-07-22.png 1727w" sizes="(max-width: 1024px) 100vw, 1024px" /> <figcaption>The console window is still available below the script window</figcaption> </figure> 

To get the formula to calculate in the console window, you&#8217;ll need to hit **Cmd-Enter** on the Mac, or **Ctrl+Enter** on the PC when in the script window. Then if you look below, you&#8217;ll see the results posted in the console window.

## <span class="ez-toc-section" id="Assign_a_Value_to_a_Variable"></span>Assign a Value to a Variable<span class="ez-toc-section-end"></span>

To assign a value to a variable in RStudio, go to the script window and change your **2 + 2** line to read **x <- 2 + 2**  
When you hit **Cmd/Ctrl+Enter** you&#8217;ll then notice in the global environment window (that&#8217;s on the top-right of your <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a>) shows X being equal to 4.<figure class="wp-block-image">


<img class="wp-image-743" src="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-51-1024x596.png" alt="" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-51-1024x596.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-51-300x175.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-51-768x447.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-51.png 1731w" sizes="(max-width: 1024px) 100vw, 1024px" /> <figcaption>Our value is now stored in the Global Environment window</figcaption> </figure> 

From now on if I want to use the value **x** in the console window, the program will automatically know that it&#8217;s a 4. Try typing **x** then hitting **enter** in the console window and you&#8217;ll see the result is 4. Try the same thing in the script window, but remember to use **cmd/ctrl+enter**.<figure class="wp-block-image">


<img class="wp-image-744" src="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-29-1024x597.png" alt="" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-29-1024x597.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-29-300x175.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-29-768x448.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-29.png 1729w" sizes="(max-width: 1024px) 100vw, 1024px" /> <figcaption>This is a great time to save your work</figcaption> </figure> 

Remember to save your work regularly. At this point let&#8217;s save what you&#8217;ve created. Go to the **File menu > Save As&#8230;** then name and save your progress. Once you&#8217;ve done this, the name of the tab above the script window will change from &#8216;Untitled&#8217; to reflect your new file name, finished by **.R** at the end.

## <span class="ez-toc-section" id="Run_Your_Script"></span>Run Your Script<span class="ez-toc-section-end"></span>

Now it&#8217;s time to run your script!<figure class="wp-block-image">


<img class="wp-image-745" src="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-05-1024x639.png" alt="" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-05-1024x639.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-05-300x187.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-05-768x479.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-05.png 1727w" sizes="(max-width: 1024px) 100vw, 1024px" /> <figcaption>The run button in the script window</figcaption> </figure> 

You&#8217;ll find a **Run** button along the top of the script window. It performs a similar function to pressing **cmd/ctrl+enter**. Meaning that if you hit the run button, it will only run the current line that your blinking cursor is on. If your cursor is on line 5, it will run only line 5, for example. If you want to run the entire script you&#8217;ll first need to use your mouse to highlight everything you want to run, and then press the **Run** button.<figure class="wp-block-image">


<img class="wp-image-746" src="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-89-1024x596.png" alt="" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-89-1024x596.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-89-300x174.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-89-768x447.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-89.png 1728w" sizes="(max-width: 1024px) 100vw, 1024px" /> <figcaption>Highlight everything you&#8217;d like to run</figcaption> </figure> 

Notice that when you highlight the lines starting with **\#** they don&#8217;t affect the output. This is because they&#8217;re just comments and won&#8217;t be a functioning part of the code.

Next up you can make your script a little more complex, and create another variable using your first. Try changing line 6 to **y <- x + 4** then running that line. Take a look in the Global Environment window and if you&#8217;ve done everything right you&#8217;ll see the new variable and it&#8217;ll be 4 more than **x**. Note that in the video I changed the value for **x** a little earlier too, so if your numbers don&#8217;t look the same don&#8217;t worry too much, you can alter your code to match what I have in the script window. These variables now remain in the computer memory for us to use any time we need to, until we close RStudio.<figure class="wp-block-image">


<img class="wp-image-747" src="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-83-1024x597.png" alt="" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-83-1024x597.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-83-300x175.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-83-768x448.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Math-Operations-Lesson-1-YouTube-2019-07-25-14-07-83.png 1729w" sizes="(max-width: 1024px) 100vw, 1024px" /> <figcaption>Y should be 4 more than X</figcaption> </figure> 

## <span class="ez-toc-section" id="Summary"></span>Summary<span class="ez-toc-section-end"></span>

Now you&#8217;re able to make, run and save an R Script, which is good for some simple analysis.

If you want to publish this with documentation, methods, conclusion etc then R Script isn&#8217;t the best method for that, so in the next lesson, we&#8217;re going to look at R Markdowns and R Notebooks to help with that.

I hope this lesson was useful and if it was please leave a comment below!

[embedyt] https://www.youtube.com/watch?v=MRjVsw5JoJ8[/embedyt]

<div class="yotu-playlist yotuwp yotu-limit-min   yotu-thumb-169  yotu-template-grid" data-yotu="5ee799c890da3" data-page="1" id="yotuwp-5ee799c87855e" data-total="4" data-settings="eyJ0eXBlIjoicGxheWxpc3QiLCJpZCI6IlBMdWFrX2JHdmNXWk8wRGEwY0RWQnBEZVRRUEVXcHV2Q0QiLCJwYWdpbmF0aW9uIjoib24iLCJwYWdpdHlwZSI6InBhZ2VyIiwiY29sdW1uIjoiMyIsInBlcl9wYWdlIjoiMTUiLCJ0ZW1wbGF0ZSI6ImdyaWQiLCJ0aXRsZSI6Im9uIiwiZGVzY3JpcHRpb24iOiJvbiIsInRodW1icmF0aW8iOiIxNjkiLCJtZXRhIjoib2ZmIiwibWV0YV9kYXRhIjoib2ZmIiwibWV0YV9wb3NpdGlvbiI6Im9mZiIsImRhdGVfZm9ybWF0Ijoib2ZmIiwibWV0YV9hbGlnbiI6Im9mZiIsInN1YnNjcmliZSI6Im9mZiIsImR1cmF0aW9uIjoib2ZmIiwibWV0YV9pY29uIjoib2ZmIiwibmV4dHRleHQiOiIiLCJwcmV2dGV4dCI6IiIsImxvYWRtb3JldGV4dCI6IiIsInBsYXllciI6eyJtb2RlIjoibGFyZ2UiLCJ3aWR0aCI6IjYwMCIsInNjcm9sbGluZyI6IjEwMCIsImF1dG9wbGF5Ijoib2ZmIiwiY29udHJvbHMiOiJvbiIsIm1vZGVzdGJyYW5kaW5nIjoib24iLCJsb29wIjoib2ZmIiwiYXV0b25leHQiOiJvZmYiLCJzaG93aW5mbyI6Im9uIiwicmVsIjoib24iLCJwbGF5aW5nIjoib2ZmIiwicGxheWluZ19kZXNjcmlwdGlvbiI6Im9mZiIsInRodW1ibmFpbHMiOiJvZmYiLCJjY19sb2FkX3BvbGljeSI6IjEiLCJjY19sYW5nX3ByZWYiOiIxIiwiaGwiOiIiLCJpdl9sb2FkX3BvbGljeSI6IjEifSwibGFzdF90YWIiOiJzZXR0aW5ncyIsInVzZV9hc19tb2RhbCI6Im9mZiIsIm1vZGFsX2lkIjoib2ZmIiwibGFzdF91cGRhdGUiOiIxNTY0ODYzMjU2Iiwic3R5bGluZyI6eyJwYWdlcl9sYXlvdXQiOiJkZWZhdWx0IiwiYnV0dG9uIjoiMSIsImJ1dHRvbl9jb2xvciI6IiIsImJ1dHRvbl9iZ19jb2xvciI6IiIsImJ1dHRvbl9jb2xvcl9ob3ZlciI6IiIsImJ1dHRvbl9iZ19jb2xvcl9ob3ZlciI6IiIsInZpZGVvX3N0eWxlIjoiIiwicGxheWljb25fY29sb3IiOiIiLCJob3Zlcl9pY29uIjoiIiwiZ2FsbGVyeV9iZyI6IiJ9LCJlZmZlY3RzIjp7InZpZGVvX2JveCI6IiIsImZsaXBfZWZmZWN0IjoiIn0sImdhbGxlcnlfaWQiOiI1ZWU3OTljODc4NTVlIiwibmV4dCI6IkNBOFFBQSIsInByZXYiOiIifQ==" data-player="large" data-showdesc="on">
  <div>
    <div class="yotu-wrapper-player" style="width:600px">
      <div class="yotu-playing">
        GOOD AUDIO - Install R & RStudio on Windows + First Script 2019
      </div>
      
      <div class="yotu-player">
        <div class="yotu-video-placeholder" id="yotu-player-5ee799c890da3">
        </div>
      </div>
      
      <div class="yotu-playing-status">
      </div>
      
      <div class="yotu-playing-description">
        #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> Follow the steps below to download R and RStudio and create your first script. Busy? Try putting the video on 1.5x speed or skipping about half after installing with the links below. Good luck and please subscribe and like this video!<br /> <br /> MAC<br /> R 3.6.1.pkg: https://cran.r-project.org/bin/macosx/R-3.6.1.pkg<br /> RStudio 1.2.5001: https://download1.rstudio.org/desktop/macos/RStudio-1.2.5001.dmg<br /> <br /> WINDOWS<br /> R 3.6.1.exe: https://cran.r-project.org/bin/windows/base/R-3.6.1-win.exe<br /> RStudio 1.2.5001: https://download1.rstudio.org/desktop/windows/RStudio-1.2.5001.exe<br /> <br /> Please subscribe if you found this useful and want to see more. <br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> <br /> ➔Everyone should download TubeBuddy! http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔2 Months SkillShare Free➔ https://www.skillshare.com/r/profile/...<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> <br /> In lesson 3, we learned some more cool Markdown features in R. In this lesson, we're going to look at Vectors and Functions.<br /> <br /> #rstats #rstudio #rstudiotips #datascience #rprogramming<br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> <br /> TECH GEAR I USE DAILY<br /> ➔ I work on a MBP: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ MICROPHONE - https://amzn.to/2LYfJkr<br /> ➔ BACKPACK - https://amzn.to/2Ep4uez<br /> ➔ GREEN SCREEN - https://amzn.to/2JVzMgP<br /> ➔ <a class="thirstylink" target="_blank" title="Tripod Amazon" href="https://amzn.to/2Eo2wv4" data-linkid="512" data-shortcode="true">TRIPOD</a> - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://www.facebook.com/GingrassOnline/<br /> https://www.instagram.com/markgingrass/<br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ <a class="thirstylink" target="_blank" title="Blue Yeti" href="https://amzn.to/2IheZTG" data-linkid="497" data-shortcode="true">Blue Yeti</a> Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ <a class="thirstylink" target="_blank" title="Green Screen Amazon" href="https://amzn.to/2JVzMgP" data-linkid="511" data-shortcode="true">Green Screen</a> - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
      </div>
    </div>
    
    <div class="yotu-pagination yotu-pager_layout-default yotu-pagination-top">
      <a href="#" class="yotu-pagination-prev yotu-button-prs yotu-button-prs-1" data-page="prev">Prev</a> <span class="yotu-pagination-current">1</span> <span>of</span> <span class="yotu-pagination-total">4</span> <a href="#" class="yotu-pagination-next yotu-button-prs yotu-button-prs-1" data-page="next">Next</a>
    </div>
    
    <div class="yotu-videos yotu-mode-grid yotu-column-3 yotu-player-mode-large">
      <ul>
        <li class=" yotu-first">
          <a href="#R7wbCGXKAok" class="yotu-video" data-videoid="R7wbCGXKAok" data-title="GOOD AUDIO - Install R & RStudio on Windows + First Script 2019" title="GOOD AUDIO - Install R & RStudio on Windows + First Script 2019"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/R7wbCGXKAok/sddefault.jpg" alt="GOOD AUDIO - Install R & RStudio on Windows + First Script 2019" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            GOOD AUDIO - Install R & RStudio on Windows + First Script 2019
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> Follow the steps below to download R and RStudio and create your first script. Busy? Try putting the video on 1.5x speed or skipping about half after installing with the links below. Good luck and please subscribe and like this video!<br /> <br /> MAC<br /> R 3.6.1.pkg: https://cran.r-project.org/bin/macosx/R-3.6.1.pkg<br /> RStudio 1.2.5001: https://download1.rstudio.org/desktop/macos/RStudio-1.2.5001.dmg<br /> <br /> WINDOWS<br /> R 3.6.1.exe: https://cran.r-project.org/bin/windows/base/R-3.6.1-win.exe<br /> RStudio 1.2.5001: https://download1.rstudio.org/desktop/windows/RStudio-1.2.5001.exe<br /> <br /> Please subscribe if you found this useful and want to see more. <br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> <br /> ➔Everyone should download TubeBuddy! http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔2 Months <a class="thirstylink" target="_blank" title="SkillShare Free" href="http://markgingrass.com/recommends/skillshare-free/" data-shortcode="true">SkillShare Free</a>➔ https://www.skillshare.com/r/profile/...<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> <br /> In lesson 3, we learned some more cool Markdown features in R. In this lesson, we're going to look at Vectors and Functions.<br /> <br /> #rstats #rstudio #rstudiotips #datascience #rprogramming<br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> <br /> TECH GEAR I USE DAILY<br /> ➔ I work on a <a class="thirstylink" target="_blank" title="MacBook Pro Amazon" href="https://amzn.to/2JsJ4Ab" data-linkid="519" data-shortcode="true">MBP</a>: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ <a class="thirstylink" target="_blank" title="Swissgear 1900" href="https://amzn.to/2XByRtO" data-linkid="510" data-shortcode="true">Swissgear</a> Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ MICROPHONE - https://amzn.to/2LYfJkr<br /> ➔ BACKPACK - https://amzn.to/2Ep4uez<br /> ➔ GREEN SCREEN - https://amzn.to/2JVzMgP<br /> ➔ <a class="thirstylink" target="_blank" title="Tripod Amazon" href="https://amzn.to/2Eo2wv4" data-linkid="512" data-shortcode="true">TRIPOD</a> - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://www.facebook.com/GingrassOnline/<br /> https://www.instagram.com/markgingrass/<br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#sZo_Ig002Bw" class="yotu-video" data-videoid="sZo_Ig002Bw" data-title="Download R & R Studio - First R Script Complete Guide - Lesson 0" title="Download R & R Studio - First R Script Complete Guide - Lesson 0"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/sZo_Ig002Bw/sddefault.jpg" alt="Download R & R Studio - First R Script Complete Guide - Lesson 0" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            Download R & R Studio - First R Script Complete Guide - Lesson 0
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> Download and use R/R Studio free today. Build your first script and make this usable from program 1! One of the hardest parts of using any new programming language, software, IDE, etc, is getting the first program to work. This video takes you through the entire process.<br /> YouTube is so much better with ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> <br /> #OBS #onlinebroadcaster #fcpx #screencast #settings<br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> Want more of a course? Check out my full Supply Chain Management course here: http://bit.ly/scm_course<br /> <br /> ➔ Take the full course and land a promotion! http://bit.ly/scm_course<br /> <br /> TECH GEAR I USE DAILY<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ mTuber for Title Effects : motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: motionvfx.sjv.io/9B3oe<br /> ➔ MICROPHONE - https://amzn.to/2LYfJkr<br /> ➔ BACKPACK - https://amzn.to/2Ep4uez<br /> ➔ GREEN SCREEN - https://amzn.to/2JVzMgP<br /> ➔ TRIPOD - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> C++ Course: http://bit.ly/cpp_course<br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#oYopG3UBr-U" class="yotu-video" data-videoid="oYopG3UBr-U" data-title="Math Operations - Lesson 1 R Tutorial for Begginers" title="Math Operations - Lesson 1 R Tutorial for Begginers"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/oYopG3UBr-U/sddefault.jpg" alt="Math Operations - Lesson 1 R Tutorial for Begginers" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            Math Operations - Lesson 1 R Tutorial for Begginers
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> Absolute Beginners Guide to R programming and RStudio. <br /> <br /> In this lesson you will learn basic math operations in the RStudio console then create your first R Script. I teach you how to change your theme, where your variables are stored and how to run scripts. <br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> <br /> ➔Everyone should download TubeBuddy! http://bit.ly/t_buddy<br /> ➔ <a class="thirstylink" target="_blank" title="Blue Yeti" href="https://amzn.to/2IheZTG" data-linkid="497" data-shortcode="true">Blue Yeti</a> Mic: https://amzn.to/2IheZTG<br /> ➔2 Months SkillShare Free➔ https://www.skillshare.com/r/profile/...<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> <br /> In this series of tutorials, we'll cover the basics of R programming and RStudio. By the end of this lesson you'll know:<br /> <br /> Basic math operations in the RStudio<br /> Where your variables are stored<br /> How to create and run your first R Script<br /> <br /> I'm assuming that you've already installed R and RStudio, and the tutorial is going to cater to people who already have a little programming experience. It's not essential that you have this, but a little bit of math knowledge or logical thinking will get you through. Let's get started!<br /> <br /> #r #rstudiotips #rdatascience #rprogramming #rstudio<br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> <br /> TECH GEAR I USE DAILY<br /> ➔ I work on a <a class="thirstylink" target="_blank" title="MacBook Pro Amazon" href="https://amzn.to/2JsJ4Ab" data-linkid="519" data-shortcode="true">MBP</a>: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ MICROPHONE - https://amzn.to/2LYfJkr<br /> ➔ BACKPACK - https://amzn.to/2Ep4uez<br /> ➔ GREEN SCREEN - https://amzn.to/2JVzMgP<br /> ➔ TRIPOD - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://www.facebook.com/GingrassOnline/<br /> https://www.instagram.com/markgingrass/<br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#W3sC_M1miFc" class="yotu-video" data-videoid="W3sC_M1miFc" data-title="R Markdown - Lesson 2" title="R Markdown - Lesson 2"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/W3sC_M1miFc/sddefault.jpg" alt="R Markdown - Lesson 2" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            R Markdown - Lesson 2
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> Absolute Beginners Guide to R programming and RStudio. Lesson 2.<br /> <br /> In this lesson, we learn about rmarkdown and .Rmd files. How to mix documentation with code. <br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> <br /> ➔Everyone should download TubeBuddy! http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔2 Months SkillShare Free➔ https://www.skillshare.com/r/profile/...<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> <br /> In Lesson 2 we started to learn the basics of R Markdown, created a new project called RProject1 and created our first Markdown files. In this lesson, I want to show you some of the R Markdown capabilities that will create some cool HTML files.<br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> <br /> TECH GEAR I USE DAILY<br /> ➔ I work on a MBP: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ MICROPHONE - https://amzn.to/2LYfJkr<br /> ➔ BACKPACK - https://amzn.to/2Ep4uez<br /> ➔ GREEN SCREEN - https://amzn.to/2JVzMgP<br /> ➔ TRIPOD - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://www.facebook.com/GingrassOnline/<br /> https://www.instagram.com/markgingrass/<br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months <a class="thirstylink" target="_blank" title="SkillShare Free" href="http://markgingrass.com/recommends/skillshare-free/" data-shortcode="true">SkillShare Free</a> ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ <a class="thirstylink" target="_blank" title="MacBook Pro Amazon" href="https://amzn.to/2JsJ4Ab" data-linkid="519" data-shortcode="true">MacBook Pro</a>: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ <a class="thirstylink" target="_blank" title="Tripod Amazon" href="https://amzn.to/2Eo2wv4" data-linkid="512" data-shortcode="true">Tripod</a> (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#j7Xo7xFA3Bg" class="yotu-video" data-videoid="j7Xo7xFA3Bg" data-title="R Markdown Part 2 - Lesson 3" title="R Markdown Part 2 - Lesson 3"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/j7Xo7xFA3Bg/sddefault.jpg" alt="R Markdown Part 2 - Lesson 3" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            R Markdown Part 2 - Lesson 3
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> Absolute Beginners Guide to R programming and RStudio. Lesson 3.<br /> <br /> In this lesson, we learn about rmarkdown and .Rmd files. How to mix documentation with code. We learn how to create bulleted lists using markdown as well as a numbered list. Also, we learn the joys of white space.<br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> <br /> ➔Everyone should download TubeBuddy! http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔2 Months SkillShare Free➔ https://www.skillshare.com/r/profile/...<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> <br /> In Lesson 2 we started to learn the basics of R Markdown, created a new project called RProject1 and created our first Markdown files. In this lesson, I want to show you some of the R Markdown capabilities that will create some cool HTML files.<br /> <br /> #rstats #rstudio #rstudiotips #datascience #rprogramming<br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> <br /> TECH GEAR I USE DAILY<br /> ➔ I work on a MBP: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ MICROPHONE - https://amzn.to/2LYfJkr<br /> ➔ BACKPACK - https://amzn.to/2Ep4uez<br /> ➔ <a class="thirstylink" target="_blank" title="Green Screen Amazon" href="https://amzn.to/2JVzMgP" data-linkid="511" data-shortcode="true">GREEN SCREEN</a> - https://amzn.to/2JVzMgP<br /> ➔ TRIPOD - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://www.facebook.com/GingrassOnline/<br /> https://www.instagram.com/markgingrass/<br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#bCLlT44WR4g" class="yotu-video" data-videoid="bCLlT44WR4g" data-title="Vectors and Functions - Lesson 4" title="Vectors and Functions - Lesson 4"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/bCLlT44WR4g/sddefault.jpg" alt="Vectors and Functions - Lesson 4" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            Vectors and Functions - Lesson 4
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> Absolute Beginners Guide to R programming and RStudio. Lesson 4. Learn Vectors and Functions in this tutorial. <br /> <br /> In this lesson, we learn about rmarkdown and.Rmd files. How to mix documentation with code. We learn how to create bulleted lists using markdown as well as a numbered list. Also, we learn the joys of white space.<br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> <br /> ➔Everyone should download TubeBuddy! http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔2 Months <a class="thirstylink" target="_blank" title="SkillShare Free" href="http://markgingrass.com/recommends/skillshare-free/" data-shortcode="true">SkillShare Free</a>➔ https://www.skillshare.com/r/profile/...<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> <br /> In lesson 3, we learned some more cool Markdown features in R. In this lesson, we're going to look at Vectors and Functions.<br /> <br /> #rstats #rstudio #rstudiotips #datascience #rprogramming<br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> <br /> TECH GEAR I USE DAILY<br /> ➔ I work on a MBP: https://amzn.to/2XxeBsG<br /> ➔ <a class="thirstylink" target="_blank" title="Blue Yeti" href="https://amzn.to/2IheZTG" data-linkid="497" data-shortcode="true">Blue Yeti</a> Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ MICROPHONE - https://amzn.to/2LYfJkr<br /> ➔ BACKPACK - https://amzn.to/2Ep4uez<br /> ➔ GREEN SCREEN - https://amzn.to/2JVzMgP<br /> ➔ TRIPOD - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://www.facebook.com/GingrassOnline/<br /> https://www.instagram.com/markgingrass/<br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ <a class="thirstylink" target="_blank" title="Blue Yeti" href="https://amzn.to/2IheZTG" data-linkid="497" data-shortcode="true">Blue Yeti</a> Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months <a class="thirstylink" target="_blank" title="SkillShare Free" href="http://markgingrass.com/recommends/skillshare-free/" data-shortcode="true">SkillShare Free</a> ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#Fa81eXcAXT4" class="yotu-video" data-videoid="Fa81eXcAXT4" data-title="R Notebooks - Lesson 5" title="R Notebooks - Lesson 5"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/Fa81eXcAXT4/sddefault.jpg" alt="R Notebooks - Lesson 5" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            R Notebooks - Lesson 5
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> Absolute Beginners Guide to R programming and RStudio. Lesson 5. Learn how to use R Notebooks to colaborate and share code and documentation. <br /> <br /> Subscribe - http://bit.ly/sub_to_chan<br /> <br /> ➔Everyone should download TubeBuddy! http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months <a class="thirstylink" target="_blank" title="SkillShare Free" href="http://markgingrass.com/recommends/skillshare-free/" data-shortcode="true">SkillShare Free</a>➔ https://www.skillshare.com/r/profile/...<br /> <br /> In this lesson, we're going to learn about R Notebook files. These are better than .Rmd files and will carry actually carry over code that can be downloaded by anyone collaborating on your project.<br /> <br /> #rstats #rstudio #rstudiotips #datascience #rprogramming<br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> <br /> TECH GEAR I USE DAILY<br /> ➔ I work on a <a class="thirstylink" target="_blank" title="MacBook Pro Amazon" href="https://amzn.to/2JsJ4Ab" data-linkid="519" data-shortcode="true">MBP</a>: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ MICROPHONE - https://amzn.to/2LYfJkr<br /> ➔ BACKPACK - https://amzn.to/2Ep4uez<br /> ➔ GREEN SCREEN - https://amzn.to/2JVzMgP<br /> ➔ TRIPOD - https://amzn.to/2Eo2wv4<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://www.facebook.com/GingrassOnline/<br /> https://www.instagram.com/markgingrass/<br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ <a class="thirstylink" target="_blank" title="MacBook Pro Amazon" href="https://amzn.to/2JsJ4Ab" data-linkid="519" data-shortcode="true">MacBook Pro</a>: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ <a class="thirstylink" target="_blank" title="Swissgear 1900" href="https://amzn.to/2XByRtO" data-linkid="510" data-shortcode="true">Swissgear</a> Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#Pa-DuVzrGMo" class="yotu-video" data-videoid="Pa-DuVzrGMo" data-title="Import CSV Files using Tidyverse - R Lesson 6" title="Import CSV Files using Tidyverse - R Lesson 6"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/Pa-DuVzrGMo/sddefault.jpg" alt="Import CSV Files using Tidyverse - R Lesson 6" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            Import CSV Files using Tidyverse - R Lesson 6
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> How to import CSV files using the Tidyverse and RNotebooks.<br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> <br /> ➔Everyone should download TubeBuddy! http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔2 Months SkillShare Free➔ https://www.skillshare.com/r/profile/...<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> <br /> In lesson 3, we learned some more cool Markdown features in R. In this lesson, we're going to look at Vectors and Functions.<br /> <br /> #rstats #rstudio #rstudiotips #datascience #rprogramming<br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> <br /> TECH GEAR I USE DAILY<br /> ➔ I work on a MBP: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ MICROPHONE - https://amzn.to/2LYfJkr<br /> ➔ BACKPACK - https://amzn.to/2Ep4uez<br /> ➔ GREEN SCREEN - https://amzn.to/2JVzMgP<br /> ➔ TRIPOD - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://www.facebook.com/GingrassOnline/<br /> https://www.instagram.com/markgingrass/<br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ <a class="thirstylink" target="_blank" title="Swissgear 1900" href="https://amzn.to/2XByRtO" data-linkid="510" data-shortcode="true">Swissgear</a> Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#UkqZuSy1Zso" class="yotu-video" data-videoid="UkqZuSy1Zso" data-title="Sequence, Repeat and Sample - R Lesson 7" title="Sequence, Repeat and Sample - R Lesson 7"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/UkqZuSy1Zso/sddefault.jpg" alt="Sequence, Repeat and Sample - R Lesson 7" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            Sequence, Repeat and Sample - R Lesson 7
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> In this lesson, we learn about how to generate sequences of numbers (1,2,3,4...) or repeating numbers. Also, we talk about how to take random samples of a set of numbers. R and RStudio tutorials for beginners. <br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> <br /> ➔Everyone should download TubeBuddy! http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔2 Months SkillShare Free➔ https://www.skillshare.com/r/profile/...<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> <br /> In lesson 3, we learned some more cool Markdown features in R. In this lesson, we're going to look at Vectors and Functions.<br /> <br /> #rstats #rstudio #rstudiotips #datascience #rprogramming<br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> <br /> TECH GEAR I USE DAILY<br /> ➔ I work on a <a class="thirstylink" target="_blank" title="MacBook Pro Amazon" href="https://amzn.to/2JsJ4Ab" data-linkid="519" data-shortcode="true">MBP</a>: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ MICROPHONE - https://amzn.to/2LYfJkr<br /> ➔ BACKPACK - https://amzn.to/2Ep4uez<br /> ➔ GREEN SCREEN - https://amzn.to/2JVzMgP<br /> ➔ TRIPOD - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://www.facebook.com/GingrassOnline/<br /> https://www.instagram.com/markgingrass/<br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ <a class="thirstylink" target="_blank" title="MacBook Pro Amazon" href="https://amzn.to/2JsJ4Ab" data-linkid="519" data-shortcode="true">MacBook Pro</a>: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ <a class="thirstylink" target="_blank" title="Swissgear 1900" href="https://amzn.to/2XByRtO" data-linkid="510" data-shortcode="true">Swissgear</a> Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ <a class="thirstylink" target="_blank" title="Green Screen Amazon" href="https://amzn.to/2JVzMgP" data-linkid="511" data-shortcode="true">Green Screen</a> - https://amzn.to/2JVzMgP<br /> ➔ <a class="thirstylink" target="_blank" title="Tripod Amazon" href="https://amzn.to/2Eo2wv4" data-linkid="512" data-shortcode="true">Tripod</a> Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#TwzmPV_zJKw" class="yotu-video" data-videoid="TwzmPV_zJKw" data-title="Random Numbers, Seeds - R Lesson 8" title="Random Numbers, Seeds - R Lesson 8"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/TwzmPV_zJKw/sddefault.jpg" alt="Random Numbers, Seeds - R Lesson 8" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            Random Numbers, Seeds - R Lesson 8
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> In this lesson, I talk about how to generate random numbers, both decimal and integer values. Also, a little bit about the scope of variables and some R Chunk tips.<br /> <br /> Let me know your tricks and tips in the comments below. Subscribe and smash the bell if you want to keep up with all the episodes. <br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> <br /> ➔Everyone should download TubeBuddy! http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔2 Months SkillShare Free➔ https://www.skillshare.com/r/profile/...<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> <br /> In lesson 3, we learned some more cool Markdown features in R. In this lesson, we're going to look at Vectors and Functions.<br /> <br /> #rstats #rstudio #rstudiotips #datascience #rprogramming<br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> <br /> TECH GEAR I USE DAILY<br /> ➔ I work on a MBP: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ MICROPHONE - https://amzn.to/2LYfJkr<br /> ➔ BACKPACK - https://amzn.to/2Ep4uez<br /> ➔ GREEN SCREEN - https://amzn.to/2JVzMgP<br /> ➔ TRIPOD - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://www.facebook.com/GingrassOnline/<br /> https://www.instagram.com/markgingrass/<br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ <a class="thirstylink" target="_blank" title="Green Screen Amazon" href="https://amzn.to/2JVzMgP" data-linkid="511" data-shortcode="true">Green Screen</a> - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#9zLDvEtGVaQ" class="yotu-video" data-videoid="9zLDvEtGVaQ" data-title="Subsetting Data (data frame), 1 of Many - R Lesson 9" title="Subsetting Data (data frame), 1 of Many - R Lesson 9"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/9zLDvEtGVaQ/sddefault.jpg" alt="Subsetting Data (data frame), 1 of Many - R Lesson 9" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            Subsetting Data (data frame), 1 of Many - R Lesson 9
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> R has powerful indexing features for accessing data elements. These features can be used to select and exclude variables and observations. In this video, I teach the first of many ways to subset some data. Both by including columns and rows and then by excluding columns and rows. Features, columns, and variables are all suitable names for the same thing. <br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> <br /> ➔Everyone should download TubeBuddy! http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔2 Months SkillShare Free➔ https://www.skillshare.com/r/profile/...<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> <br /> In lesson 3, we learned some more cool Markdown features in R. In this lesson, we're going to look at Vectors and Functions.<br /> <br /> #rstats #rstudio #rstudiotips #datascience #rprogramming<br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> <br /> TECH GEAR I USE DAILY<br /> ➔ I work on a MBP: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ MICROPHONE - https://amzn.to/2LYfJkr<br /> ➔ BACKPACK - https://amzn.to/2Ep4uez<br /> ➔ GREEN SCREEN - https://amzn.to/2JVzMgP<br /> ➔ <a class="thirstylink" target="_blank" title="Tripod Amazon" href="https://amzn.to/2Eo2wv4" data-linkid="512" data-shortcode="true">TRIPOD</a> - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://www.facebook.com/GingrassOnline/<br /> https://www.instagram.com/markgingrass/<br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#yHmD7g-lsr4" class="yotu-video" data-videoid="yHmD7g-lsr4" data-title="Subsetting Data Conditionally, 1 of Many - R Lesson 10 CradleToGraveR" title="Subsetting Data Conditionally, 1 of Many - R Lesson 10 CradleToGraveR"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/yHmD7g-lsr4/sddefault.jpg" alt="Subsetting Data Conditionally, 1 of Many - R Lesson 10 CradleToGraveR" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            Subsetting Data Conditionally, 1 of Many - R Lesson 10 CradleToGraveR
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> Subsetting Data Conditionally using "and" and "or" within the subset function. <br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> <br /> ➔Everyone should download TubeBuddy! http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔2 Months SkillShare Free➔ https://www.skillshare.com/r/profile/...<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> <br /> In lesson 3, we learned some more cool Markdown features in R. In this lesson, we're going to look at Vectors and Functions.<br /> <br /> #rstats #rstudio #rstudiotips #datascience #rprogramming<br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> <br /> TECH GEAR I USE DAILY<br /> ➔ I work on a <a class="thirstylink" target="_blank" title="MacBook Pro Amazon" href="https://amzn.to/2JsJ4Ab" data-linkid="519" data-shortcode="true">MBP</a>: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ <a class="thirstylink" target="_blank" title="Swissgear 1900" href="https://amzn.to/2XByRtO" data-linkid="510" data-shortcode="true">Swissgear</a> Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ MICROPHONE - https://amzn.to/2LYfJkr<br /> ➔ BACKPACK - https://amzn.to/2Ep4uez<br /> ➔ GREEN SCREEN - https://amzn.to/2JVzMgP<br /> ➔ TRIPOD - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://www.facebook.com/GingrassOnline/<br /> https://www.instagram.com/markgingrass/<br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ <a class="thirstylink" target="_blank" title="MacBook Pro Amazon" href="https://amzn.to/2JsJ4Ab" data-linkid="519" data-shortcode="true">MacBook Pro</a>: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ <a class="thirstylink" target="_blank" title="Green Screen Amazon" href="https://amzn.to/2JVzMgP" data-linkid="511" data-shortcode="true">Green Screen</a> - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#gCAwHbmOqCo" class="yotu-video" data-videoid="gCAwHbmOqCo" data-title="ggplot Scatter Plot, geom_point (first plot) - R Lesson 11 CradleToGraveR" title="ggplot Scatter Plot, geom_point (first plot) - R Lesson 11 CradleToGraveR"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/gCAwHbmOqCo/sddefault.jpg" alt="ggplot Scatter Plot, geom_point (first plot) - R Lesson 11 CradleToGraveR" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            ggplot Scatter Plot, geom_point (first plot) - R Lesson 11 CradleToGraveR
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> In this lesson, I teach how to create your first plot using ggplot2. We use the diamonds and the iris datasets. The ggplot function is very powerful and flexible. We have to set up the plot first, then use the grammar of graphics to apply layers and mappings to the visual properties. <br /> <br /> https://www.bensound.com/ for the music credit!<br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> <br /> ➔Everyone should download TubeBuddy! http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔2 Months SkillShare Free➔ https://www.skillshare.com/r/profile/...<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> <br /> In lesson 3, we learned some more cool Markdown features in R. In this lesson, we're going to look at Vectors and Functions.<br /> <br /> #rstats #rstudio #rstudiotips #datascience #rprogramming<br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> <br /> TECH GEAR I USE DAILY<br /> ➔ I work on a MBP: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ MICROPHONE - https://amzn.to/2LYfJkr<br /> ➔ BACKPACK - https://amzn.to/2Ep4uez<br /> ➔ GREEN SCREEN - https://amzn.to/2JVzMgP<br /> ➔ TRIPOD - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://www.facebook.com/GingrassOnline/<br /> https://www.instagram.com/markgingrass/<br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ <a class="thirstylink" target="_blank" title="MacBook Pro Amazon" href="https://amzn.to/2JsJ4Ab" data-linkid="519" data-shortcode="true">MacBook Pro</a>: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#1QYgccXBtrI" class="yotu-video" data-videoid="1QYgccXBtrI" data-title="ggplot Labels and Titles, markdown tabs - R Lesson 12 CradleToGraveR" title="ggplot Labels and Titles, markdown tabs - R Lesson 12 CradleToGraveR"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/1QYgccXBtrI/sddefault.jpg" alt="ggplot Labels and Titles, markdown tabs - R Lesson 12 CradleToGraveR" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            ggplot Labels and Titles, markdown tabs - R Lesson 12 CradleToGraveR
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> We continue this lesson by adding labels and titles to our plots. I also teach how to create tabs in a rmarkdown file to create awesome reproducible HTML files. We use the Iris data set for this lesson. <br /> <br /> Please subscribe if you found this useful and want to see more. <br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> <br /> ➔Everyone should download TubeBuddy! http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔2 Months SkillShare Free➔ https://www.skillshare.com/r/profile/...<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> <br /> In lesson 3, we learned some more cool Markdown features in R. In this lesson, we're going to look at Vectors and Functions.<br /> <br /> #rstats #rstudio #rstudiotips #datascience #rprogramming<br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> <br /> TECH GEAR I USE DAILY<br /> ➔ I work on a MBP: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ MICROPHONE - https://amzn.to/2LYfJkr<br /> ➔ BACKPACK - https://amzn.to/2Ep4uez<br /> ➔ GREEN SCREEN - https://amzn.to/2JVzMgP<br /> ➔ TRIPOD - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://www.facebook.com/GingrassOnline/<br /> https://www.instagram.com/markgingrass/<br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ <a class="thirstylink" target="_blank" title="Blue Yeti" href="https://amzn.to/2IheZTG" data-linkid="497" data-shortcode="true">Blue Yeti</a> Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class=" yotu-last">
          <a href="#RL_zk7S_K3E" class="yotu-video" data-videoid="RL_zk7S_K3E" data-title="ggplot Colors, Size, Alpha -  R Lesson 13" title="ggplot Colors, Size, Alpha -  R Lesson 13"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/RL_zk7S_K3E/sddefault.jpg" alt="ggplot Colors, Size, Alpha -  R Lesson 13" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            ggplot Colors, Size, Alpha - R Lesson 13
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> Plot mtcars and diamonds data sets once again. In this video we add colors to the scatter plots, we change the size of the data points and we change the colors of the data points. I also show you how alpha values work. Finally, I subset the data to show that you can plot just a part of the data set. <br /> <br /> Also, I briefly describe factors, factor levels, summary statistics and what the structure of the data means.<br /> <br /> Find all my courses and videos at https://markgingrass.com/<br /> <br /> SUPPORT: <br /> Home..........► https://markgingrass.com<br /> Patreon.......► https://www.patreon.com/markgingrass<br /> <br /> 2 FREE MONTHS: <br /> Skillshare....►https://www.skillshare.com/user/markgingrass<br /> <br /> SOCIAL:<br /> Twitter.........► https://twitter.com/markgingrass<br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
      </ul>
    </div>
    
    <div class="yotu-pagination yotu-pager_layout-default yotu-pagination-bottom">
      <a href="#" class="yotu-pagination-prev yotu-button-prs yotu-button-prs-1" data-page="prev">Prev</a> <span class="yotu-pagination-current">1</span> <span>of</span> <span class="yotu-pagination-total">4</span> <a href="#" class="yotu-pagination-next yotu-button-prs yotu-button-prs-1" data-page="next">Next</a>
    </div>
  </div>
</div>