---
title: 🤱Cradle to Grave ⚰R – Vectors and Functions – Lesson 4
author: mtgingrass
type: post
date: 2019-07-19T22:34:21+00:00
url: /2019/07/19/cradle-to-grave-r-lesson-4/
featured_image: http://markgingrass.com/wp-content/uploads/2019/07/Cradle-to-Grave-R-4.png
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
In lesson 3, we learned some more cool Markdown features in R. In this lesson, we&#8217;re going to look at Vectors and Functions.

<div id="ez-toc-container" class="ez-toc-v2_0_11 counter-hierarchy counter-decimal ez-toc-grey">
  <div class="ez-toc-title-container">
    <p class="ez-toc-title">
      Overview
    </p>
    
    <span class="ez-toc-title-toggle"><a class="ez-toc-pull-right ez-toc-btn ez-toc-btn-xs ez-toc-btn-default ez-toc-toggle"><i class="ez-toc-glyphicon ez-toc-icon-toggle"></i></a></span>
  </div><nav>
  
  <ul class="ez-toc-list ez-toc-list-level-1">
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-1" href="http://markgingrass.com/2019/07/19/cradle-to-grave-r-lesson-4/#Clear_the_Old_File" title="Clear the Old File">Clear the Old File</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-2" href="http://markgingrass.com/2019/07/19/cradle-to-grave-r-lesson-4/#Vectors_and_the_Matrix" title="Vectors and the Matrix">Vectors and the Matrix</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-3" href="http://markgingrass.com/2019/07/19/cradle-to-grave-r-lesson-4/#Assign_a_Vector_to_a_Variable" title="Assign a Vector to a Variable">Assign a Vector to a Variable</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-4" href="http://markgingrass.com/2019/07/19/cradle-to-grave-r-lesson-4/#Sums_with_Variables_and_Vectors" title="Sums with Variables and Vectors">Sums with Variables and Vectors</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-5" href="http://markgingrass.com/2019/07/19/cradle-to-grave-r-lesson-4/#Assign_New_Values_to_the_Old_Variable" title="Assign New Values to the Old Variable">Assign New Values to the Old Variable</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-6" href="http://markgingrass.com/2019/07/19/cradle-to-grave-r-lesson-4/#Useful_Shortcuts" title="Useful Shortcuts">Useful Shortcuts</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-7" href="http://markgingrass.com/2019/07/19/cradle-to-grave-r-lesson-4/#Mean_Average,_Length,_Cumsum_(Cumulative)" title="Mean Average, Length, Cumsum (Cumulative)">Mean Average, Length, Cumsum (Cumulative)</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-8" href="http://markgingrass.com/2019/07/19/cradle-to-grave-r-lesson-4/#Min,_Max,_Unique,_and_Sort_Functions" title="Min, Max, Unique, and Sort Functions">Min, Max, Unique, and Sort Functions</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-9" href="http://markgingrass.com/2019/07/19/cradle-to-grave-r-lesson-4/#Changing_How_the_Commands_Work" title="Changing How the Commands Work">Changing How the Commands Work</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-10" href="http://markgingrass.com/2019/07/19/cradle-to-grave-r-lesson-4/#Rounding_in_R" title="Rounding in R">Rounding in R</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-11" href="http://markgingrass.com/2019/07/19/cradle-to-grave-r-lesson-4/#Summary" title="Summary">Summary</a>
    </li>
  </ul></nav>
</div>

## <span class="ez-toc-section" id="Clear_the_Old_File"></span>Clear the Old File<span class="ez-toc-section-end"></span>

Before we start this lesson you&#8217;re going to need to clear the file that we&#8217;ve been using in lesson 3 out of the way.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-06-07-81-1024x634.png" alt="" class="wp-image-799" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-06-07-81-1024x634.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-06-07-81-300x186.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-06-07-81-768x475.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-06-07-81.png 1725w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Use the &#8216;x&#8217; symbol to close down your R Markdown file</figcaption></figure> 

To do this, simply click on the **x** button at the top of the R Markdown window (in the file-name tab) to close down that window. Once you&#8217;ve done this you&#8217;ll see the Console now fills up the space where it used to be. We&#8217;re back in the console, and there&#8217;s nothing in our Global Environment. If you want to re-open the R Markdown file, it&#8217;s located under the Files tab in the lower-left box, as the file name ending **.Rmd**

## <span class="ez-toc-section" id="Vectors_and_the_Matrix"></span>Vectors and the Matrix<span class="ez-toc-section-end"></span>

A little bit of history: R was originally built for statisticians, who deal with a lot of numbers and inevitably this means using matrices (the plural for matrix). Essentially a matrix is a large spreadsheet of data in rows and columns. The data contained in one vertical column of that matrix can be considered a **vector**. This could be a string of numbers, or bits of text, but not a combination of both. 

R is very powerful with regards to how we use **vectors**. Imagine that we want to multiply each number in a vector, say the first column in a matrix, by 2. Instead of having to program a loop to work through each of the thousand numbers in the column and multiply them by 2, individually, and store their new value again, we can simply use an R function that does this with the entire **vector** at once. This makes our life much easier.

## <span class="ez-toc-section" id="Assign_a_Vector_to_a_Variable"></span>Assign a Vector to a Variable<span class="ez-toc-section-end"></span>

Remember in the previous lessons where we assigned numbers to the letters X and Y? We&#8217;re going to do something similar here with a **vector** (a whole string of data from a matrix). In the Console, type:  
**number1 <- c(1,3,4,7,10,11,4)**  
And hit **enter**

Just before we discuss what this does, I want to make a point to say that you can use the equals sign **=** instead of the less than and dash symbols **<-** but I prefer to use the latter to avoid confusion with other uses of the equals sign. This is a good practice for you to follow too.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-12-07-90-1024x630.png" alt="" class="wp-image-804" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-12-07-90-1024x630.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-12-07-90-300x185.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-12-07-90-768x473.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-12-07-90.png 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>The values for &#8220;number1&#8221; are displayed in the Global Environment</figcaption></figure> 

As we&#8217;re in the Console, once you hit **enter** that line of code will run and the results will display in the Global Environment window. You can see the variable called **number1** takes on the values of **num** (which means numeric values), **[1:7]** (which means numbers 1 through 7 are stored as a single vector, because we entered 7 numbers in our code), and the numbers we stored are also displayed.

## <span class="ez-toc-section" id="Sums_with_Variables_and_Vectors"></span>Sums with Variables and Vectors<span class="ez-toc-section-end"></span>

We discussed before that you can complete simple calculations in the Console. Go to a new line, type **sum(2,2)** then hit **enter**. The Console will display a result of 4. You can try other sums too. The examples I use in the video are **sum (3,5)** and **sum(3,4,5)**. Unlike some other languages, you don&#8217;t need to define how many elements you&#8217;re using in the sum, because R can just take the &#8220;column&#8221; of numbers and complete the sum.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-12-07-80-1024x631.png" alt="" class="wp-image-805" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-12-07-80-1024x631.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-12-07-80-300x185.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-12-07-80-768x473.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-12-07-80.png 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Calculating the sum of our &#8220;number1&#8221; variable</figcaption></figure> 

You can even use the variable **number1** and calculate the sum of the numbers contained in it. Type **sum(number1)** and hit **enter** for a result of 40. If you want you can go ahead and check that the 7 numbers in the variable add up to 40.

You can do another cool trick and multiply the numbers inside the variable. Type **number1 * 2** and hit enter. The results display all the individual elements of our variable multiplied by 2. On the next line if you type **number1** again you&#8217;ll see that the results displayed are back to their old values. Why is that? It&#8217;s because we didn&#8217;t assign the new values to a variable, so they&#8217;re not stored in memory anywhere.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-16-1024x631.png" alt="" class="wp-image-806" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-16-1024x631.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-16-300x185.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-16-768x473.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-16.png 1724w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Using variables in sums in R</figcaption></figure> 

## <span class="ez-toc-section" id="Assign_New_Values_to_the_Old_Variable"></span>Assign New Values to the Old Variable<span class="ez-toc-section-end"></span>

To store the new values in memory, we&#8217;re going to use the same method as before. Type **number1 <- number1 * 2** and hit **enter**. You&#8217;ll notice we used the same variable twice in that one line of code, but don&#8217;t worry it won&#8217;t cause any problems. The Console will first figure out everything to the right-hand side of the **<-** and will then assign those values to the variable named on the left-hand side.

Take a look in the Global Environment once you&#8217;ve run that code line and see that the numbers have all doubled from their previous values.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-58-1024x597.png" alt="" class="wp-image-807" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-58-1024x597.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-58-300x175.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-58-768x448.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-58.png 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>The new doubled values for our &#8220;**number1**&#8221; variable</figcaption></figure> 

You can even double-check by typing **number1** again into the Console and seeing the results are different this time.

## <span class="ez-toc-section" id="Useful_Shortcuts"></span>Useful Shortcuts<span class="ez-toc-section-end"></span>

There&#8217;s a couple of useful shortcuts I want to point out to you that can make your work quicker and easier. 

The first is that the Console stores a kind of history of your previous commands which you can access by using the **up** and **down** cursor keys. If you&#8217;re on a new line and you use the **up** key, the previous command line you entered will auto-fill. Press up again and the one previous to that will appear, and so on. This can save you a lot of time when you&#8217;re using duplicated commands or typing very similar things with only small changes.

The next one is an auto-complete shortcut built into the program. A good example of use is when you&#8217;re typing a variable such as **number1**, just type the first couple of letters and then hit the **tab** key on your keyboard. This will bring up a list of common elements starting with **nu**&#8230; and you can select the one you want.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-60-1024x633.png" alt="" class="wp-image-808" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-60-1024x633.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-60-300x185.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-60-768x475.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-60.png 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>The **tab** key brings up an auto-complete list</figcaption></figure> 

## <span class="ez-toc-section" id="Mean_Average,_Length,_Cumsum_(Cumulative)"></span>Mean Average, Length, Cumsum (Cumulative)<span class="ez-toc-section-end"></span>

If you want to find the **mean** (average) of any set of numbers you can again simply type **mean(number1)** and hit **enter** &#8211; in our example, you can see this gives a result of 11.42857. This is the mean average of all the values stored in the variable **number1**.

Another command, **length**, requires a little more explanation. Type out **length(number1)** and press **enter**. The result, in this case, is 7. You can understand this by seeing that there are 7 elements or values contained in the **number1** variable.

You can also perform a cumulative sum of all the numbers in the variable by using the command **cumsum(number1)**. And the results you should get are 2, 8, 16, 30, 50, 72, 80. <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-41-1024x594.png" alt="" class="wp-image-809" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-41-1024x594.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-41-300x174.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-41-768x446.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-13-07-41.png 1726w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Length, cumsum, min, max, unique and sort functions in R</figcaption></figure> 

## <span class="ez-toc-section" id="Min,_Max,_Unique,_and_Sort_Functions"></span>Min, Max, Unique, and Sort Functions<span class="ez-toc-section-end"></span>

Some more functions to try are:

**min(number1)**  
To find the lowest value 

**max(number1)**  
To find the highest value

**unique(number1)**  
To find the unique values

**sort(number1)**  
To sort the values into order

## <span class="ez-toc-section" id="Changing_How_the_Commands_Work"></span>Changing How the Commands Work<span class="ez-toc-section-end"></span>

To add another layer of detail, I want to explain how we can change the way the **sort** command works.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-15-07-28-1024x629.png" alt="" class="wp-image-810" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-15-07-28-1024x629.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-15-07-28-300x184.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-15-07-28-768x472.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-15-07-28.png 1723w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Extra parameters of the command are shown in the yellow box</figcaption></figure> 

On a new line, type the sort command again:  
**sort(number1)**  
BUT DON&#8217;T MOVE your cursor or press enter after you&#8217;ve typed the number 1 and you&#8217;ll see a yellow pop-up showing us some more details about the **sort** command: _sort(x, decreasing = FALSE, &#8230;)_

We&#8217;re going to break this down and cover the first two parts **x** and **decreasing = FALSE**.

The **x** is a piece of data, such as a number or our variable **number1**, so if we only enter this part inside the parenthesis then the program will assume all the standard rules apply when you run the code.

If you then enter a comma **,** and then hit **tab** you&#8217;ll see the autocomplete list with some suggestions for the next part of the command. These autocomplete suggestions are also accompanied by short explanations of their purpose. Go down the list to **decreasing =** and hit **enter** and this will insert that part of the command. Lastly, type **TRUE** in capitals. The whole line should look like this:  
**sort(number1, decreasing = TRUE)**<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-15-07-36-1024x611.png" alt="" class="wp-image-811" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-15-07-36-1024x611.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-15-07-36-300x179.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-15-07-36-768x458.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-15-07-36.png 1724w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>The autocomplete suggestions will have explanations</figcaption></figure> 

Now when you hit **enter** again to run that line of code, the result will be the numbers sorted in decreasing order.

## <span class="ez-toc-section" id="Rounding_in_R"></span>Rounding in R<span class="ez-toc-section-end"></span>

Another example of how we can change how things work is with the **round** command. Try typing **round(2.3456)** and notice the yellow pop-up box showing _round(x, digits = 0)_. This means the standard rounding would take the number to 0 digits. We can override the default by typing **round(2.3456, digits = 2)** and hitting **enter** to get a result of 2.35, rounded to 2 decimal places. You can try finding the **digits =** command by using the **tab** key to search for autocomplete suggestions while you&#8217;re typing that line out if you prefer.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-15-07-86-1024x625.png" alt="" class="wp-image-812" srcset="https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-15-07-86-1024x625.png 1024w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-15-07-86-300x183.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-15-07-86-768x469.png 768w, https://markgingrass.com/wp-content/uploads/2019/07/AwesomeScreenshot-Cradle-to-Grave-R-Vectors-and-Functions-Lesson-4-YouTube-2019-07-29-15-07-86.png 1723w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Use &#8216;**x =**&#8216; if typing out of the normal order</figcaption></figure> 

You can actually construct these command lines in a different order so long as you use **x =** to define the data. The following examples are correct and will give you no problems:  
**round(2.3456, digits = 3)**  
**round(digits = 3, x = 2.3456)**

  
The next example is wrong, see if you can figure out why:  
**round(3,2.3456)**

Did you catch why it wouldn&#8217;t work? Because we entered things out of order and didn&#8217;t define which was data **x** and which was **digits**, the program thought that &#8216;3&#8217; was the data, and rounded it to 3.

## <span class="ez-toc-section" id="Summary"></span>Summary<span class="ez-toc-section-end"></span>

You should now know some more commands in R such as **round**, **sort**, **min**, **max**, plus others. Not only that but you now know how to alter the details of how these commands work.

I hope you found the lesson useful and if you did please let me know in the comments!

[embedyt] https://youtu.be/XZp9B3n4jPs[/embedyt]