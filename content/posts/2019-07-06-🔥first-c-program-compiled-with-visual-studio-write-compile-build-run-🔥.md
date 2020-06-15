---
title: 🔥First C++ Program Compiled with Visual Studio – write, compile, build, run! 🔥
author: mtgingrass
type: post
date: 2019-07-06T16:07:23+00:00
url: /2019/07/06/🔥first-c-program-compiled-with-visual-studio-write-compile-build-run-🔥/
featured_image: http://markgingrass.com/wp-content/uploads/2019/07/maxresdefault-3.jpg
tap_disable_autolinker:
  - no
tap_autolink_inside_heading:
  - global
tap_autolink_random_placement:
  - global
categories:
  - C++
  - Programming

---
[embedyt] https://www.youtube.com/watch?v=E-4SvjqChiI[/embedyt]
  
The enhanced version of my first C++ program. The paid version in the description below. Write, compiler, build and run your first C++ Program using Visual Studio 2015. You will be building your first &#8220;Hello World&#8221; program in C++. Technically, you will be building a Win32 Console Application. Learn how to create a &#8220;pause&#8221; section so your program does not close until you choose it to.

Click the link for a $10.99 C++ Coupon Code. Limited time offer.

Some of the hardest parts of beginning to program is figuring out how to configure your project and getting that first program running. So dive right in and get to learning. Comment below with your feedback.
  
My all-time favorite [book for C++ programming][1].

<p class="p1">
  <span class="s1">I&#8217;m using Microsoft visual studio to write the code and compile it and run the actual code. You can use a notepad any way you want to compile it. You&#8217;re going to have to use a compiler. A visual studio is very good at putting everything into an integrated development environment. In fact, that&#8217;s what this is called an ide integrated development environment. When you first open up Microsoft visual studio, you might see a page similar to this. What I&#8217;m going to do is start a new project, which you can see right here or you can go to file new and click on project here and of course control shift and we&#8217;ll do the same thing. So I clicked on that. On the left hand side you see templates go to a visual c plus plus and then scroll down to win 32 and click on win 32 console application.</span>
</p>

<p class="p1">
  <span class="s1">There&#8217;s lots of options in here. Uh, Microsoft Foundation classes would be this maybe for creating some gooey interfaces, but we&#8217;re going to stick to the console application when 32 version, a name your project, whatever you want. My I first program is cool. Whatever you want to name it. You have a location here where it&#8217;s going to be storing all the files and the solution name is the same as your project name. Hit Okay for now, just kind of click through this. This is just telling you what you&#8217;re about to create. Click next application settings. You want to keep the settings the way they are for now, so just go ahead and click finish and as you can see when you do finish this, it&#8217;s going to come up with uh, this right here. The my first program is cool dot CPP file. It&#8217;s going to be displayed here and if you have more files there&#8217;ll be tabbed over and you can have multiple files within a c plus plus program that you&#8217;re creating and we&#8217;re going to get to that eventually.</span>
</p>

<p class="p1">
  <span class="s1">As you can see that some of this stuff has already put here for you, you didn&#8217;t put that there. And same with over here on the left. This is your solution explorer. As you gain experience and you add files to your program, they&#8217;re all going to be neatly organized over here on the left hand side. For now, just know that this header file, whenever you see a number include that&#8217;s a header file or a pre compiled header, the STD, ASX dot h. You just need that for this environment that you&#8217;re working with. It is not standard for all c plus plus, but it is for visual studio. Uh, some older versions of visual studio. You do not need to include this. Don&#8217;t worry about the specifics for now, but we are going to include another pre compiled header called include io stream, just like, and you&#8217;ve got to put them in the brackets.</span>
</p>

<p class="p1">
  <span class="s1">If you don&#8217;t put them in the brackets, um, it&#8217;ll default to a default directory if you put them in the brackets. It knows to go to a certain area where the programs were loaded and Iowa stream or c standard library. There&#8217;s all kinds of libraries and it knows where it affects those libraries using the bracket or the, I&#8217;m sorry, the a last and greatest greater than symbols here. If he used the quotes as up here, it&#8217;s gonna look in the directory that the project is in for that actual file, which you can see our head of foul STD, a f X. Dot. H is same here. It was automatically created for us, but it&#8217;s also going to be in that directory where our files are located. The other stream is not and you won&#8217;t see I always stream over here. Okay. So every c plus plus program starts off usually with the pre compiled headers, the number signed or the pound that they might call it include.</span>
</p>

<p class="p1">
  <span class="s1">Um, up here you have comments, anything with the double folds lashes as a comment. This is a comment you can add more comments cause white space doesn&#8217;t matter. And there&#8217;s another way to create comments. So I&#8217;ll just show you that now is using the forward slash star and then this integrated development environment, Microsoft visual studio. Once I did forward slash star, it automatically put the star forward slash which ends the comment. But this gives you the opportunity to do a multiline comment. So this is a multi line com so you can have comments like that. You can have them as long as you want. White space does not matter and c plus plus, but the the point of this is to show you that you can have multi lines using this notation as well forward slash, star and then to end it start forward slash and forward slash forward slash as a single line comment.</span>
</p>

<p class="p1">
  <span class="s1">Every program usually starts off with something similar to this as a beginner programmer and c plus plus I o stream stands for input output streams and we&#8217;re going to talk heavily on that as we go forward. Every c plus plus program has a main function. That&#8217;s what you see here. This, this entire area here is the main function. Now we didn&#8217;t talk about functions but maybe you&#8217;re familiar with mathematical functions or just functions in general for other programming languages. I&#8217;m going to give you the very brief basic idea of what this function is and what our functions and then we&#8217;ll create our first program. As you can see, there&#8217;s an int and it&#8217;s highlighted in blue because of my id. He knows that that&#8217;s a reserved keyword for c plus plus. So it&#8217;s going to highlight it for blue in blue for us or the name of the function is main and it starts off with an open and a closed apprenticey and then an open bracket and then eventually it&#8217;s going to have a close bracket.</span>
</p>

<p class="p1">
  <span class="s1">Everything between the open and closed bracket is part of your main function. It&#8217;s part of the main functions, scope. Anything outside that bracket is not part of the main function or the main function. Scope integer is a variable. In other words, you can store data in an integer. Uh, every function does not have to return a value, but most do. And what this function does, it returns the number zero and where it&#8217;s returning, that zero in this case is back to the operating system itself. The operating system will know that this program function correctly. When it returns zero to the operating system, it knows how to deal with the memory allocation, all the memory pieces, everything that was loaded into memory, it knows they can now override those, etc. Etc. So just like in mathematics, you can only have one output of a function, so you can return only one thing.</span>
</p>

<p class="p1">
  <span class="s1">And the way that they&#8217;re declared integer main, just like that, Maine&#8217;s going to return one integer function. Anyways, let&#8217;s get started with a simple program because the hardest thing about your first c plus plus program is compiling it and trying to figure out why it does or does not compile correctly. What does compile even mean? Like it&#8217;s just a very, that first program is the hardest one. After you get that to work, you can Google everything and you&#8217;ll realize you&#8217;re just missing one piece of the puzzle that was stopping you from doing this a long time ago. Anyways, so we&#8217;re gonna start off with a typical hello world. And what we do is we use a standard template library, standard c out, and then the lesson lesson, symbol and quotes, hello world.</span>
</p>

<p class="p1">
  <span class="s1">And in Microsoft visual studio, it&#8217;ll automatically put that end quote in there. So I hit tab and it brings me out of that quote. Every c plus plus line of code has to end with a semi-colon for the most part. So let&#8217;s go ahead and put that semi-colon in there telling the program or the the compiler that this is the end of the line. Now this is a fully functional program here, but I&#8217;m going to show you something that&#8217;s going to cause us problems to run a program. You can either, usually you&#8217;d want to go to debug and go to start debugging or other ideas might have them labeled differently or in different menus. Usually almost all the visual studios have the f five key as a shortcut and you can just click at five and it&#8217;s gonna start debugging and run in your program.</span>
</p>

<p class="p1">
  <span class="s1">So let&#8217;s go ahead and click on start debugging and, and it&#8217;s going to tell you that you want, you need to build this program before you can debug it. Would you like to build it? Yes, I&#8217;m going to build it. It&#8217;s going to put all the pieces together to make this a function in program. And you saw something just pop up and it disappeared. And the reason why I disappeared, let me go through the code here for you. When program was first executed, it goes into this integer, your main function and what does it do? It sees out STD, colon, colon, c out, c out. That&#8217;s how we s we say it like s e e dash out. It&#8217;s seeing out hello world through the <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a>. It&#8217;s a stream, see out as a stream. And once it does that, the next line of code is return zero exit successfully from this program.</span>
</p>

<p class="p1">
  <span class="s1">So what it did was it opened the program, it printed hello world and then it exited before you can even really see hello world. So a little work around while you&#8217;re editing your programs and playing around and learning is to create an input where it&#8217;s going to wait for you to do something before it closes. So let&#8217;s, let&#8217;s do that cause so you can get your first program going and you can start playing around. Uh, so standard c out is a stream that sees outward, like out to the <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a>, out to a printer, out to a server. And then you have standard see in with the notice the for the greater than symbol. So the less than one is called the extraction and then what the other one&#8217;s called an insertion operator. Standard CN we want to see in a variable, but we didn&#8217;t create the variable yet.</span>
</p>

<p class="p1">
  <span class="s1">And C plus plus before you can use a variable, you have to create that variable or initialize. So I&#8217;m gonna make room and memory and I&#8217;m going to say I have an integer variable called pause. Now it&#8217;s a name that I just chose and I&#8217;m going to set it equal to nothing. So I&#8217;m going to put semi-colon there. I could&#8217;ve said pause equals zero, it doesn&#8217;t matter. I&#8217;m going to override that anyways. Um, you can initialize it that way. You can also initialize, when I say initialize, I mean give it a start in value because right now the way it is, integer pause, um, it&#8217;s creating a space for an integer. Data type in memory is creating that space, but it&#8217;s not filling it with anything. So if those address, the address of pause was to be used by some sort of other program that&#8217;s running, it&#8217;s um, it&#8217;s gonna look at that data and it&#8217;s going to show random data that was in that memory location before anyways, more on that later down the road.</span>
</p>

<p class="p1">
  <span class="s1">But it is nice to always initialize your variables just so you don&#8217;t have that problem. So if another, another program was accessing that, that memory location, it would actually read the number zero. Now instead of random bits, because we initialized pause equals zero and the equals operator is an assignment operator. It will assigned what&#8217;s on the right to the variable that&#8217;s on the left. So zero is assigned to pause. Now step back to the standard C in c n from the keyboard because we didn&#8217;t specify any other methods, it&#8217;s going to be defaulted to the keyboard, Standard C and pause. Like I said, we&#8217;re going to override pause and we&#8217;re not going to do much with this at this point, but I&#8217;m going to go ahead and run this now and remember you can hit f five or a good a debug start debugging. So let&#8217;s go ahead and click that.</span>
</p>

<p class="p1">
  <span class="s1">Would you like to build? I&#8217;m going to click on, do not show this dialogue again cause I always want to build one. I&#8217;m debugging. So the you&#8217;ll not see this again? Yes. Okay. So now you see the program popped up and it says hello world and it&#8217;s just sitting there waiting for an input. Um, from this point you can hit enter or edit, put a value, a value in there. Uh, it won&#8217;t, it won&#8217;t take until you put an actual digit or character in there. Hello world, I just typed in number four from the keyboard. Hit enter. Now you know what your program actually did. So I call this little pause function because you kind of want to put that in a most of your programs while you&#8217;re starting out. Let&#8217;s move on from there and just add a couple more a see out statements so you can, I can show you different, um, things you can do with it.</span>
</p>

<p class="p1">
  <span class="s1">Um, you can either run a c out again, see out to the <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a>, more stuff. But he noticed there&#8217;s no end line character. Um, so when I run this, if I hit it at five, like I&#8217;m going to do, it&#8217;s gonna look, oh, I ran it and it says there were build errors. Would you like to continue to run from the last successful build? No. If it&#8217;s not going to build the right way, I&#8217;m not going to do it. As you can see down here in the output, it&#8217;s going to tell me what my error is, or at least it tries to. So if you double click on your error, which it looks like a long bit of, you know, stuff to read, but the error is actually starting way over here where it says error syntax, error and integrator should be pre seated by a semi-colon.</span>
</p>

<p class="p1">
  <span class="s1">Remember I said every line ends with a semi-colon. I forgot to put the semi-colon in there. So now I added the semi-colon right here and it should work now. Now when to hit f five, I&#8217;m just gonna hit f five. It&#8217;s going to show you hello world exclamation point. More stuff, right? Well we want to put a new line in there. So what we can do is we can use an escape character which you, which always starts off with backslash and then something like an or backslash a would be an alert. What this does is these, this combination of characters actually isn&#8217;t read by c out in the normal fashion. It actually knows that means new line, enter a new line. So watch when hit f five again, I&#8217;m going to hit a five on my keyboard. It&#8217;s gonna put a new line in there.</span>
</p>

<p class="p1">
  <span class="s1">Hello world more stuff, right? Another way to create a new line, if you didn&#8217;t like the backslash end method or if you want to end the stream, you can do the extraction operator and type in standard and line and you can get used to that really, really quickly. Standard C out. Say what you&#8217;re going to say and then end the line standard and line e n d l and now you should see two spaces. When I hit f five there you go. You have two spaces there and there was all kinds of other other characters like if you wanted to print the actual quote or something like that. Doesn&#8217;t escape character to print the actual quote. Um, you might want to Google all escape characters for c plus plus, and you&#8217;ll find a lot more information on that. Anyways, this is your first program, and I wanted to make it very simple because the hardest part of your first program is not the actual code. It&#8217;s not this. The actual hardest part is compiling it for the first time, and no one has a little trick with the pause, right? What I did here, and to your pause, seeing that pause. Otherwise the program will completely in before you even get to see it.</span>
</p>

 [1]: https://amzn.to/2FpOA4k