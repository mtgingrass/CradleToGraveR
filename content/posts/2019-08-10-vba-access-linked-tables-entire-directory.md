---
title: VBA Access Linked Tables – Entire Directory
author: mtgingrass
type: post
date: 2019-08-10T09:10:41+00:00
url: /2019/08/10/vba-access-linked-tables-entire-directory/
featured_image: http://markgingrass.com/wp-content/uploads/2019/08/Microsoft-Access-VBA-linked-tables-ENTIRE-DIRECTORY.jpg
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
  - microsoft access
  - programming
  - vba

---
Welcome to the first of my VBA (Visual Basic for Applications) tutorials/tips and tricks series!

Today you&#8217;ll learn how to import multiple tables at once using Microsoft Access externally.

<div id="ez-toc-container" class="ez-toc-v2_0_11 counter-hierarchy counter-decimal ez-toc-grey">
  <div class="ez-toc-title-container">
    <p class="ez-toc-title">
      Overview
    </p>
    
    <span class="ez-toc-title-toggle"><a class="ez-toc-pull-right ez-toc-btn ez-toc-btn-xs ez-toc-btn-default ez-toc-toggle"><i class="ez-toc-glyphicon ez-toc-icon-toggle"></i></a></span>
  </div><nav>
  
  <ul class="ez-toc-list ez-toc-list-level-1">
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-1" href="http://markgingrass.com/2019/08/10/vba-access-linked-tables-entire-directory/#Import_a_Table_into_Access_(the_slow_way)" title="Import a Table into Access (the slow way)">Import a Table into Access (the slow way)</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-2" href="http://markgingrass.com/2019/08/10/vba-access-linked-tables-entire-directory/#Importing_Multiple_Tables_Using_VBA" title="Importing Multiple Tables Using VBA">Importing Multiple Tables Using VBA</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-3" href="http://markgingrass.com/2019/08/10/vba-access-linked-tables-entire-directory/#Copy_and_Pase_the_Code" title="Copy and Pase the Code">Copy and Pase the Code</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-4" href="http://markgingrass.com/2019/08/10/vba-access-linked-tables-entire-directory/#Change_the_File_Path" title="Change the File Path">Change the File Path</a>
    </li>
    <li class="ez-toc-page-1 ez-toc-heading-level-2">
      <a class="ez-toc-link ez-toc-heading-5" href="http://markgingrass.com/2019/08/10/vba-access-linked-tables-entire-directory/#Run_the_VBA_Code" title="Run the VBA Code">Run the VBA Code</a>
    </li>
  </ul></nav>
</div>

## <span class="ez-toc-section" id="Import_a_Table_into_Access_(the_slow_way)"></span>Import a Table into Access (the slow way)<span class="ez-toc-section-end"></span>

Once you have Access open go to the **External Data** tab, then **Text File**, and in the pop up window select **Link to the data source&#8230;** and then hit **Browse**.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_26-1024x581.png" alt="" class="wp-image-898" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_26-1024x581.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_26-300x170.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_26-768x436.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_26.png 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Browse to the data file you&#8217;d like to use</figcaption></figure> 

You can&#8217;t import multiple files at this point, only one at a time. Once you press **OK** to import your file, work through the pop-ups and make sure that Access is importing the data in the correct way. It will do a good job of understanding most data but it can be worth checking that the settings are right for you.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_31-1024x581.png" alt="" class="wp-image-899" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_31-1024x581.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_31-300x170.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_31-768x436.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_31.png 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Check the data settings when importing</figcaption></figure> 

Finally, when you&#8217;ve worked through all the pop-ups, you&#8217;ll get the following <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a> with your data shown in the **Tables** column on the left-hand side. **Right-click** on it and select **Open** to expand the data into the main window.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_35-1024x581.png" alt="" class="wp-image-900" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_35-1024x581.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_35-300x170.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_35-768x436.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_35.png 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Your imported data table</figcaption></figure> 

This is good so far, but what if you have multiple data tables, perhaps hundreds? It won&#8217;t be any fun importing them individually, so I&#8217;m going to teach you how to do it the automated way using VBA. **Close** your table in the main window and **right-click** > **delete** on the data object in the left-hand column to give us a clean start.

## <span class="ez-toc-section" id="Importing_Multiple_Tables_Using_VBA"></span>Importing Multiple Tables Using VBA<span class="ez-toc-section-end"></span>

<div class="wp-block-columns has-2-columns">
  <div class="wp-block-column">
    <figure class="wp-block-image"><img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_54b.png" alt="" class="wp-image-905" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_54b.png 533w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_10_54b-300x155.png 300w" sizes="(max-width: 533px) 100vw, 533px" /></figure>
  </div>
  
  <div class="wp-block-column">
    <p>
      <br />To get to the VBA Editor you&#8217;ll need to have Microsoft Access open, then hit <strong>Alt </strong>+ <strong>F11</strong> together. This will open the Microsoft Visual Basic for Applications Editor. <br />In the top-left-hand side, you&#8217;ll have a navigation pane. Right-click on <strong>Database1</strong> > <strong>Insert</strong> > <strong>Module</strong>.
    </p>
  </div>
</div>

The module you just inserted will populate the main part of the <a class="thirstylink" target="_blank" title="Screen" href="https://amzn.to/2LMDuep" data-linkid="814" data-shortcode="true">screen</a> and shows **Option Compare Database** in the text field. Go ahead and delete this, we&#8217;re going to need to paste something else in there later.

<div class="wp-block-columns has-2-columns">
  <div class="wp-block-column">
    <p>
      <br />In the Properties panel on the left-hand side, you&#8217;ll see the Module named <strong>Module1</strong>. Let&#8217;s rename this by highlighting it and typing <strong>LinkTables</strong> as one word (it won&#8217;t allow any spaces).
    </p>
  </div>
  
  <div class="wp-block-column">
    <figure class="wp-block-image"><img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_11_04b.png" alt="" class="wp-image-910" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_11_04b.png 404w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-07_11_04b-300x222.png 300w" sizes="(max-width: 404px) 100vw, 404px" /></figure>
  </div>
</div>

This will now appear in the navigation pane (top-left) under **Database1** > **Modules** > **LinkTables**.

## <span class="ez-toc-section" id="Copy_and_Pase_the_Code"></span>Copy and Pase the Code<span class="ez-toc-section-end"></span>

In the video, I mention going to a website to grab the code we need for this next part, but to make things easier I&#8217;ve put the code below for you. Paste this into the main text area of the VBA editor:

<pre class="wp-block-code"><code>Option Compare Database Option Explicit

Sub Link_To_Excel() ’Macro Loops through the specified directory (strPath) ’and links ALL Excel files as linked tables in the Access ’Database.

Const strPath As String = "C:\Users\1260948764C\Documents\Operations Researcher\DSCM\Raw Data Files\Raw Data\" 'Directory Path
Dim strFile As String 'Filename
Dim strFileList() As String 'File Array
Dim intFile As Integer 'File Number

 'Loop through the folder & build file list
strFile = Dir(strPath & "*.csv")
While strFile &lt;&gt; ""
     'add files to the list
    intFile = intFile + 1
    ReDim Preserve strFileList(1 To intFile)
    strFileList(intFile) = strFile
    strFile = Dir()
Wend
 'see if any files were found
If intFile = 0 Then
    MsgBox "No files found"
    Exit Sub
End If
 'cycle through the list of files & link to Access
For intFile = 1 To UBound(strFileList)
    DoCmd.TransferText acLinkDelim, , _
    strFileList(intFile), strPath & strFileList(intFile), True, ""
Next
MsgBox UBound(strFileList) & " Files were Linked"
End Sub</code></pre>

There&#8217;s a **Copy** button at the upper-right of the box above which should make this easier, but once you press _it doesn&#8217;t actually copy the code!_ Click once and it will highlight everything you need, then **right-click** > **copy** as normal.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_4_51-1024x581.png" alt="" class="wp-image-918" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_4_51-1024x581.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_4_51-300x170.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_4_51-768x436.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_4_51.png 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Paste the code into your VBA editor here</figcaption></figure> 

## <span class="ez-toc-section" id="Change_the_File_Path"></span>Change the File Path<span class="ez-toc-section-end"></span>

Once the code is pasted into the VBA text editor we want to change a path so that the program searches in the right place for our files.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_02-1024x581.png" alt="" class="wp-image-919" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_02-1024x581.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_02-300x170.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_02-768x436.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_02.png 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>We&#8217;re going to replace this path with your own</figcaption></figure> 

Open your File Explorer and navigate to the directory where your files are stored. Click on the navigation pane at the top of the window and use **ctrl**+**c** to copy the folder address to your clipboard.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_05-1024x581.png" alt="" class="wp-image-920" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_05-1024x581.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_05-300x170.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_05-768x436.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_05.png 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Copy this folder address for use in the VBA code</figcaption></figure> 

Paste this address in place of the file path that was highlighted in the VBA code earlier using **ctrl**+**v**. IMPORTANT: you&#8217;ll need to enter a back-slash **\** at the end of the address for it to work correctly, and everything needs to be inside the quotation marks **&#8220;**.<figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_13-1024x581.png" alt="" class="wp-image-921" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_13-1024x581.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_13-300x170.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_13-768x436.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_13.png 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Paste your new path inside the quotation marks</figcaption></figure> 

## <span class="ez-toc-section" id="Run_the_VBA_Code"></span>Run the VBA Code<span class="ez-toc-section-end"></span>

Before you hit play to run your code, you&#8217;ll need to make sure that your cursor is in the appropriate &#8216;Sub&#8217;. Just make sure that you click between **Sub** (near the start) and **End Sub** (at the end) and then hit the **Play** button above.

The code will run and search through the directory we specified a minute ago, looking for **.csv** files to link externally to Microsoft Access. 

Access has a 2 Gb limit on its file size, so linking external files is very useful when you might have 10 or 15 Gb worth of data that you need to use. <figure class="wp-block-image">

<img src="http://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_29-1024x581.png" alt="" class="wp-image-923" srcset="https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_29-1024x581.png 1024w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_29-300x170.png 300w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_29-768x436.png 768w, https://markgingrass.com/wp-content/uploads/2019/08/AwesomeScreenshot-www-youtube-watch-2019-08-09_5_29.png 1903w" sizes="(max-width: 1024px) 100vw, 1024px" /><figcaption>Linked files showing as Microsoft Access Objects</figcaption></figure> 

Once the search has completed you&#8217;ll find the linked tables showing in the Objects panel of Access and you can check they&#8217;re correctly linked with **right-click** > **open** to display the full content.

And that&#8217;s it! Congratulations, you&#8217;ve now learned how to link external tables to Microsoft Access. If you enjoyed this lesson please let me know or ask any questions by commenting below.

[embedyt] https://www.youtube.com/watch?v=MGc5v-Nk6rY[/embedyt]