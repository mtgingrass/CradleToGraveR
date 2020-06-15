---
title: 🤱Cradle to Grave ⚰R – R Notebooks – Lesson 5
author: mtgingrass
type: post
date: 2019-07-22T14:55:44+00:00
url: /2019/07/22/cradle-to-grave-r-r-notebooks-lesson-5/
featured_image: http://markgingrass.com/wp-content/uploads/2019/07/Copy-of-Copy-of-Copy-of-Python-Virtual-Environment-3.png
classic-editor-remember:
  - classic-editor
tap_disable_autolinker:
  - no
tap_autolink_inside_heading:
  - global
tap_autolink_random_placement:
  - global
categories:
  - Programming
  - R

---
In this lesson, we&#8217;re going to learn about R Notebook files. These are better than .Rmd files and will carry actually carry over code that can be downloaded by anyone collaborating on your project.

<div id="ez-toc-container" class="ez-toc-v2_0_11 counter-hierarchy counter-decimal ez-toc-grey">
  <div class="ez-toc-title-container">
    <p class="ez-toc-title">
      Overview
    </p>
    
    <span class="ez-toc-title-toggle"><a class="ez-toc-pull-right ez-toc-btn ez-toc-btn-xs ez-toc-btn-default ez-toc-toggle"><i class="ez-toc-glyphicon ez-toc-icon-toggle"></i></a></span>
  </div><nav>
  
  <ul class="ez-toc-list ez-toc-list-level-1">
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-1" href="http://markgingrass.com/2019/07/22/cradle-to-grave-r-r-notebooks-lesson-5/#Create_a_New_Project" title="Create a New Project">Create a New Project</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-2" href="http://markgingrass.com/2019/07/22/cradle-to-grave-r-r-notebooks-lesson-5/#Create_a_New_R_Notebook_File" title="Create a New R Notebook File">Create a New R Notebook File</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-3" href="http://markgingrass.com/2019/07/22/cradle-to-grave-r-r-notebooks-lesson-5/#Save_Your_R_Notebook_File" title="Save Your R Notebook File">Save Your R Notebook File</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-4" href="http://markgingrass.com/2019/07/22/cradle-to-grave-r-r-notebooks-lesson-5/#Open_Your_R_Notebook_in_a_Web_Browser" title="Open Your R Notebook in a Web Browser">Open Your R Notebook in a Web Browser</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-5" href="http://markgingrass.com/2019/07/22/cradle-to-grave-r-r-notebooks-lesson-5/#Run_the_Code_Chunks" title="Run the Code Chunks ">Run the Code Chunks </a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-6" href="http://markgingrass.com/2019/07/22/cradle-to-grave-r-r-notebooks-lesson-5/#Name_the_Code_Chunk" title="Name the Code Chunk">Name the Code Chunk</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-7" href="http://markgingrass.com/2019/07/22/cradle-to-grave-r-r-notebooks-lesson-5/#Hide_the_Code_Output" title="Hide the Code Output">Hide the Code Output</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-8" href="http://markgingrass.com/2019/07/22/cradle-to-grave-r-r-notebooks-lesson-5/#Sending_R_Notebook_Files_to_Friends" title="Sending R Notebook Files to Friends">Sending R Notebook Files to Friends</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-9" href="http://markgingrass.com/2019/07/22/cradle-to-grave-r-r-notebooks-lesson-5/#Summary" title="Summary">Summary</a>
    </li>
  </ul></nav>
</div>

## <span class="ez-toc-section" id="Create_a_New_Project"></span>Create a New Project<span class="ez-toc-section-end"></span>

We want to start with a fresh project for this lesson, so head to the menus and click **File** > **New Project&#8230;** > **New Directory** > **New Project** and use the directory name **first notebook project**. The process of creating a new project was covered in previous lessons so if you&#8217;re not sure how to do it or can&#8217;t remember then skip back to remind yourself. 

Hit **Create Project** and the program will populate your <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a> with the new project.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-34-1024x637.png" alt="" class="wp-image-816" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-34-1024x637.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-34-300x187.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-34-768x478.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-34.png 1724w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Your new project will show under the Files tab.</figcaption></figure> 

You&#8217;ll see the Console area on the left as normal, and on the right the empty Global Environment, and below that the Files area showing our **first notebook project.Rproj** file. However, we don&#8217;t have the notebook file yet.

## <span class="ez-toc-section" id="Create_a_New_R_Notebook_File"></span>Create a New R Notebook File<span class="ez-toc-section-end"></span>

To create your new R Notebook file go to the menus and click **File** > **New File** > **R Notebook**.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-79-1024x622.png" alt="" class="wp-image-817" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-79-1024x622.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-79-300x182.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-79-768x467.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-79.png 1725w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>How to create an R Notebook file from the menus</figcaption></figure> 

R Notebook looks very familiar like an .Rmd file, but the R Notebook has so much more capability. 

Similar to the R Markdown file, the R Notebook has metadata at the top between the dashed lines, including the title and the output instructions. After that, on line 6 there&#8217;s an embedded link using brackets and parenthesis, and further down on lines 10-12 there&#8217;s a section of code.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-98-1024x596.png" alt="" class="wp-image-818" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-98-1024x596.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-98-300x175.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-98-768x447.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-98.png 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>R Notebook files show similar elements to R Markdown files</figcaption></figure> 

## <span class="ez-toc-section" id="Save_Your_R_Notebook_File"></span>Save Your R Notebook File<span class="ez-toc-section-end"></span>

Now is a good time to save the file you&#8217;ve created. On the Mac hit **cmd**+**s** and save it as **first notebook**. On the PC this should be **ctrl**+**s**, or you can use the menus to save.

As soon as this file is saved, you&#8217;re going to see in the lower-right Files area there is a new file called **first notebook.nb.html**. <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-92-1024x581.png" alt="" class="wp-image-819" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-92-1024x581.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-92-300x170.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-92-768x436.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-92.png 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Click &#8220;View in Web Browser&#8221; on this file.</figcaption></figure> 

## <span class="ez-toc-section" id="Open_Your_R_Notebook_in_a_Web_Browser"></span>Open Your R Notebook in a Web Browser<span class="ez-toc-section-end"></span>

Click on that file, and select **View in Web Browser**.

You&#8217;ll see that again it looks similar to when we opened our R Markdown file, but there are a couple of big differences in how it works. <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-45-1024x628.png" alt="" class="wp-image-820" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-45-1024x628.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-45-300x184.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-45-768x471.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-45.png 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Notice the options in the upper-right corner</figcaption></figure> 

You&#8217;ll notice a drop-down menu in the upper-right corner which gives you the option to show or hide all code in the display. Also, there&#8217;s the option to **Download Rmd** file. This means you can send these Rmd files with documentation, code, output, everything, to colleagues or co-workers.

## <span class="ez-toc-section" id="Run_the_Code_Chunks"></span>Run the Code Chunks <span class="ez-toc-section-end"></span>

If you go back to the R Notebook file and take a look, the code on lines 10-12 hasn&#8217;t actually produced anything in our output. This is because, although the code exists, we haven&#8217;t run it yet. <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-84-1024x596.png" alt="" class="wp-image-822" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-84-1024x596.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-84-300x175.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-84-768x447.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-12-07-84.png 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Hit the &#8216;play&#8217; symbol to run the code chunk</figcaption></figure> 

To run the code, hit the **play** symbol to the right of it. You&#8217;ll notice that the plot is created below, and if you **save** the file again, this plot will now appear when you open **first notebook.nb.html** in the browser again. <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-73-1024x499.png" alt="" class="wp-image-824" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-73-1024x499.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-73-300x146.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-73-768x374.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-73.png 1725w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>The plot now shows in the browser</figcaption></figure> 

Once you&#8217;re back in the browser looking at your output, you can see the plot. If you select **Hide All Code** from the dropdown menu, the code area (in grey) hides, but the plot remains visible. This is because the plot itself is not code.

## <span class="ez-toc-section" id="Name_the_Code_Chunk"></span>Name the Code Chunk<span class="ez-toc-section-end"></span>

If we want to hide the plot itself, the first thing we need to do is name the code chunk. Go back to R Studio to lines 10-12 and click on the **gear/settings** icon to the right. <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-90-1024x623.png" alt="" class="wp-image-825" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-90-1024x623.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-90-300x183.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-90-768x467.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-90.png 1724w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Code chunk options in R Notebooks</figcaption></figure> 

The name we&#8217;ll use for the code chunk is **plot cars**, then from the drop-down menu select **Show output only**, and hit **Apply**. The code chunk will slightly change and inside the curly braces **{}** you&#8217;ll see more parameters:  
**plot cars** is the name of the code chunk, and **echo=FALSE** means the code will not be output to the HTML file.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-89-1024x596.png" alt="" class="wp-image-826" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-89-1024x596.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-89-300x175.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-89-768x447.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-89.png 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>New code showing</figcaption></figure> 

Open the **first notebook.nb.html** again in the browser and you&#8217;ll see there&#8217;s no code to view, only the plot output. So in this case, hiding or showing the code won&#8217;t change anything.

## <span class="ez-toc-section" id="Hide_the_Code_Output"></span>Hide the Code Output<span class="ez-toc-section-end"></span>

At this point, you might have already guessed how we&#8217;re going to hide the plot, or code output, from our HTML file. Go to the gear symbol again, then in the options for the code chunk select **Show nothing (run code)**.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-32-1024x629.png" alt="" class="wp-image-827" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-32-1024x629.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-32-300x184.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-32-768x472.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-13-07-32.png 1724w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Change the options again to hide the output</figcaption></figure> 

Now when you hit the **play** symbol, the code will run but the output won&#8217;t display in the HTML file or even in our code window. 

If you ever want to hide the output of the code, you can use these options. However, for our purposes, go back into the **gear** options and select **(Use document defaults)** from the menu. 

## <span class="ez-toc-section" id="Sending_R_Notebook_Files_to_Friends"></span>Sending R Notebook Files to Friends<span class="ez-toc-section-end"></span>

As I mentioned earlier it&#8217;s possible to send all this information to other people by having them click on the drop-down **Code** menu and then **Download Rmd** from the HTML output. However, you should be aware that they will need you to send them the data sets separately from the other files. In this case, our data set is called **cars** and comes as standard with R Studio so anyone else using R would have the **cars** data set already. 

If you had, for example, a **.csv** file full of data that they don&#8217;t already have then you&#8217;d have to send that document to them as well for everything to link up and work together correctly.

Make sure to save your file at this point. View it in the browser one more time, and go ahead and download your own **Rmd** from the HTML output. 

Now, if you close the R Studio application altogether, you can re-load your project from the file you downloaded. Locate it in your downloaded files and open it up. R Studio will open and display the same file you were just closed down. <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-14-07-82-1024x629.png" alt="" class="wp-image-831" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-14-07-82-1024x629.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-14-07-82-300x184.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-14-07-82-768x472.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-R-Notebooks-Lesson-5-YouTube-2019-07-30-14-07-82.png 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Run all code chunks at once to save time</figcaption></figure> 

Once it&#8217;s opened up again you&#8217;ll want to run the code chunks before viewing it in a browser. A good way to do this if you have multiple code chunks is to use the **Run All** option found in the **Run** menu. This will save you having to run each one individually.

One small difference to be aware of this time is that this is not a project file, so to find the HTML output you will need to search through a larger list in the **Files** tab.

## <span class="ez-toc-section" id="Summary"></span>Summary<span class="ez-toc-section-end"></span>

In this lesson you&#8217;ve learned the basics of creating, editing and displaying R Notebooks. 

<p style="text-align:left">
  I hope you found the lesson helpful, if you did then ease let me know in the comments!
</p>

[embedyt] https://youtu.be/T1sEX5bZ0UE[/embedyt]