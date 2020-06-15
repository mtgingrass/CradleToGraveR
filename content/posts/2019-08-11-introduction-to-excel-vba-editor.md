---
title: Introduction to Excel VBA Editor
author: mtgingrass
type: post
date: 2019-08-11T21:25:50+00:00
url: /2019/08/11/introduction-to-excel-vba-editor/
featured_image: http://markgingrass.com/wp-content/uploads/2019/08/Introduction-to-Excel-VBA-Editor.jpg
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
In this lesson, you&#8217;ll learn how to access the VBA editor in Excel to manually inspect, change and rename your macro code.

In the previous tutorial **<a rel="noreferrer noopener" aria-label="Make Your First VBA Excel Macro (opens in a new tab)" href="http://markgingrass.com/2019/08/11/make-your-first-vba-excel-macro/" target="_blank">Make Your First VBA Excel Macro</a>** we learned how to set up the developer tab, how to record macros and how to run macros. If you haven&#8217;t covered that yet it would be a good idea to start there because we&#8217;ll be using the work you save and expanding on it here. For a very brief recap, you&#8217;ll need to know how to click on the **Macro Recording** button in the bottom-left of the <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a>, name the macro, and choose where to store it. After that, the program will record your keyboard and mouse input until you press the same button again to stop recording. To run it you&#8217;ll go to the **Developer** menu tab, click the **Macros** button, find your macro file and hit **Run**. 

<div id="ez-toc-container" class="ez-toc-v2_0_11 counter-hierarchy counter-decimal ez-toc-grey">
  <div class="ez-toc-title-container">
    <p class="ez-toc-title">
      Overview
    </p>
    
    <span class="ez-toc-title-toggle"><a class="ez-toc-pull-right ez-toc-btn ez-toc-btn-xs ez-toc-btn-default ez-toc-toggle"><i class="ez-toc-glyphicon ez-toc-icon-toggle"></i></a></span>
  </div><nav>
  
  <ul class="ez-toc-list ez-toc-list-level-1">
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-1" href="http://markgingrass.com/2019/08/11/introduction-to-excel-vba-editor/#Editing_Your_VBA_Macro" title="Editing Your VBA Macro">Editing Your VBA Macro</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-2" href="http://markgingrass.com/2019/08/11/introduction-to-excel-vba-editor/#Organize_Your_Module" title="Organize Your Module">Organize Your Module</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-3" href="http://markgingrass.com/2019/08/11/introduction-to-excel-vba-editor/#Understand_the_Macro_Code" title="Understand the Macro Code">Understand the Macro Code</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-4" href="http://markgingrass.com/2019/08/11/introduction-to-excel-vba-editor/#Summary" title="Summary">Summary</a>
    </li>
  </ul></nav>
</div>

## <span class="ez-toc-section" id="Editing_Your_VBA_Macro"></span>Editing Your VBA Macro<span class="ez-toc-section-end"></span>

What if you decided you wanted to edit that macro or take a look at the code? In that case, we need to use the **Excel VBA Editor**.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_7_00-1024x581.png" alt="" class="wp-image-942" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_7_00-1024x581.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_7_00-300x170.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_7_00-768x436.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_7_00.png 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>How to open the **Excel VBA Editor**</figcaption></figure> 

To open the VBA Editor in Excel, again you need to be on the **Developer** tab, and click the button in the far upper-left corner called **Visual Basic**. If you prefer to use a keyboard shortcut then **Alt** + **F11** will do the same thing.

This will open a new window with the full title **Microsoft Visual Basic for Applications** **Editor**. Sometimes it&#8217;s called an **IDE** which stands for **Integrated Development Environment**. On the left side of the window, there&#8217;s a navigation pane that works like a regular file explorer with file sections that expand and contract using **+** and **&#8211;** buttons. 

Expand the file you saved in the previous lesson (in our example I named it **PERSONAL**). You&#8217;ll see folders named **Microsoft Excel Objects** and **Modules**, then **double-click** on **Module1** to open the macro code from the last lesson in the main VBA Editor window.

## <span class="ez-toc-section" id="Organize_Your_Module"></span>Organize Your Module<span class="ez-toc-section-end"></span>

The first thing we can do to make things a little more organised is to rename **Module1** to something a little more user-friendly. Head to the **Properties** panel (underneath the navigation pane on the left), highlight the name **Module1** and then simply type over with a new name. In this case, I&#8217;ll use the name **Beautify** because we&#8217;re using the macro to make the columns look better. We can actually use this keep anything that improves the look of Excel together in one place. 

The code in the **Beautify** module is broken down into a section called a **sub**. The beginning code for the sub is **Sub** followed by **ColumnAutoSize** which is the name we used when we saved our macro in the previous lesson. The ending code is (unsurprisingly) **End Sub**. Anything between those two pieces of code is all the same macro.  
You can have multiple subs in one module, each containing their own code.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_7_34-1024x581.png" alt="" class="wp-image-943" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_7_34-1024x581.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_7_34-300x170.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_7_34-768x436.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_7_34.png 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>A **sub** shown in the VBA Editor</figcaption></figure> 

In the screenshot above I&#8217;ve highlighted the sub from start to end. Some of the lines begin with a single inverted comma. These are **comment** lines. Comment lines are exactly what they sound like &#8211; meaning you can write notes without affecting how the text works. 

## <span class="ez-toc-section" id="Understand_the_Macro_Code"></span>Understand the Macro Code<span class="ez-toc-section-end"></span>

Underneath the comments section is the actual macro code. This shows what was recorded when we were double-clicking on the columns in the last lesson. For example, the first line is:

**Columns(&#8220;A:A&#8221;).EntireColumn.AutoFit**

You don&#8217;t have to understand everything in the code, but you should be able to spot a pattern. In short, the action **AutoFit** is being applied to Column A. Can you figure out what the code would look like if you wanted to AutoFit Column I? It should be just like this: 

**Columns(&#8220;I:I&#8221;).EntireColumn.AutoFit**

All we had to do was replace Column A with I, which you can do by copying and pasting another line, then editing the column. Of course, we don&#8217;t want to get into the habit of copy-pasting everything, but it gives you a start.

My code has an error! Look at the line referencing column H. Or more specifically the two lines! One of them looks like the rest of our code, but the other contains **ColumnWidth**. This happened when I was recording the macro and manually resized a column by dragging the mouse.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_7_52-1-1024x581.png" alt="" class="wp-image-945" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_7_52-1-1024x581.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_7_52-1-300x170.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_7_52-1-768x436.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-11_7_52-1.png 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>A rogue action made its way into our code</figcaption></figure> 

The code executes from the first line and works down the <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a> in order. We don&#8217;t want any extra code that will waste processing power so the best thing to do with that extra line is to delete it.

Next down the line is the code that instructs the program to scroll right and then left so we can see if all the columns have resized:

**ActiveWindow.ScrollColumn = 2**

In some cases, you might want this. For example to scroll back to column A if the macro takes it off the edge of the <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a>. In my case, I don&#8217;t need this code at all, so I can delete it. The final code is much shorter and cleaner looking.

## <span class="ez-toc-section" id="Summary"></span>Summary<span class="ez-toc-section-end"></span>

In this lesson, you&#8217;ve learned where to find the macro code, how to edit it, and how to rename the modules. You can even replace the name inside the macro code and see that it alters the file name that the macro is stored under!

I hope this lesson on the VBA Editor in Excel helped you, please let me know in the comments if it did.

[embedyt] https://www.youtube.com/watch?v=GNulOwQT0mk[/embedyt]