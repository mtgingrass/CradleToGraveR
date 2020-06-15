---
title: Math Operations – Lesson 1
author: Ben
type: post
date: 2019-09-22T12:43:02+00:00
url: /2019/09/22/math-operations-lesson-1/
featured_image: http://markgingrass.com/wp-content/uploads/2019/09/thumb.jpg
classic-editor-remember:
  - block-editor
tap_disable_autolinker:
  - no
tap_autolink_inside_heading:
  - global
tap_autolink_random_placement:
  - global
categories:
  - Programming
  - R
tags:
  - rprogramming
  - Rstudio

---
For this tutorial, you&#8217;re going to learn how to use RStudio to perform basic math operations. I&#8217;ll assume you&#8217;ve already installed both **R** and **RStudio**. If not, head to [Lesson 0][1] in this series for help doing that before you get started here.

This series of tutorials will cater best to people who&#8217;ve had a tiny bit of programming experience. It&#8217;s not absolutely necessary though, and a little bit of math or logical thinking skills will get you through.

<div id="ez-toc-container" class="ez-toc-v2_0_11 counter-hierarchy counter-decimal ez-toc-grey">
  <div class="ez-toc-title-container">
    <p class="ez-toc-title">
      Overview
    </p>
    
    <span class="ez-toc-title-toggle"><a class="ez-toc-pull-right ez-toc-btn ez-toc-btn-xs ez-toc-btn-default ez-toc-toggle"><i class="ez-toc-glyphicon ez-toc-icon-toggle"></i></a></span>
  </div><nav>
  
  <ul class="ez-toc-list ez-toc-list-level-1">
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-1" href="http://markgingrass.com/2019/09/22/math-operations-lesson-1/#The_Basic_Layout_of_RStudio" title="The Basic Layout of RStudio">The Basic Layout of RStudio</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-2" href="http://markgingrass.com/2019/09/22/math-operations-lesson-1/#Simple_Math_Operations" title="Simple Math Operations">Simple Math Operations</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-3" href="http://markgingrass.com/2019/09/22/math-operations-lesson-1/#How_to_Create_R_Scripts" title="How to Create R Scripts">How to Create R Scripts</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-4" href="http://markgingrass.com/2019/09/22/math-operations-lesson-1/#Begin_Filling_Your_R_Script" title="Begin Filling Your R Script">Begin Filling Your R Script</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-5" href="http://markgingrass.com/2019/09/22/math-operations-lesson-1/#Save_Your_First_R_Script" title="Save Your First R Script">Save Your First R Script</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-6" href="http://markgingrass.com/2019/09/22/math-operations-lesson-1/#Run_Part_or_All_of_Your_R_Script" title="Run Part or All of Your R Script">Run Part or All of Your R Script</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-7" href="http://markgingrass.com/2019/09/22/math-operations-lesson-1/#How_to_Combine_Variables" title="How to Combine Variables">How to Combine Variables</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-8" href="http://markgingrass.com/2019/09/22/math-operations-lesson-1/#Summary" title="Summary">Summary</a>
    </li>
  </ul></nav>
</div>

## <span class="ez-toc-section" id="The_Basic_Layout_of_RStudio"></span>The Basic Layout of RStudio<span class="ez-toc-section-end"></span><figure class="wp-block-image">

<img src="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-YouTube-1024x596.jpg" alt="" class="wp-image-1113" srcset="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-YouTube-1024x596.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-YouTube-300x174.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-YouTube-768x447.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-YouTube.jpg 1728w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>The basic layout when you open RStudio</figcaption></figure> 

When you open up RStudio you&#8217;ll see something similar to the screenshot above. Yours might have a different theme color, but otherwise, the layout should be the same (if you want to change your theme you can do so under the **Tools Menu > Global Options > Appearance**). On the left, the large window is the **Console**, and it has a blinking cursor prompt. This is where you&#8217;ll input your code. On the upper-right is the **Global Environment** which will be empty when you start. This is where you store your variables later on. Finally, in the lower-right, there are a number of tabs and this area is normally set to either **Files** or **Packages** by default.

## <span class="ez-toc-section" id="Simple_Math_Operations"></span>Simple Math Operations<span class="ez-toc-section-end"></span><figure class="wp-block-image">

<img src="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-1-1024x442.jpg" alt="" class="wp-image-1114" srcset="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-1-1024x442.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-1-300x130.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-1-768x332.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-1.jpg 1195w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>You can use to console for simple math operations</figcaption></figure> 

Let&#8217;s jump straight in and use the **Console** for some simple math calculations. Go to the cursor prompt and type **2 + 4**, and hit **enter**. The output will be **[1] 6**. The **[1]** means line 1 of your output is 6. 

Try something a little more complicated: **2 * (3+8)**  
The output will be **[1] 22**. This means RStudio is correctly following normal math order of operations by doing the addition inside the brackets first, followed by the multiplication by 2.

<div class="wp-block-columns has-2-columns">
  <div class="wp-block-column">
    <p>
      <br /><br />Some more examples to try out are exponents like <strong>2^4</strong>, trig functions like <strong>sin(pi/2)</strong>, and floor or ceiling functions like <strong>floor(3.4)</strong>.
    </p>
  </div>
  
  <div class="wp-block-column">
    <figure class="wp-block-image"><img src="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-2.jpg" alt="" class="wp-image-1115" srcset="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-2.jpg 400w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-2-300x280.jpg 300w" sizes="(max-width: 400px) 100vw, 400px" /></figure>
  </div>
</div>

## <span class="ez-toc-section" id="How_to_Create_R_Scripts"></span>How to Create R Scripts<span class="ez-toc-section-end"></span>

Working in the **Console** is a bit like working directly on the kitchen stove to cook something. It&#8217;s great for putting everything together and creating the finished product, but a lot of the time we want to, first of all, prepare a recipe and various ingredients before we cook. There&#8217;s no point doing this directly on the stove until everything is ready to go. In this case the recipe we want to create before cooking is an **R Script**.<figure class="wp-block-image">

<img src="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-3-1024x445.jpg" alt="" class="wp-image-1117" srcset="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-3-1024x445.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-3-300x130.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-3-768x334.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-3.jpg 1150w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>How to make a Script in RStudio</figcaption></figure> 

To create your first R Script in RStudio just head to the **File Menu**, then **New File**, and click **R Script**. Once this is done the window layout in RStudio will change slightly. Now the main window will be a new tab (for now called **Untitled1**, but we can rename it later) and the **Console** has moved to a smaller window down below. <figure class="wp-block-image">

<img src="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-4-1024x445.jpg" alt="" class="wp-image-1118" srcset="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-4-1024x445.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-4-300x130.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-4-768x334.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-4.jpg 1150w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Your new R Script, named **Untitled1** by default.</figcaption></figure> 

Scripts offer the simplest form of repeatable analysis in R. They&#8217;re like text files that contain code and comments. The file extension is **.R** 

## <span class="ez-toc-section" id="Begin_Filling_Your_R_Script"></span>Begin Filling Your R Script<span class="ez-toc-section-end"></span>

A good place to start with your first R Script is to make a few **comments** that remind you (and anyone else reading your code) what this script is all about.<figure class="wp-block-image">

<img src="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-5-1024x446.jpg" alt="" class="wp-image-1119" srcset="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-5-1024x446.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-5-300x131.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-5-768x335.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-5.jpg 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Any lines starting with **\#** will be counted as **comments**</figcaption></figure> 

To create a **comment** line use the **hash** mark at the beginning, as in the screenshot above. Any lines that begin this way will not be executed as code, which means that they can serve as text reminders instead.

Next, let&#8217;s enter some math functions as code in our Script. <figure class="wp-block-image">

<img src="https://markgingrass.com/wp-content/uploads/2019/09/6-1024x826.jpg" alt="" class="wp-image-1120" srcset="https://markgingrass.com/wp-content/uploads/2019/09/6-1024x826.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/09/6-300x242.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/09/6-768x620.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/09/6.jpg 1174w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Use **Ctrl/Cmd** + **Enter** to run lines in your R Script</figcaption></figure> 

On line 5, try 2 + 2, and then hit **Ctrl** (for PC) or **Cmd** (Mac) and **Enter** to run this line. This is a little different from the Console, where we can just use **Enter** by itself. The output is shown in the Console window below. 

Next up let&#8217;s try storing a variable in the **Global Environment**. We assign a value to a variable using the following method: **x <- 2 + 2**  
Specifically, the **<-** symbols are saying to assign whatever is on the right-hand side of this, to the variable on the left-hand side. <figure class="wp-block-image">

<img src="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-7-1024x588.jpg" alt="" class="wp-image-1121" srcset="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-7-1024x588.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-7-300x172.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-7-768x441.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-7.jpg 1722w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>How to store a variable in the Global Environment</figcaption></figure> 

Run this line, again with **Ctrl/Cmd**+**Enter** and the value for **x** will be stored in the Global Environment in the upper-right.

To use this variable just go to a new line in the script, type **x**, and run this line. The output of **x**, **4**, will appear in the **Console**. Pretty cool.

## <span class="ez-toc-section" id="Save_Your_First_R_Script"></span>Save Your First R Script<span class="ez-toc-section-end"></span>

This is a good point to save your first R Script. Go to the **File Menu**, then **Save As&#8230;** and choose your file name and save location. In my example I used the name **Test Program**. The name **Test Program.R** (with the .R extension) now appears at the top of the R Script window.<figure class="wp-block-image">

<img src="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-8.jpg" alt="" class="wp-image-1122" srcset="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-8.jpg 800w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-8-300x113.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-8-768x288.jpg 768w" sizes="(max-width: 800px) 100vw, 800px" /><figcaption>Your new file name appears at the top of the R Script window.</figcaption></figure> 

## <span class="ez-toc-section" id="Run_Part_or_All_of_Your_R_Script"></span>Run Part or All of Your R Script<span class="ez-toc-section-end"></span><figure class="wp-block-image">

<img src="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-10-1024x721.jpg" alt="" class="wp-image-1124" srcset="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-10-1024x721.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-10-300x211.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-10-768x541.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-10.jpg 1200w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Using the **Run** button to execute your R Script</figcaption></figure> 

You can run your R Script line by line, or entire sections at a time. To run it in part (line by line) either use Ctrl/Cmd+Enter like we&#8217;ve been doing so far or use the Run button at the top of the script window. 

To run a whole section, highlight that section first, before hitting the Run button (as shown below).<figure class="wp-block-image">

<img src="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-9-1024x844.jpg" alt="" class="wp-image-1125" srcset="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-9-1024x844.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-9-300x247.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-9-768x633.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-9.jpg 1171w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Highlight a few lines and hit run to execute the entire highlighted section</figcaption></figure> 

## <span class="ez-toc-section" id="How_to_Combine_Variables"></span>How to Combine Variables<span class="ez-toc-section-end"></span>

You can use one variable as part of another variable. In our example we already have **x**, so we can use **x** to form part of a new variable called **y**. On a fresh line in the Script window type:  
**y <- x + 4**<figure class="wp-block-image">

<img src="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-11.jpg" alt="" class="wp-image-1126" srcset="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-11.jpg 964w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-11-300x194.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-11-768x496.jpg 768w" sizes="(max-width: 964px) 100vw, 964px" /><figcaption>Using one variable as part of another</figcaption></figure> 

Run this line and the new variable y will appear in the Global Environment.<figure class="wp-block-image">

<img src="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-12.jpg" alt="" class="wp-image-1127" srcset="https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-12.jpg 960w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-12-300x175.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/09/Math-Operations-Lesson-1-12-768x448.jpg 768w" sizes="(max-width: 960px) 100vw, 960px" /><figcaption>Your new variable showing in the Global Environment</figcaption></figure> 

In this case, we changed the value of **x** to **7** already, so **x** + **7** means **y** equals **11**, as shown above.

These variables are now stored in memory and can be recalled any time very easily until you close R.

## <span class="ez-toc-section" id="Summary"></span>Summary<span class="ez-toc-section-end"></span>

In this tutorial you&#8217;ve learned how to create your first R Script, assign and store values to variables, and run all or part of your script. R Script is great for simple data analysis. 

However, if you want to publish this into a journal and have extra info such as an introduction, methods of analysis, a conclusion etc then R Script isn&#8217;t necessarily the best way to do that. So in the next lesson, you&#8217;ll learn how to use R Markdown, which will allow us to do all of this and a lot more.

I hope this tutorial was useful, please let me know in the comments if you have any questions!

 [1]: https://markgingrass.com/2019/09/22/download-r-studio-first-script-complete-guide-lesson-0