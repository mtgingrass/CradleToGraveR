---
title: VBA Convert XLSX to CSV (Entire Directory)
author: mtgingrass
type: post
date: 2019-06-28T13:43:20+00:00
url: /2019/06/28/vba-convert-xlsx-to-csv-entire-directory/
featured_image: http://markgingrass.com/wp-content/uploads/2019/06/maxresdefault-2.jpg
categories:
  - Programming
  - VBA

---
## Convert File Extensions.

Sometimes, you find yourself converting one file extension to another for various reasons. Many software programs will not read files such as a **.xlsx** or **.xlsm** Excel file. They will, however, easily read a .**csv** file.

In this tutorial, I will show you how to use an already created macro to convert an entire directory of files to a new file extension almost instantly. It saves a tremendous amount of time using macros for this.

> Get two free months on [SkillShare][1] where you can take my **Scrape Twitter and Build a Word Cloud** course in R.

In this tutorial you will learn:

  * How to convert **XLSX** file extensions to **CSV**
  * How to convert any file extension to another
  * How to open a dialog box for user input (folder selection)

Watch the Video for a step by step guide on how to use this macro.

[👇SUBSCRIBE & HIT THE 👍 BUTTON 👇][2]
  
http://bit.ly/sub\_to\_chan

<iframe title="🤓VBA Convert XLSX to CSV File - Entire Directory🤓" width="1200" height="675" src="https://www.youtube.com/embed/Pzk1Iq5jSxo?feature=oembed" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

[👇SUBSCRIBE & HIT THE 👍 BUTTON 👇][2]
  
http://bit.ly/sub\_to\_chan

## \## Code

Copy and paste the code below to get you started.

<pre class="lang:vb decode:true ">Option Explicit
    
    Sub ConvertToCsv()
        Dim wb As Workbook
        Dim sh As Worksheet
        Dim myPath As String
        Dim myFile As String
        Dim myExt As String
        Dim NewWBName As String
        Dim ChooseFolder As FileDialog
        
        'Optimize
          Application.ScreenUpdating = False
          Application.EnableEvents = False
          Application.Calculation = xlCalculationManual
        
        'Retrieve Target Folder Path From User
        Set ChooseFolder = Application.FileDialog(msoFileDialogFolderPicker)
        
        ChooseFolder.Title = "Select Target Path"
        ChooseFolder.AllowMultiSelect = False
                
        If ChooseFolder.Show &lt;&gt; -1 Then GoTo NextCode
            myPath = ChooseFolder.SelectedItems(1) & "\"
        
        'Cancel
    NextCode:
        myPath = myPath
        If myPath = "" Then Exit Sub
        
        'File Ext to Change
        myExt = "*.xls*"
        
        'Target Path with Ending Extention
        myFile = Dir(myPath & myExt)
        
        'Loop through each Excel file in folder
        Do While myFile &lt;&gt; ""
            'Set variable equal to opened workbook
            Set wb = Workbooks.Open(Filename:=myPath & myFile)
            NewWBName = myPath & Left(myFile, InStr(1, myFile, ".") - 1) & ".csv"
            ActiveWorkbook.SaveAs Filename:=NewWBName, FileFormat:=xlCSV
            ActiveWorkbook.Close savechanges:=True
            'Get next file name
            myFile = Dir
        Loop
        
        'Reset Macro Optimization Settings
        Application.ScreenUpdating = True
        Application.EnableEvents = True
        Application.Calculation = xlCalculationAutomatic
    End Sub</pre>

<!-- more -->

``

 [1]: https://skl.sh/2HWBUlO
 [2]: http://bit.ly/sub_to_chan