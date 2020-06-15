---
title: Make Your First VBA Excel Macro
author: mtgingrass
type: post
date: 2019-08-11T11:41:50+00:00
url: /2019/08/11/make-your-first-vba-excel-macro/
featured_image: http://markgingrass.com/wp-content/uploads/2019/08/Very-first-VBA-Excel-Macro.jpg
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
  - macros
  - Microsoft Excel
  - programming
  - vba

---
This tutorial is meant for absolute beginners in VBA, those who might not know what a macro is or what VBA even means! If that&#8217;s you, follow along and we&#8217;ll create your first macro together.

<div id="ez-toc-container" class="ez-toc-v2_0_11 counter-hierarchy counter-decimal ez-toc-grey">
  <div class="ez-toc-title-container">
    <p class="ez-toc-title">
      Overview
    </p>
    
    <span class="ez-toc-title-toggle"><a class="ez-toc-pull-right ez-toc-btn ez-toc-btn-xs ez-toc-btn-default ez-toc-toggle"><i class="ez-toc-glyphicon ez-toc-icon-toggle"></i></a></span>
  </div><nav>
  
  <ul class="ez-toc-list ez-toc-list-level-1">
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-1" href="http://markgingrass.com/2019/08/11/make-your-first-vba-excel-macro/#Open_the_Developer_Menu_in_Excel" title="Open the Developer Menu in Excel">Open the Developer Menu in Excel</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-2" href="http://markgingrass.com/2019/08/11/make-your-first-vba-excel-macro/#Make_Your_First_Macro_in_Excel" title="Make Your First Macro in Excel">Make Your First Macro in Excel</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-3" href="http://markgingrass.com/2019/08/11/make-your-first-vba-excel-macro/#Test_Your_First_Macro" title="Test Your First Macro">Test Your First Macro</a>
    </li>
  </ul></nav>
</div>

## <span class="ez-toc-section" id="Open_the_Developer_Menu_in_Excel"></span>Open the Developer Menu in Excel<span class="ez-toc-section-end"></span>

Open up Microsoft Excel and take a look at the top menu ribbon. If you see the **Developer** tab then we&#8217;re good to go. If not, here&#8217;s how you get it: <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/Untitled-2-1024x581.png" alt="" class="wp-image-931" srcset="https://markgingrass.com/wp-content/uploads/2019/08/Untitled-2-1024x581.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/Untitled-2-300x170.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/Untitled-2-768x436.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/Untitled-2.png 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>How to find the **Developer** tab in Microsoft Excel</figcaption></figure> 

Go to the **File** menu, then **Options**, then **Customize Ribbon**. On the right-hand side of the popup window, you should see the Main Tabs selection. If not, go ahead and select that option from the drop-down menu shown in the screenshot above. If you still can&#8217;t see the Developer option you might need to find it in the left-hand column under **All Commands**. Check the **Developer** box and hit **OK**. 

You should notice two differences on your <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a>. Firstly, in the top ribbon, there should be the **Developer** menu. Secondly, in the bottom-left of the <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a>, there should be a new button as circled in the close-up image below.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/macro-button-1024x581.jpg" alt="" class="wp-image-932" srcset="https://markgingrass.com/wp-content/uploads/2019/08/macro-button-1024x581.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/08/macro-button-300x170.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/macro-button-768x436.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/08/macro-button.jpg 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>How to get the **Macro Recording** button in Excel</figcaption></figure> 

If the button isn&#8217;t there, we need to find it. **Right-click** on the bottom bar area and select the **Macro Recording** option from the menu that pops up. The button should now appear in the bottom left near the word &#8216;Ready&#8217;.

## <span class="ez-toc-section" id="Make_Your_First_Macro_in_Excel"></span>Make Your First Macro in Excel<span class="ez-toc-section-end"></span>

In simple terms, a **macro** is a recording of keystrokes and mouse input that you make in the software. The software can then play this recording back to duplicate the actions you&#8217;ve take, making things much more efficient for you.

For your first macro, you&#8217;re going to have the computer auto-resize all the columns in Excel to fit the text correctly. This is easy to do once by yourself, but if you have files coming in every day that need this action applied, using a macro can save you all the work of repeating the same task. Anything that is repeatable is really good for macros. 

To start creating the macro, click on the **Macro Recording** button in the lower-left.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_3_47-1024x581.jpg" alt="" class="wp-image-933" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_3_47-1024x581.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_3_47-300x170.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_3_47-768x436.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_3_47.jpg 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /></figure> 

You&#8217;ll get a new popup window where you can name the macro (we&#8217;ll use the name **ColumnAutoSize**) and choose where to store it. The choices are:

  * Personal Macro Workbook
  * New Workbook
  * This Workbook

If you store it in **This Workbook** it will only work in _this file._ You might want to use this macro over various different files, so we&#8217;ll store it in **Personal Macro Workbook**. Hit **OK**.

Now it&#8217;s recording! The main actions it will record are things like mouse clicks, mouse movements, keystrokes, even settings etc &#8211; anything you click on will be recorded into VBA code.

So long as your columns are filled with some text or numbers that are longer than the boxes themselves, Excel will hide some of the content. A quick way to resize them is to double-click directly between columns as shown in the screenshot below.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_4_07-1024x581.png" alt="" class="wp-image-934" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_4_07-1024x581.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_4_07-300x170.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_4_07-768x436.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_4_07.png 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Double-click between columns to auto-resize them</figcaption></figure> 

Go ahead and do this for every column that has data in it. In my example, I even use the bottom scroll bar to move the <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a> right and then left again to check they&#8217;re all done. 

Now hit the **Stop** button (the same button as **Macro Recording** from earlier) and that will, as you might expect, stop the program from recording any more actions.

## <span class="ez-toc-section" id="Test_Your_First_Macro"></span>Test Your First Macro<span class="ez-toc-section-end"></span>

Now we&#8217;ve made a macro we want to make sure it works correctly. We need to give it something to work on so go ahead and manually resize the columns back to a smaller width. It doesn&#8217;t matter the exact size, so long as they&#8217;re smaller than they need to be to show all the info. <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_4_22-1024x581.png" alt="" class="wp-image-936" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_4_22-1024x581.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_4_22-300x170.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_4_22-768x436.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_4_22.png 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>How to run a macro in Excel</figcaption></figure> 

Once you&#8217;ve done that we can run the macro to test it. Make sure you&#8217;re on the **Developer** tab, hit the **Macro** button, select your macro file in the list **ColumnAutoSize** and hit **Run**. If you&#8217;ve done everything right then you should see the columns automatically resize back to the width we need.

A word of warning: **If you want to save your work you** **need to use the file format ._XLSM_** __or the macro won&#8217;t be saved alongside the worksheet. So long as you use .xlsm then next time you open up the file, the macro will still be found in the same place under the Developer tab and Macros button.

Congratulations, you just made and ran your first macro using VBA in Microsoft Excel. I hope you found this lesson useful, if you did please let me know in the comments below!

[embedyt] https://www.youtube.com/watch?v=9-_UZBBM3RQ[/embedyt]