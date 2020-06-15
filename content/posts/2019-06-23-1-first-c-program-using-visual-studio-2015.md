---
title: 1. First C++ Program using Visual Studio 2015
author: mtgingrass
type: post
date: 2019-06-23T20:04:40+00:00
url: /2019/06/23/1-first-c-program-using-visual-studio-2015/
featured_image: http://markgingrass.com/wp-content/uploads/2019/06/maxresdefault.jpg
categories:
  - C++
  - Programming
tags:
  - basics
  - c++
  - programming
  - tutorial

---
<div id="ez-toc-container" class="ez-toc-v2_0_11 counter-hierarchy counter-decimal ez-toc-grey">
  <div class="ez-toc-title-container">
    <p class="ez-toc-title">
      Overview
    </p>
    
    <span class="ez-toc-title-toggle"><a class="ez-toc-pull-right ez-toc-btn ez-toc-btn-xs ez-toc-btn-default ez-toc-toggle"><i class="ez-toc-glyphicon ez-toc-icon-toggle"></i></a></span>
  </div><nav>
  
  <ul class="ez-toc-list ez-toc-list-level-1">
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-1" href="http://markgingrass.com/2019/06/23/1-first-c-program-using-visual-studio-2015/#Intro" title="Intro">Intro</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-2" href="http://markgingrass.com/2019/06/23/1-first-c-program-using-visual-studio-2015/#Code" title="Code">Code</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-3" href="http://markgingrass.com/2019/06/23/1-first-c-program-using-visual-studio-2015/#Detailed_Explanation" title="Detailed Explanation">Detailed Explanation</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-4" href="http://markgingrass.com/2019/06/23/1-first-c-program-using-visual-studio-2015/#TECH_GEAR_I_USE_DAILY" title="TECH GEAR I USE DAILY">TECH GEAR I USE DAILY</a>
    </li>
  </ul></nav>
</div>

## <span class="ez-toc-section" id="Intro"></span>Intro<span class="ez-toc-section-end"></span>

There are a couple of methods people use to write and compile code in C++

  * The first way is to write your program in a text editor and compile later.
  * The second method is to use an Integrated Development Environment.

The “Hello World” program is the first program most people learn. In fact, almost every single programming language tutorial will start off with a &#8220;Hello World&#8221; program. Don&#8217;t get upset if the World never responds back.

> [Comprehensive C++ Course with Coupon][1]

I recommend reading any of the [Deitel & Deitel books like this one.][2] I grew up reading the 2nd or third edition and continue to purchase newer editions as the years go by.

The video below will guide you through your first program. My Udemy course zooms in so you can read the code better and also contains a text version of the code.

<iframe title="🔥1. First C++ Program using Visual Studio 2015 IDE - write, compile, build, run! 🔥" width="1200" height="675" src="https://www.youtube.com/embed/_iHMXDzyrhk?feature=oembed" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## <span class="ez-toc-section" id="Code"></span>Code<span class="ez-toc-section-end"></span>

<pre class="lang:default decode:true  ">//MyFirstProgramisCoo.cpp : Devines the entry point for the console application.
//This is a comment
//More comments

#include "stdafx.h"
#include

int main()
{

std::cout &lt;&lt; "Hello world!";
std::cout &lt;&lt; "more stuff";

int pause;
pause = 0;
std::cin &gt;&gt; pause;

return 0;
}</pre>

## <span class="ez-toc-section" id="Detailed_Explanation"></span>Detailed Explanation<span class="ez-toc-section-end"></span>

\*\*Lines 1 &#8211; 3\*\* are comment lines. Anything you put after the double forward slash \_//\_ will not be compiled as code. Use this to add readability to your code. Once the code is compiled, these lines are ignored and they are not part of your final program.

\*\*Line 5\*\* is a unique line required for Visual Studio only. If you are not using Visual Studio, delete line 5. All this is doing is helping compile time by including precompile headers.What this means is that it takes a lot of processing time to generate a basic C++ program. Instead of waiting, Microsoft has included a way to speed up the time by &#8220;pre-compiling&#8221; parts of the program. This does add some bloat to the program, but for now, as a beginner, it is best to just use it.

\*\*Line 11-12\*\* are printing to the designated output, the <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a>. Think of std::cout as &#8220;Standard See Out,&#8221; as in, &#8220;Seeing out to the <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a>. &#8220;C-Out.&#8221; The two less than symbols is basically a way to push the text to the right of it, to the \_output\_ object &#8211; \_cout.\_ This will become more clear later. Next is the text wrapped in quotes that you want to be printed. Finally, a semicolon will end the statement.

\*\*Line 14\*\* tells the compiler that you want to store an integer variable. It creates space in memory and assigns it the variable name &#8220;pause.&#8221; At this point, &#8220;pause&#8221; is not initialized, it has not been assigned a value. This is dangerous because we might try to use this variable without ever assigning it anything leading to unpredictable values &#8211; after all, how do we know the memory location assigned to &#8220;pause&#8221; didn&#8217;t have data in there already?

\*\*Line 15\*\* will assign the variable &#8220;pause&#8221; to a value of &#8220;0.&#8221;

\*\*Line 16\*\* is the opposite of the \_std::cout.\_ It is &#8220;See In&#8221; or \_C-In.\_ Can you guess what it does? It &#8220;sees&#8221; in an input to the input device, i.e. your keyboard and it assigns the input to the variable &#8220;pause.&#8221; Notice the two greater than signs \_>>.\_ Think of that as pushing things to the right into that variable. It pushes the keystroke from the keyboard into the variable \_pause.\_

The pause portion of this is important for this reason. C++ is going to do exactly what we, as programmers, tell it. Without the pause, the program will appear on the <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a>, print things to the <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a>, then close. We never told it to stay open, or display for seconds then do something else. Without the pause portion, it simply shuts the program down after execution and the user/customer never gets to see the display.

Finally, the &#8220;return 0&#8221; statement. This tells the operating system that it has ended the program. The &#8220;O&#8221; is a parameter that can mean many different things. For now, since you are using Windows anyway, a return 0 means exit successfully.

Comment below with any questions or tips you want to add. I&#8217;m sure I will get some comments about the use of scoping operations &#8220;::&#8221; and std. Let&#8217;s hear it!

## <span class="ez-toc-section" id="TECH_GEAR_I_USE_DAILY"></span>TECH GEAR I USE DAILY<span class="ez-toc-section-end"></span>

➔ I work on a <a class="thirstylink" target="_blank" title="MacBook Pro Amazon" href="https://amzn.to/2JsJ4Ab" data-linkid="519" data-shortcode="true">MBP</a>: https://amzn.to/2XxeBsG  
➔ <a class="thirstylink" target="_blank" title="Blue Yeti" href="https://amzn.to/2IheZTG" data-linkid="497" data-shortcode="true">Blue Yeti</a> Mic: https://amzn.to/2IheZTG  
➔ <a class="thirstylink" target="_blank" title="Swissgear 1900" href="https://amzn.to/2XByRtO" data-linkid="510" data-shortcode="true">Swissgear</a> Backpack: https://youtu.be/VTTnRMyFkB8   
➔ mTuber for Title Effects : motionvfx.sjv.io/3M3KM  
➔ mArrows for animated arrows: motionvfx.sjv.io/9B3oe  
➔ MICROPHONE &#8211; https://amzn.to/2LYfJkr  
➔ BACKPACK &#8211; https://amzn.to/2Ep4uez  
➔ <a class="thirstylink" target="_blank" title="Green Screen Amazon" href="https://amzn.to/2JVzMgP" data-linkid="511" data-shortcode="true">GREEN SCREEN</a> &#8211; https://amzn.to/2JVzMgP  
➔ <a class="thirstylink" target="_blank" title="Tripod Amazon" href="https://amzn.to/2Eo2wv4" data-linkid="512" data-shortcode="true">TRIPOD</a> &#8211; https://amzn.to/2Eo2wv4

 [1]: https://www.udemy.com/cplusplusintro/?couponCode=SHOPCPP0001
 [2]: https://amzn.to/2FpOA4k