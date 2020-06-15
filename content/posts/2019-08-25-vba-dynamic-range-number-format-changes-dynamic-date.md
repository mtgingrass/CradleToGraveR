---
title: VBA – Dynamic Range and Number Format Changes and Dynamic Date
author: mtgingrass
type: post
date: 2019-08-25T06:43:57+00:00
url: /2019/08/25/vba-dynamic-range-number-format-changes-dynamic-date/
featured_image: http://markgingrass.com/wp-content/uploads/2019/08/Excel-VBA-range-date-number-format.jpg
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
  - macros
  - programming
  - vba

---
In this VBA tutorial, we&#8217;re going to take what we learned <a rel="noreferrer noopener" aria-label="in the last tutorial (opens in a new tab)" href="http://markgingrass.com/2019/08/18/vba-option-explicit-range-debugger-objects-integer-variable/" target="_blank">in the last tutorial</a> and expand on it so it&#8217;s more practical and useful for you.

<div id="ez-toc-container" class="ez-toc-v2_0_11 counter-hierarchy counter-decimal ez-toc-grey">
  <div class="ez-toc-title-container">
    <p class="ez-toc-title">
      Overview
    </p>
    
    <span class="ez-toc-title-toggle"><a class="ez-toc-pull-right ez-toc-btn ez-toc-btn-xs ez-toc-btn-default ez-toc-toggle"><i class="ez-toc-glyphicon ez-toc-icon-toggle"></i></a></span>
  </div><nav>
  
  <ul class="ez-toc-list ez-toc-list-level-1">
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-1" href="http://markgingrass.com/2019/08/25/vba-dynamic-range-number-format-changes-dynamic-date/#Getting_Started" title="Getting Started">Getting Started</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-2" href="http://markgingrass.com/2019/08/25/vba-dynamic-range-number-format-changes-dynamic-date/#Add_the_Name_and_Date" title="Add the Name and Date">Add the Name and Date</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-3" href="http://markgingrass.com/2019/08/25/vba-dynamic-range-number-format-changes-dynamic-date/#Change_the_Decimal_Places_in_Column_B" title="Change the Decimal Places in Column B">Change the Decimal Places in Column B</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-4" href="http://markgingrass.com/2019/08/25/vba-dynamic-range-number-format-changes-dynamic-date/#Use_the_VBA_Macro_to_Learn_New_Code" title="Use the VBA Macro to Learn New Code">Use the VBA Macro to Learn New Code</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-5" href="http://markgingrass.com/2019/08/25/vba-dynamic-range-number-format-changes-dynamic-date/#Summary" title="Summary">Summary</a>
    </li>
  </ul></nav>
</div>

## <span class="ez-toc-section" id="Getting_Started"></span>Getting Started<span class="ez-toc-section-end"></span><figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-YouTube-1024x581.jpg" alt="" class="wp-image-1018" srcset="https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-YouTube-1024x581.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-YouTube-300x170.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-YouTube-768x436.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-YouTube.jpg 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Setting up your workspace</figcaption></figure> 

On the left of the above screenshot is a column of randomly generated numbers from B2 &#8211; B11. We&#8217;re going to use VBA to change the number of decimal places of these numbers, and also to add my name and the date to column A. More specifically, this should always dynamically show today&#8217;s date.

The first step is to open the VBA Editor (on the PC you can use **alt** + **F11**), **right-click** on the **Book** and **Insert** > **Module**.

Next, use **Option Explicit**. As explained in a previous lesson this forces us to declare all of our variables. 

Then create a sub called template_builder. Your code should look like this:

<pre class="wp-block-code"><code>
Option Explicit

Sub template_builder ()

End Sub
</code></pre>

## <span class="ez-toc-section" id="Add_the_Name_and_Date"></span>Add the Name and Date<span class="ez-toc-section-end"></span><figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-YouTube02-1024x581.jpg" alt="" class="wp-image-1019" srcset="https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-YouTube02-1024x581.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-YouTube02-300x170.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-YouTube02-768x436.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-YouTube02.jpg 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Using VBA to display name and today&#8217;s date</figcaption></figure> 

Now I want to add my name and today&#8217;s date. Inside the Sub, use **Range** (covered in the last tutorial) to insert a value into cell A1:  
**Range(&#8220;A1&#8221;).Value = &#8220;Mark G&#8221;**

Hit F5 to run and whatever name value you used will now show in A1.

The date is a little trickier because we want it to update automatically to always show today&#8217;s date and save us the trouble of updating it manually. If you&#8217;re familiar with Excel you&#8217;ll know that you can enter a very simple formula (**today**) in any cell to display the current date, and we can use this same formula in VBA too:  
**Range(&#8220;A2&#8221;).Value = &#8220;=today()&#8221;**

Again, run with F5 and today&#8217;s date will print in cell A2.

## <span class="ez-toc-section" id="Change_the_Decimal_Places_in_Column_B"></span>Change the Decimal Places in Column B<span class="ez-toc-section-end"></span>

At this point, we run into some challenges. The first challenge is to find a dynamic way to select all the numbers in column B no matter how many entries there are. We could use **Range(&#8220;B2:B11&#8221;)** and that would select all the numbers currently on the sheet. However, if I add more numbers they&#8217;d be missed out and not selected. 

<div class="wp-block-columns has-2-columns">
  <div class="wp-block-column">
    <p>
      <br />There&#8217;s an action we can use in Excel to get around this and dynamically select all the cells that contain an entry in any given column. The way to do this is to select cell B2, then hold <strong>ctrl </strong>+ <strong>shift </strong>and press the <strong>down arrow</strong>. Now, any cells with numbers below B2 will be selected and highlighted. The next challenge is to figure out a way to automate this into our code. Because we don&#8217;t yet know how to program this type of thing in VBA, we can instead record it as a macro and then examine the code that the macro recorder creates for us.
    </p>
    
    <p>
      Hit the record button, name the new macro <strong>select_all_numbers</strong> and store it in <strong>This Workbook</strong>. Once you hit <strong>OK </strong>you&#8217;re recording.
    </p>
  </div>
  
  <div class="wp-block-column">
    <figure class="wp-block-image"><img src="http://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-YouTube03-909x1024.jpg" alt="" class="wp-image-1020" srcset="https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-YouTube03-909x1024.jpg 909w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-YouTube03-266x300.jpg 266w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-YouTube03-768x865.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-YouTube03.jpg 956w" sizes="(max-width: 909px) 100vw, 909px" /><figcaption>Use the record function to automate your actions</figcaption></figure>
  </div>
</div>

<div class="wp-block-columns has-2-columns">
  <div class="wp-block-column">
    <figure class="wp-block-image"><img src="http://markgingrass.com/wp-content/uploads/2019/08/decrease-decimal-button.jpg" alt="" class="wp-image-1022" srcset="https://markgingrass.com/wp-content/uploads/2019/08/decrease-decimal-button.jpg 458w, https://markgingrass.com/wp-content/uploads/2019/08/decrease-decimal-button-300x296.jpg 300w" sizes="(max-width: 458px) 100vw, 458px" /><figcaption>The <strong>Decrease Decimal</strong> button in Excel</figcaption></figure> 
    
    <p>
    </p>
  </div>
  
  <div class="wp-block-column">
    <p>
      <br /><br />In order, the actions we want to record are as follows:
    </p>
    
    <ul>
      <li>
        Use the mouse to select cell <strong>B2</strong>
      </li>
      <li>
        Hold <strong>ctrl </strong>+ <strong>shift</strong>
      </li>
      <li>
        While holding them hit the <strong>down arrow</strong> once
      </li>
      <li>
        Use the <strong>Decrease Decimal</strong> button 3 times so our numbers show 2 decimal places
      </li>
      <li>
        Hit the <strong>Record Macro</strong> button to stop recording
      </li>
    </ul>
  </div>
</div>

## <span class="ez-toc-section" id="Use_the_VBA_Macro_to_Learn_New_Code"></span>Use the VBA Macro to Learn New Code<span class="ez-toc-section-end"></span>

Now we want to examine the code from our recorded macro. Go to the VBA editor and select **Module 2** from the navigation pane. This is where the macro code is stored. In the main window you can now see the events we recorded in a coded format.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-03-1024x581.jpg" alt="" class="wp-image-1024" srcset="https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-03-1024x581.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-03-300x170.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-03-768x436.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-03.jpg 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>The code created when you recorded the macro</figcaption></figure> 

The first line selects the cell B2 &#8211; something we already know how to do. The next line, highlighted in blue in the screenshot, selects the rest of the numbers in the column. The following 3 lines after that reduce the number of decimal places. We can actually delete the first of these two lines just to leave the final one which will take our numbers to 2 decimal places (0.00). Great! We now have the code we need and can copy/paste it into our main Sub. It should look like this:

<pre class="wp-block-code"><code>
Range("B2").Select
Range(Selection, Selection.End(xlDown)).Select
Selection.NumberFormat = "0.00"
</code></pre>

Paste this code inside the main Sub, underneath the line where we print today&#8217;s date and your final result should look something like the following screenshot.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-05-1024x581.jpg" alt="" class="wp-image-1026" srcset="https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-05-1024x581.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-05-300x170.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-05-768x436.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-Dynamic-Range-and-Number-Format-Changes-and-Dynamic-Date-05.jpg 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>The finished product</figcaption></figure> 

## <span class="ez-toc-section" id="Summary"></span>Summary<span class="ez-toc-section-end"></span>

In this tutorial you&#8217;ve learned how to:

  * Insert a dynamic date
  * Change number formats
  * Select a dynamic range

One of the key lessons you should take note of is how to use the macro recorder to learn new VBA commands. Essentially, if you don&#8217;t know the code you can record the actions and inspect the code afterwards to understand how those actions are written in the VBA Editor.

I hope you enjoyed this lesson. If you&#8217;ve expanded on the principles here and made something extra I&#8217;d love to see it so please leave comments or links below and I&#8217;ll check them out.

[embedyt] https://www.youtube.com/watch?v=q8u4BlB2D2g[/embedyt]