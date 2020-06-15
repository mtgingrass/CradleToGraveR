---
title: VBA – for loops, iterator, and using cells
author: mtgingrass
type: post
date: 2019-08-25T08:41:06+00:00
url: /2019/08/25/vba-for-loops-iterator-using-cells/
featured_image: http://markgingrass.com/wp-content/uploads/2019/08/Excel-VBA-for-loops-iterator-and-using-cells.jpg
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
  - VBA
tags:
  - Microsoft Excel
  - programming
  - vba

---
In this Excel VBA tutorial, we&#8217;re going to learn about **Cells** (instead of using **Range**) and **for** **loops**.

<div id="ez-toc-container" class="ez-toc-v2_0_11 counter-hierarchy counter-decimal ez-toc-grey">
  <div class="ez-toc-title-container">
    <p class="ez-toc-title">
      Overview
    </p>
    
    <span class="ez-toc-title-toggle"><a class="ez-toc-pull-right ez-toc-btn ez-toc-btn-xs ez-toc-btn-default ez-toc-toggle"><i class="ez-toc-glyphicon ez-toc-icon-toggle"></i></a></span>
  </div><nav>
  
  <ul class="ez-toc-list ez-toc-list-level-1">
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-1" href="http://markgingrass.com/2019/08/25/vba-for-loops-iterator-using-cells/#Getting_Started" title="Getting Started">Getting Started</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-2" href="http://markgingrass.com/2019/08/25/vba-for-loops-iterator-using-cells/#Create_the_iterator" title="Create the iterator">Create the iterator</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-3" href="http://markgingrass.com/2019/08/25/vba-for-loops-iterator-using-cells/#Using_Debugger_to_Watch_the_Code_at_Work" title="Using Debugger to Watch the Code at Work">Using Debugger to Watch the Code at Work</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-4" href="http://markgingrass.com/2019/08/25/vba-for-loops-iterator-using-cells/#Summary" title="Summary">Summary</a>
    </li>
  </ul></nav>
</div>

## <span class="ez-toc-section" id="Getting_Started"></span>Getting Started<span class="ez-toc-section-end"></span>

In this example, I&#8217;ve started with Option Explicit so I have to declare all my variables before using them, and I&#8217;ve created a Sub called **using_cells()**.

<div class="wp-block-columns has-2-columns">
  <div class="wp-block-column">
    <p>
      <br />When I start to type <strong>Cells(</strong> the highlighted yellow box will pop up giving me a guide on how to use it correctly. Specifically, it&#8217;s asking you to use a row number and a column number. This is different from <strong>Range</strong> where you would use the cell number such as B3. With <strong>Cells,</strong> we don&#8217;t use letters at all.
    </p>
  </div>
  
  <div class="wp-block-column">
    <figure class="wp-block-image"><img src="http://markgingrass.com/wp-content/uploads/2019/08/VBA-for-loops-iterator-and-using-cells-01.jpg" alt="" class="wp-image-1031" srcset="https://markgingrass.com/wp-content/uploads/2019/08/VBA-for-loops-iterator-and-using-cells-01.jpg 722w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-for-loops-iterator-and-using-cells-01-300x230.jpg 300w" sizes="(max-width: 722px) 100vw, 722px" /><figcaption>How to use <strong>Cells</strong></figcaption></figure>
  </div>
</div>

So the correct way to select a cell is **Cells(9, 6).select**. This would select the 9th row down and the 6th column from the left (column F).<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/VBA-for-loops-iterator-and-using-cells-02-1024x581.jpg" alt="" class="wp-image-1032" srcset="https://markgingrass.com/wp-content/uploads/2019/08/VBA-for-loops-iterator-and-using-cells-02-1024x581.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-for-loops-iterator-and-using-cells-02-300x170.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-for-loops-iterator-and-using-cells-02-768x436.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-for-loops-iterator-and-using-cells-02.jpg 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Using VBA to select with **Cells**</figcaption></figure> 

Alternatively, you could use **Cells(9, 6).Value = &#8220;&#8221;** to blank out the value shown in F9 like in the screenshot above.

## <span class="ez-toc-section" id="Create_the_iterator"></span>Create the iterator<span class="ez-toc-section-end"></span>

With **Cells** we can force a command to loop through an entire row of cells, performing the same task over and over in a quick, repeating manner. To do this we&#8217;ll need to create an **Integer** value. 

<pre class="wp-block-code"><code>
Sub using_cells()

	Dim iterator As Integer
	iterator = 1

	Cells(9, iterator).Value = ""

End Sub
</code></pre>

In the above code, I&#8217;ve created **iterator** as an integer value and then given it a starting value of 1. Next, I&#8217;ve swapped out the column number for the **iterator** so that each time the code is run the column value will increase by 1. You can try this by running the code and it will start by blanking out the cell at row 9, column 1 (the current **iterator** value).

Finally, we only have so many columns so we want to define the maximum value for **iterator** so we can limit how far it travels across our spreadsheet.

<pre class="wp-block-code"><code>
Sub using_cells()

	Dim iterator As Integer
	iterator = 1

	For iterator = 1 To 13
		Cells(9, iterator).Value = ""
	Next

End Sub
</code></pre>

We do this by introducing a **for loop** as above, stating that **iterator** should start at 1 and work its way through to 13. Hit F5 to run this now and watch the whole row disappear.

## <span class="ez-toc-section" id="Using_Debugger_to_Watch_the_Code_at_Work"></span>Using Debugger to Watch the Code at Work<span class="ez-toc-section-end"></span>

There&#8217;s a little trick we can use with the Debugger to slow things down and watch the code working step by step. The first thing to do is to click just next to the **Cells** line shown in this screenshot:<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/VBA-for-loops-iterator-and-using-cells-03-1024x581.jpg" alt="" class="wp-image-1035" srcset="https://markgingrass.com/wp-content/uploads/2019/08/VBA-for-loops-iterator-and-using-cells-03-1024x581.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-for-loops-iterator-and-using-cells-03-300x170.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-for-loops-iterator-and-using-cells-03-768x436.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-for-loops-iterator-and-using-cells-03.jpg 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Using the debugger to watch your code in action</figcaption></figure> 

Next, change the row value to **10** so that we can see this working on a new set of cells. Then use **F8** to run the code up to the line you just highlighted. If you hover your mouse over **iterator** a popup will appear telling you that the current value is 1. Press F8 a couple more times to cycle the code again and the value you see when you hover over **iterator** will be 2. Do it again and it&#8217;ll go up to 3, and so on.

While you&#8217;re doing this you&#8217;ll see the cells becoming blank one by one on your spreadsheet.

Hopefully, you can see why sometimes we need to use **Cells** instead of **Range**. With Range, we wouldn&#8217;t be able to increase the column value because it&#8217;s stated as a letter, and it&#8217;s difficult to add numeric value to letters. Mission accomplished!

## <span class="ez-toc-section" id="Summary"></span>Summary<span class="ez-toc-section-end"></span>

In this lesson, you&#8217;ve learned how to use **Cells** and how this is different from **Range**. You&#8217;ve also learned how to create an **iterator** and a simple **for loop**. 

I hope this helps you, please let me know in the comments if it did and feel free to share anything you made using what you&#8217;ve learned here!

[embedyt] https://www.youtube.com/watch?v=pVIa7bDYHeg[/embedyt]