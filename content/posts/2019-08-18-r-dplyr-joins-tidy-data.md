---
title: R DPLYR Joins – Tidy Data
author: mtgingrass
type: post
date: 2019-08-18T10:54:33+00:00
url: /2019/08/18/r-dplyr-joins-tidy-data/
featured_image: http://markgingrass.com/wp-content/uploads/2019/08/r-dplyr-joins-thumbnail.jpg
classic-editor-remember:
  - block-editor
tap_disable_autolinker:
  - no
tap_autolink_inside_heading:
  - global
tap_autolink_random_placement:
  - global
categories:
  - R
tags:
  - dplyr
  - programming
  - r
  - rprogramming

---
This is a quick lesson on how to use the **DPLYR** functions in R such as **left_join** and **right_join** and **inner_join**.

<div id="ez-toc-container" class="ez-toc-v2_0_11 counter-hierarchy counter-decimal ez-toc-grey">
  <div class="ez-toc-title-container">
    <p class="ez-toc-title">
      Overview
    </p>
    
    <span class="ez-toc-title-toggle"><a class="ez-toc-pull-right ez-toc-btn ez-toc-btn-xs ez-toc-btn-default ez-toc-toggle"><i class="ez-toc-glyphicon ez-toc-icon-toggle"></i></a></span>
  </div><nav>
  
  <ul class="ez-toc-list ez-toc-list-level-1">
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-1" href="http://markgingrass.com/2019/08/18/r-dplyr-joins-tidy-data/#Getting_Started" title="Getting Started">Getting Started</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-2" href="http://markgingrass.com/2019/08/18/r-dplyr-joins-tidy-data/#Install_and_Load_the_DPLYR_Library" title="Install and Load the DPLYR Library">Install and Load the DPLYR Library</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-3" href="http://markgingrass.com/2019/08/18/r-dplyr-joins-tidy-data/#Join_the_Data_Frames" title="Join the Data Frames">Join the Data Frames</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-4" href="http://markgingrass.com/2019/08/18/r-dplyr-joins-tidy-data/#Try_a_rightjoin" title="Try a right_join">Try a right_join</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-5" href="http://markgingrass.com/2019/08/18/r-dplyr-joins-tidy-data/#Lastly_the_innerjoin" title="Lastly the inner_join">Lastly the inner_join</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-6" href="http://markgingrass.com/2019/08/18/r-dplyr-joins-tidy-data/#Recap" title="Recap">Recap</a>
    </li>
  </ul></nav>
</div>

## <span class="ez-toc-section" id="Getting_Started"></span>Getting Started<span class="ez-toc-section-end"></span>

You&#8217;ll need to copy and paste the below code into RStudio to follow along with this tutorial.

<pre class="wp-block-code"><code>
left_data = data.frame(custId = c(1,2,3,4,5,6,7), 
                 Area = c("West","West","West","East","East","East", "North"))


right_data = data.frame(CustomerId = c(2, 4, 6),
                 Risk = c(rep("High", 2), 
                           rep("Low", 1)))

library(dplyr)

left_join(left_data, right_data, by = c("custId" = "CustomerId"))
right_join(left_data, right_data, by = c("custId" = "CustomerId"))
inner_join(left_data,right_data, by = c("custId" = "CustomerId"))
</code></pre>

The code contains two data frames named **left_data** and **right_data**. 

**left_data** has two different columns. The first column is called **custId** and has the values 1 through 7 down the rows, and the 2nd column named **Area** has 7 different compass directions listed down its rows.

**right_data** also has two columns. The first is **CustomerId** and has values 2, 4, and 6. The 2nd column is called **Risk** and has the values High, High, and Low.  
  
At first glance of lines 7 and 8 of the code it might look like there are only two values, just &#8216;High&#8217; and &#8216;Low&#8217;. So where did the 2nd &#8216;High&#8217; come from?

<pre class="wp-block-code"><code>
             Risk = c(rep("High", 2),
</code></pre>

It arises because we used the **rep** command, which means repeat. Then we specified the command to repeat, then how many times. So, in this case, we want to **rep** **High** **2** times and then move onto the next value. 

You can see how all of this is displayed in individual data tables in the screenshot below.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/left-and-right-data-tables-1024x596.jpg" alt="" class="wp-image-970" srcset="https://markgingrass.com/wp-content/uploads/2019/08/left-and-right-data-tables-1024x596.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/08/left-and-right-data-tables-300x174.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/left-and-right-data-tables-768x447.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/08/left-and-right-data-tables.jpg 1728w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>**left-data** and **right_data** shown in tables</figcaption></figure> 

## <span class="ez-toc-section" id="Install_and_Load_the_DPLYR_Library"></span>Install and Load the DPLYR Library<span class="ez-toc-section-end"></span>

In order to join our data frames together, we&#8217;ll need to use a library in RStudio called **dplyr**. To do this enter the following code on line 10:

<pre class="wp-block-code"><code>
library(dplyr)
</code></pre>

If you don&#8217;t have **dplyr** installed you can install it as follows. Go to the **Packages** tab in the lower-right of RStudio. Then click **Install**, and in the new popup window type **dplyr**. Make sure to check the **Install dependencies** box and hit the **Install** button.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/install-dplyer-1024x615.jpg" alt="" class="wp-image-973" srcset="https://markgingrass.com/wp-content/uploads/2019/08/install-dplyer-1024x615.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/08/install-dplyer-300x180.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/install-dplyer-768x461.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/08/install-dplyer.jpg 1448w" sizes="(max-width: 1024px) 100vw, 1024px" /></figure> 

## <span class="ez-toc-section" id="Join_the_Data_Frames"></span>Join the Data Frames<span class="ez-toc-section-end"></span>

Next we&#8217;re going to join the data we have. Begin on line 12 by typing the command **left_join()** and you&#8217;ll see that without filling in any other details you&#8217;ll get the yellow box which guides us on how to use this command correctly.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/join-code2-1024x581.jpg" alt="" class="wp-image-975" srcset="https://markgingrass.com/wp-content/uploads/2019/08/join-code2-1024x581.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/08/join-code2-300x170.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/join-code2-768x436.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/08/join-code2.jpg 1704w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>The guide for using the **left_join** command</figcaption></figure> 

The **x** and **y** in the guide are the two objects that you want to join, and the rest is more or less how you&#8217;d like to join them. Complete the code as follows:

<pre class="wp-block-code"><code>
left_join(left_data, right_data)
</code></pre>

Once you run this line of code in RStudio you&#8217;ll get an error in the console telling you that you&#8217;re missing the **by** part of the command and that the data sources have no common variables. 

The first way is we can make sure **left_data** and **right_data** share a common variable. To do this I can rename **CustomerId** on line 6 to **custId**.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/common-variables-1024x469.jpg" alt="" class="wp-image-978" srcset="https://markgingrass.com/wp-content/uploads/2019/08/common-variables-1024x469.jpg 1024w, https://markgingrass.com/wp-content/uploads/2019/08/common-variables-300x137.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/common-variables-768x352.jpg 768w, https://markgingrass.com/wp-content/uploads/2019/08/common-variables.jpg 1567w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>x and y need a common variable to allow them to join</figcaption></figure> 

<div class="wp-block-columns has-2-columns">
  <div class="wp-block-column">
    <p style="text-align:left">
      <br /><br />Now when we run the code the data will join and you&#8217;ll see the results in the console. Only lines 2, 4, and 6 of the results will have a High or Low assigned to them. Lines 1, 3, 5, and 7 will be filled with <strong><NA></strong> because we had no data to combine into these rows.
    </p>
  </div>
  
  <div class="wp-block-column">
    <figure class="wp-block-image"><img src="http://markgingrass.com/wp-content/uploads/2019/08/table-of-7.jpg" alt="" class="wp-image-979" srcset="https://markgingrass.com/wp-content/uploads/2019/08/table-of-7.jpg 766w, https://markgingrass.com/wp-content/uploads/2019/08/table-of-7-300x248.jpg 300w" sizes="(max-width: 766px) 100vw, 766px" /><figcaption>Results of combining our data</figcaption></figure>
  </div>
</div>

The other way to join the data is to tell RStudio that we&#8217;ll use two variables that have different names. For this, change line 12 to introduce the **by** part of the command:

<pre class="wp-block-code"><code>
left_join(left_data, right_data, by = c("custId" = "CustomerId"))
</code></pre>

This specifies in the code that we&#8217;re tying these two together and treating them as the same when the data is merged. It&#8217;s important to get the case of all your letters correct. For example, using **custID** instead of **custId** will give an error. 

## <span class="ez-toc-section" id="Try_a_rightjoin"></span>Try a right_join<span class="ez-toc-section-end"></span>

At the start of this lesson I mentioned that there are several different joins we can perform on the data. The **left_join** was only one, now we want to try a **right_join** and see what different results we get.

<pre class="wp-block-code"><code>
right_join(left_data, right_data, by = c("custId" = "CustomerId"))
</code></pre>

<div class="wp-block-columns has-2-columns">
  <div class="wp-block-column">
    <p>
      <br />To do this, use the same code from line 12 but start it with <strong>right_join</strong> instead of left_join. When you run this line it now means that the <strong>right_data</strong> is being used as the template that the results are made from. This means there will still be 2 columns, but only 3 rows instead of 7. The odd-numbered rows will be discarded and not shown in the results.
    </p>
  </div>
  
  <div class="wp-block-column">
    <figure class="wp-block-image"><img src="http://markgingrass.com/wp-content/uploads/2019/08/right-join2.jpg" alt="" class="wp-image-983" srcset="https://markgingrass.com/wp-content/uploads/2019/08/right-join2.jpg 1020w, https://markgingrass.com/wp-content/uploads/2019/08/right-join2-300x174.jpg 300w, https://markgingrass.com/wp-content/uploads/2019/08/right-join2-768x446.jpg 768w" sizes="(max-width: 1020px) 100vw, 1020px" /><figcaption>Our right_join only has 3 rows</figcaption></figure>
  </div>
</div>

We can perform a couple of experiments here to find out how the **left_data** and **right_data** interact with each other when we join them in various ways. For example, try deleting the 2nd row from our data frame on lines 2 and 3 of the original code. That should now look like this, with the number 2 deleted from line 2 and one of the &#8220;West&#8221; entries deleted from line 3:

<pre class="wp-block-code"><code>
left_data = data.frame(custId = c(1,3,4,5,6,7), 
                 Area = c("West","West","East","East","East", "North"))
</code></pre>

Compare this to the original code at the top of the page if you&#8217;re not sure what to delete. 

Now try running your **left_join** and **right_join** again one after another and notice the differences from earlier. 

<div class="wp-block-columns has-2-columns">
  <div class="wp-block-column">
    <figure class="wp-block-image"><img src="http://markgingrass.com/wp-content/uploads/2019/08/left-join-3.jpg" alt="" class="wp-image-986" srcset="https://markgingrass.com/wp-content/uploads/2019/08/left-join-3.jpg 550w, https://markgingrass.com/wp-content/uploads/2019/08/left-join-3-150x150.jpg 150w, https://markgingrass.com/wp-content/uploads/2019/08/left-join-3-300x300.jpg 300w" sizes="(max-width: 550px) 100vw, 550px" /><figcaption>Our new <strong>left_join</strong></figcaption></figure> 
    
    <p>
    </p>
  </div>
  
  <div class="wp-block-column">
    <figure class="wp-block-image"><img src="http://markgingrass.com/wp-content/uploads/2019/08/right-join-3.jpg" alt="" class="wp-image-987" srcset="https://markgingrass.com/wp-content/uploads/2019/08/right-join-3.jpg 550w, https://markgingrass.com/wp-content/uploads/2019/08/right-join-3-150x150.jpg 150w, https://markgingrass.com/wp-content/uploads/2019/08/right-join-3-300x300.jpg 300w" sizes="(max-width: 550px) 100vw, 550px" /><figcaption>Our new <strong>right_join</strong></figcaption></figure> 
    
    <p>
    </p>
  </div>
</div>

This time around, in the left_join we only get 6 columns of results and <NA> is still placed in the relevant rows where there&#8217;s no corresponding entry in our **right_data**. And just like before, the new **right_join** has 3 rows, but this time the results contain **<NA>** in place of the no 2 row that we deleted from our **left_data**.

## <span class="ez-toc-section" id="Lastly_the_innerjoin"></span>Lastly the inner_join<span class="ez-toc-section-end"></span>

Let&#8217;s create another line just the same as the previous two but starting with **inner_join** instead:

<pre class="wp-block-code"><code>
inner_join(left_data, right_data, by = c("custId" = "CustomerId"))
</code></pre>

Run this line and the results will be different again, this time the only rows displayed are the ones that are common to both data sets. A good way to imagine this is like a Venn diagram where two circles overlap and the results display only the parts in both circles.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/venn-1024x576.png" alt="dplyr venn inner_join" class="wp-image-993" srcset="https://markgingrass.com/wp-content/uploads/2019/08/venn-1024x576.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/venn-300x169.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/venn-768x432.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/venn.png 1920w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption> **inner_join**&nbsp;shows only the common elements of both </figcaption></figure> 

## <span class="ez-toc-section" id="Recap"></span>Recap<span class="ez-toc-section-end"></span>

In this lesson, you&#8217;ve learned how to use R DPLYR left\_join, right\_join and inner_join to combine two data sets. You&#8217;ve also learned how to combine data sets that have no common variable, and how the results will be affected by the different types of join methods.

I hope you&#8217;ve found this lesson useful and if you have please let me know in the comments below!

[embedyt] https://www.youtube.com/watch?v=NE_GX8PkWUg[/embedyt]