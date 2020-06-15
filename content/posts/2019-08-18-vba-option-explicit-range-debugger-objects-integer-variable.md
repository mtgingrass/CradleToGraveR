---
title: 'VBA: Option Explicit, Range, Debugger, Objects, and Integer Variable'
author: mtgingrass
type: post
date: 2019-08-18T14:56:59+00:00
url: /2019/08/18/vba-option-explicit-range-debugger-objects-integer-variable/
featured_image: http://markgingrass.com/wp-content/uploads/2019/08/Excel-VBA-range-debugger-etc.jpg
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
  - programming
  - vba

---
In this tutorial we&#8217;re going to cover a variety of smaller topics:

  * **Range** and how to use it 
  * How the **Debugger** is a useful tool 
  * What an **Object** is and different ways to use them 
  * A quick introduction to **Integers**
  * **Option Explicit** and why you should always use it

Open up Excel and the VBA Editor using either the Macro button or the Alt + F11 keyboard shortcut and let&#8217;s get started.

<div id="ez-toc-container" class="ez-toc-v2_0_11 counter-hierarchy counter-decimal ez-toc-grey">
  <div class="ez-toc-title-container">
    <p class="ez-toc-title">
      Overview
    </p>
    
    <span class="ez-toc-title-toggle"><a class="ez-toc-pull-right ez-toc-btn ez-toc-btn-xs ez-toc-btn-default ez-toc-toggle"><i class="ez-toc-glyphicon ez-toc-icon-toggle"></i></a></span>
  </div><nav>
  
  <ul class="ez-toc-list ez-toc-list-level-1">
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-1" href="http://markgingrass.com/2019/08/18/vba-option-explicit-range-debugger-objects-integer-variable/#Range" title="Range">Range</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-2" href="http://markgingrass.com/2019/08/18/vba-option-explicit-range-debugger-objects-integer-variable/#Debug_Mode" title="Debug Mode">Debug Mode</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-3" href="http://markgingrass.com/2019/08/18/vba-option-explicit-range-debugger-objects-integer-variable/#Use_Range_to_Enter_Values_in_Cells" title="Use Range to Enter Values in Cells">Use Range to Enter Values in Cells</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-4" href="http://markgingrass.com/2019/08/18/vba-option-explicit-range-debugger-objects-integer-variable/#What_Are_Objects_in_VBA" title="What Are Objects in VBA?">What Are Objects in VBA?</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-5" href="http://markgingrass.com/2019/08/18/vba-option-explicit-range-debugger-objects-integer-variable/#Integers_in_VBA" title="Integers in VBA">Integers in VBA</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-6" href="http://markgingrass.com/2019/08/18/vba-option-explicit-range-debugger-objects-integer-variable/#Option_Explicit" title="Option Explicit">Option Explicit</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-7" href="http://markgingrass.com/2019/08/18/vba-option-explicit-range-debugger-objects-integer-variable/#Summary" title="Summary">Summary</a>
    </li>
  </ul></nav>
</div>

## <span class="ez-toc-section" id="Range"></span>Range<span class="ez-toc-section-end"></span>

In the VBA editor, create a new Sub called **my_range** with the following code:

**Sub my_range ()**  
**End Sub**

Remember from the last lesson that these two lines of code are the start and end of our Sub, so the rest of the code will go between them. Begin typing between them **range(** but then pause and don&#8217;t go any further. On your <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a>, you should now see something like the screenshot below.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-12_5_05-1024x581.jpg" alt="" class="wp-image-956" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-12_5_05-1024x581.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-12_5_05-300x170.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-12_5_05-768x436.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-12_5_05.jpg 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>The program is hinting to us about how to use the **Range** object</figcaption></figure> 

I&#8217;ve enlarged this so you can see that it&#8217;s showing some words in **bold**, _italic_, and others in normal type. The **_Cell1_** __is in bold because it&#8217;s mandatory, you must enter at least one cell value. The [_Cell2_] is not bold and is also in square brackets because this is _optional_. The part in normal type &#8216;As Range&#8217; is telling us this is a &#8216;Range&#8217; object. 

Go ahead and complete our example now by finishing the line **range(&#8220;A4&#8221;)** so that it&#8217;s referring to the A4 cell on the sheet. There&#8217;s still something missing from this, however. Right now we&#8217;re referring to the cell but not telling the program to do anything with that cell. Test this by pressing **F5** to run the code, and you&#8217;ll get a popup error message **Compile error: Invalid use of property**. This is such a critical error that none of the code actually ran, and VBA editor put us straight into Debug mode.

## <span class="ez-toc-section" id="Debug_Mode"></span>Debug Mode<span class="ez-toc-section-end"></span>

On the screenshot part of the code has been highlighted in yellow, and part in blue. I didn&#8217;t do this, the debug process did it automatically to try to pinpoint us to the error **Invalid use of property**. The error is that I didn&#8217;t actually use any property at all.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-12_5_41-1024x652.png" alt="" class="wp-image-958" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-12_5_41-1024x652.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-12_5_41-300x191.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-12_5_41-768x489.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-12_5_41.png 1326w" sizes="(max-width: 1024px) 100vw, 1024px" /></figure> 

If you forget what the error is, you can hit **F8** on a PC or go to the **Debug** menu > **Step Into** you&#8217;ll get the error message on <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a> again. What we forgot to do was finish up the line highlighted in blue by specifying a property for the **Range** object. To fix this, after the last parenthesis use a period and you&#8217;ll automatically get a drop-down list of options you could use at this point. Start typing the word **select** and as you do so you&#8217;ll see the list gets shorter. Either hit **tab** or **enter** to autocomplete the highlighted property. <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-12_5_50-1024x614.png" alt="" class="wp-image-959" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-12_5_50-1024x614.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-12_5_50-300x180.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-12_5_50-768x460.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-12_5_50.png 1388w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>The autocomplete list for Range object properties</figcaption></figure> 

Your complete line should now show **Range (&#8220;A4&#8221;).Select** 

Hit **F8** to continue the debugger, and you may need to hit **F8** again in order to move the code down to the line we just edited. Once that line of code runs Excel will automatically select the cell **A4** that we specified.

To stop the debugger you can either keep hitting F8 until it runs the **End Sub** line, or you can hit the **stop** symbol up above (it will actually show the word &#8220;Reset&#8221; when you hover over it, even though it looks like a regular stop symbol). 

## <span class="ez-toc-section" id="Use_Range_to_Enter_Values_in_Cells"></span>Use Range to Enter Values in Cells<span class="ez-toc-section-end"></span>

Next, we want to try using **range** to enter values in some spreadsheet cells. Change your code to match the following:

<pre class="wp-block-code"><code>
Sub my_range()
	Range("A5").Value = 10
	Range("A6").Value = "Hello World"
	Range("A1").Select

End Sub
</code></pre>

Running this code will result in Excel entering the values from the code in the given cells, and then selecting cell A1 before finishing. The reason we don&#8217;t want to have the cell selection at the start is that there&#8217;s little point in moving to a cell only to move somewhere else to input something. However, it&#8217;s useful to move back to the upper-left cell _after_ processing the other code, ready for the next time you want to do anything in this sheet.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/VBA-fill-cells-values-1024x567.jpg" alt="Using the Range command to enter values in Excel cells" class="wp-image-996" srcset="https://markgingrass.com/wp-content/uploads/2019/08/VBA-fill-cells-values-1024x567.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-fill-cells-values-300x166.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-fill-cells-values-768x425.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/08/VBA-fill-cells-values.jpg 1621w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Using the Range command to enter values in Excel cells</figcaption></figure> 

## <span class="ez-toc-section" id="What_Are_Objects_in_VBA"></span>What Are Objects in VBA?<span class="ez-toc-section-end"></span>

Let&#8217;s talk a little bit about what an **object** is in VBA. An object is something you can think of like a television, a radio, or a cell phone. Objects have properties or attributes and they can do things. 

Think of a television set. What attributes make up the TV? It has a <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a>, it can perform actions such as turning on, turning off, changing channels etc. You can think of the TV set as the **Range** object we used in the example above, and you can think of the actions the TV can take as the instructions that come after the dot or period. Look at the following example where I&#8217;ve added another line to our code:

<pre class="wp-block-code"><code>
Sub my_range()
	Range("A5").Value = 10
	Range("A6").Value = "Hello World"
	Range("A1").Select
	MsgBox (Range("A6").Value)

End Sub
</code></pre>

In the new line 6, I&#8217;ve added **MsgBox (Range(&#8220;A6&#8221;).Value)** and we can think of this in the way I&#8217;ve just described. This line of code asks the **Range** object what **Value** is in **A6** and outputs it into a **message box**. Try running that line if you want to see the results for yourself.

## <span class="ez-toc-section" id="Integers_in_VBA"></span>Integers in VBA<span class="ez-toc-section-end"></span>

To declare an integer we can use the following code structure: 

<pre class="wp-block-code"><code>
Dim my_cool_int As Integer
</code></pre>

This declares **my\_cool\_int** to be an **integer**. In isolation this doesn&#8217;t do much for us, so let&#8217;s add more to it

<pre class="wp-block-code"><code>
Sub my_range()
	Range("A5").Value = 10
	Range("A6").Value = "Hello World"
	Range("A1").Select

	Dim my_cool_int As Integer
	my_cool_int = 7
	MsgBox(my_cool_int)

End Sub
</code></pre>

Running this assigns the value 7 to **my\_cool\_int** and outputs it into a message box. This is fun but still not incredibly useful, so let&#8217;s do more with it again:

<pre class="wp-block-code"><code>
Sub my_range()
	Range("A5").Value = 10
	Range("A6").Value = "Hello World"
	Range("A1").Select

	Dim my_cool_int As Integer
	my_cool_int = Range("A5").Value
	Range("D10").Value = my_cool_int

End Sub
</code></pre>

If you&#8217;re on the ball you&#8217;ll have already guessed that the changes to lines 8 and 9 will mean the value from **A5** will now also print in **D10**. In line 8 we asked for A5 to be assigned to **my\_cool\_int**. However, A5 is a complex object and we don&#8217;t just want any part of it, we specifically want to bring out the **Value** and store it in our **integer**. Then we&#8217;ll display that **integer** in **D10**.

One more thing you can do here is to use the **Range** to cover (as it sounds) a _range_ of cells. So we can use code such as **Range(&#8220;A1:D4&#8221;).Value = 0** and this will place the value 0 in all cells between A1, in the upper left, and D4, in the lower right. Try it and see, you should get something like the following screenshot:<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/range-cells-1024x533.jpg" alt="using range to cover multiple cells" class="wp-image-1002" srcset="https://markgingrass.com/wp-content/uploads/2019/08/range-cells-1024x533.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/08/range-cells-300x156.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/range-cells-768x400.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/08/range-cells.jpg 1664w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Using **Range** to cover a _range_ of cells</figcaption></figure> 

## <span class="ez-toc-section" id="Option_Explicit"></span>Option Explicit<span class="ez-toc-section-end"></span>

Finally a quick note about using **Option Explicit**. When this statement appears in a file it will check to make sure you&#8217;ve explicitly declared all variables in your code. If you try to use an undeclared variable name you&#8217;ll get an error when you try to compile/run the code. 

Let&#8217;s demonstrate this with an example and make some changes to the code you&#8217;re using:

<pre class="wp-block-code"><code>
Option Explicit

Sub my_range()
	Range("A5").Value = 10
	Range("A6").Value = "Hello World"
	Range("A1").Select

	'Dim my_cool_int As Integer
	my_cool_int = Range("A5").Value
	Range("D10").Value = my_cool_int

End Sub
</code></pre>

The first main difference to point out is the **Option Explicit** statement added at the beginning of the code. In some of the screenshots, this is commented out using inverted an inverted comma **&#8216;** be sure that you don&#8217;t do this.

The second difference is that we&#8217;ve put one of those inverted commas **&#8216;** at the start of line 9, just before **Dim**. This effectively stops the code from declaring **my\_cool\_int** as an **integer**. 

<div class="wp-block-columns has-2-columns">
  <div class="wp-block-column">
    <figure class="wp-block-image"><img src="http://markgingrass.com/wp-content/uploads/2019/08/compile-error.jpg" alt="compile error variable not defined" class="wp-image-1005" srcset="https://markgingrass.com/wp-content/uploads/2019/08/compile-error.jpg 1000w, https://markgingrass.com/wp-content/uploads/2019/08/compile-error-150x150.jpg 150w, https://markgingrass.com/wp-content/uploads/2019/08/compile-error-300x300.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/compile-error-768x768.jpg 768w" sizes="(max-width: 1000px) 100vw, 1000px" /><figcaption>The compile error</figcaption></figure>
  </div>
  
  <div class="wp-block-column">
    <p>
      <br /><br />If you run the code without the <strong>Option Explicit</strong> statement it will still work, and that might seem like a good thing for now but it will cause a lot of problems later on. Once you introduce the <strong>Option Explicit</strong> statement you will get an error because you&#8217;re trying to use an integer that you haven&#8217;t declared. Although this seems strict at first, it&#8217;s by far a safer way to code and is very useful for troubleshooting.
    </p>
  </div>
</div>

## <span class="ez-toc-section" id="Summary"></span>Summary<span class="ez-toc-section-end"></span>

In this lesson, you&#8217;ve learned about **objects**, using **range**, how to use the **debugger**, what **integers** are and how to use them, and lastly why using **Option Explicit** is a great idea.

I hope you found this useful and if you did please leave me a comment below to let me know!

[embedyt] https://www.youtube.com/watch?v=jgwDwl3PjFA[/embedyt]