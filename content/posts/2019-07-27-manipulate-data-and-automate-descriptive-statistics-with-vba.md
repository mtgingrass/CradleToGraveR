---
title: Manipulate Data and Automate Descriptive Statistics with VBA
author: mtgingrass
type: post
date: 2019-07-27T19:49:11+00:00
url: /2019/07/27/manipulate-data-and-automate-descriptive-statistics-with-vba/
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
  - VBA

---
[embedyt] https://www.youtube.com/watch?v=L2GoeXv_Ro0[/embedyt]

`Option Explicit</p>
<p>    Sub Initialize_Data()<br />
        Application.ScreenUpdating = False<br />
        Call DefBusRules<br />
        Call flat_file_to_tabs<br />
        Call IndexIt<br />
        Call format_raw_Data<br />
        Call desc_stats(10)</p>
<p>        Worksheets("Def & Bus Rules & Overview").Select<br />
        Range("A1").Select<br />
        Application.ScreenUpdating = True</p>
<p>    End Sub</p>
<p>    Sub flat_file_to_tabs()</p>
<p>        'Declaration of Variables<br />
        Dim lng_LastRow As Long<br />
        Dim r1 As Long<br />
        Dim int_StartingRow As Integer<br />
        Dim int_StartingCol As Integer<br />
        Dim str_CurrentMDS As String<br />
        Dim int_HeaderRow As Long</p>
<p>        Worksheets("Raw Data").Activate<br />
        'Inititializers<br />
        int_HeaderRow = InputBox("Header Row (0 for none): ")<br />
        int_StartingRow = InputBox("Starting Row of Data: ")<br />
        int_StartingCol = InputBox("Column of Interest (Numerica Value a=1, b=2, ...): ")</p>
<p>        'Get row count<br />
        lng_LastRow = Cells(Rows.Count, int_StartingCol).End(xlUp).Row</p>
<p>        'Get first MDS<br />
        str_CurrentMDS = Cells(int_StartingRow, int_StartingCol).Value</p>
<p>        'Loop through rows finding unique MDS's<br />
        For r1 = int_StartingRow To lng_LastRow<br />
            If Cells(r1, int_StartingCol).Value = str_CurrentMDS Then<br />
                Call copy_paste_row(int_HeaderRow, r1, str_CurrentMDS)<br />
            Else<br />
            'insert blank row on top - may need to add more blanks for late ruse<br />
                str_CurrentMDS = Cells(r1, int_StartingCol)<br />
                Call copy_paste_row(int_HeaderRow, r1, str_CurrentMDS)<br />
            End If<br />
        Next<br />
         Application.ScreenUpdating = True<br />
         CopyPasteHeader (int_HeaderRow)<br />
    End Sub</p>
<p>    Sub copy_paste_row(int_HeaderRow As Long, int_RowToCopy As Long, str_TabName As String)<br />
        Application.ScreenUpdating = False</p>
<p>        Dim lng_LastRow As Long<br />
        Dim wsTest As Worksheet<br />
        Dim offset As Integer</p>
<p>        offset = 10</p>
<p>        'test to see if tab already exists<br />
        Set wsTest = Nothing<br />
            On Error Resume Next<br />
        Set wsTest = ActiveWorkbook.Worksheets(str_TabName)<br />
        On Error GoTo 0</p>
<p>        'if tab does not exist, create one and insert header<br />
        If wsTest Is Nothing Then<br />
            Worksheets.Add.Name = str_TabName<br />
            Worksheets("Raw Data").Activate<br />
            Rows(int_HeaderRow).Select<br />
            Selection.Copy<br />
            Worksheets(str_TabName).Activate<br />
            Rows(offset).Select<br />
            ActiveSheet.Paste<br />
            Rows(offset).Select<br />
            Selection.Font.Bold = True</p>
<p>        End If</p>
<p>        'Raw Data sheet should be active<br />
        'paste row to the sheet<br />
        Worksheets("Raw Data").Select<br />
        Rows(int_RowToCopy).Select<br />
        Selection.Copy</p>
<p>        'go back to sheet<br />
        Worksheets(str_TabName).Activate<br />
        lng_LastRow = Cells(Rows.Count, 1).End(xlUp).Row<br />
        Rows(lng_LastRow + 1).Select<br />
        ActiveSheet.Paste<br />
        Sheets(str_TabName).Select<br />
        Application.CutCopyMode = False</p>
<p>        'Go back to original sheet<br />
        Sheets("Raw Data").Select<br />
    End Sub</p>
<p>    Sub IndexIt()<br />
        Dim Ws As Worksheet, WsInd As Worksheet, lStartRow%, lStartCol, sBackRange As String<br />
         '##1: Where should the back-to-index-page link be, change if necessary<br />
        sBackRange = "A1"</p>
<p>        lStartRow = 3<br />
        lStartCol = 1</p>
<p>        Set WsInd = Worksheets("Def & Bus Rules & Overview")</p>
<p>         'Add the links<br />
        For Each Ws In Worksheets<br />
            If Ws.Name <> WsInd.Name Then<br />
                WsInd.Hyperlinks.Add WsInd.Cells(lStartRow, lStartCol), "", "'" & Ws.Name & "'!A1"<br />
                WsInd.Cells(lStartRow, lStartCol).Value = Ws.Name<br />
                lStartRow = lStartRow + 1</p>
<p>                 '##2: Add link back to index, comment the following 2 lines if you don't want this part<br />
                Ws.Hyperlinks.Add Ws.Range(sBackRange), "", "'" & WsInd.Name & "'" & "!A1"<br />
                Ws.Range(sBackRange).Value = "Back to Index"<br />
            End If<br />
        Next Ws</p>
<p>        WsInd.Activate<br />
    End Sub</p>
<p>    Sub CopyPasteHeader(int_HeaderRow As Integer)<br />
    '<br />
    ' CopyPasteHeader Macro<br />
    '</p>
<p>    '<br />
        Worksheets("Raw Data").Select<br />
        Cells(int_HeaderRow, 1).Select<br />
        Range(Selection, Selection.End(xlToRight)).Select<br />
        Selection.Copy</p>
<p>        Worksheets("Def & Bus Rules & Overview").Activate<br />
        Range("B24").Select<br />
        Selection.PasteSpecial Paste:=xlPasteAll, Operation:=xlNone, SkipBlanks:= _<br />
            False, Transpose:=True<br />
    End Sub</p>
<p>    Sub desc_stats(int_HeaderRow As Integer)<br />
    'this function will traverse all tabs, find the numeric columns and average them at the bottom<br />
        Application.ScreenUpdating = False<br />
        Dim current_ws As Worksheet<br />
        Dim WS_Count As Integer<br />
        Dim I As Integer<br />
        Dim lng_LastRow As Long<br />
        Dim lng_lastCol As Long</p>
<p>        'Count number of worksheets<br />
        WS_Count = ActiveWorkbook.Worksheets.Count</p>
<p>                            Application.EnableEvents = False<br />
                        Application.DisplayAlerts = False<br />
        '********************************************************************************************************************<br />
        'Loop through each worksheet.<br />
        For I = 1 To WS_Count</p>
<p>            'Exclude "Def & Bus Rules & Overview" tab.<br />
            If (ActiveWorkbook.Worksheets(I).Name <> "Def & Bus Rules & Overview" And ActiveWorkbook.Worksheets(I).Name <> "Raw Data") Then<br />
                Worksheets(I).Activate</p>
<p>                lng_LastRow = Cells(Rows.Count, 1).End(xlUp).Row</p>
<p>                Dim index_row As Long<br />
                Dim index_col As Long<br />
                Dim pos_counter As Long</p>
<p>                pos_counter = -1<br />
                'Get number of columns<br />
                Range("B" & int_HeaderRow).Select<br />
                Selection.End(xlToRight).Select<br />
                Selection.End(xlToRight).Select<br />
                Selection.End(xlToLeft).Select<br />
                lng_lastCol = ActiveCell.Column</p>
<p>                '*************************************************************************************************************<br />
                'Interate through all the columns and rows<br />
                For index_col = 1 To lng_lastCol</p>
<p>                    'If the first row of values has #N/A or is empty, consider it a numeric just in case other values below are<br />
                    If IsNumeric(Cells(int_HeaderRow + 1, index_col)) Or _<br />
                        IsEmpty(Cells(int_HeaderRow + 1, index_col)) Or IsError(Cells(int_HeaderRow + 1, index_col)) Then</p>
<p>                        'Get Range<br />
                        Dim current_col_range As String<br />
                        current_col_range = Col_Letter(index_col) & (int_HeaderRow) & ":" & Col_Letter(index_col) & lng_LastRow</p>
<p>                        'third quartile<br />
                        Cells(int_HeaderRow - 5, index_col).Value = "=QUARTILE.INC(" _<br />
                        & Col_Letter(index_col) & (int_HeaderRow + 1) & ":" & Col_Letter(index_col) & lng_LastRow & ",3)"</p>
<p>                        'First Quartile<br />
                        Cells(int_HeaderRow - 6, index_col).Value = "=QUARTILE.INC(" _<br />
                        & Col_Letter(index_col) & (int_HeaderRow + 1) & ":" & Col_Letter(index_col) & lng_LastRow & ",1)"<br />
                        'Upper Bound<br />
                        Cells(int_HeaderRow - 7, index_col).Value = "=QUARTILE.INC(" _<br />
                        & Col_Letter(index_col) & (int_HeaderRow + 1) & ":" & Col_Letter(index_col) & lng_LastRow & ",3)*1.5"</p>
<p>                        'Lower Bound<br />
                        Cells(int_HeaderRow - 4, index_col).Value = "=QUARTILE.INC(" _<br />
                        & Col_Letter(index_col) & (int_HeaderRow + 1) & ":" & Col_Letter(index_col) & lng_LastRow & ",1)*.5"</p>
<p>                        Dim my_range As String<br />
                        my_range = Col_Letter(index_col) + CStr((int_HeaderRow)) + ":" + Col_Letter(index_col) + CStr((lng_LastRow))</p>
<p>                        pos_counter = pos_counter + 1<br />
                        Application.Run "ATPVBAEN.XLAM!Descr", ActiveSheet.Range(my_range), _<br />
                        ActiveSheet.Range("$B$" & CStr(lng_LastRow + 3 + pos_counter * 20)), "C", True, True, 1, 1, 95</p>
<p>                        Call InsertScatterPlot(ActiveWorkbook.Worksheets(I).Name, current_col_range, "F" & (lng_LastRow + 3 + pos_counter * 20))<br />
                        Call CondFormat(current_col_range)<br />
                    End If</p>
<p>                Next<br />
                '*************************************************************************************************************<br />
            End If 'if not defintions tab, cycle through them</p>
<p>            If (ActiveWorkbook.Worksheets(I).Name <> "Def & Bus Rules & Overview" And ActiveWorkbook.Worksheets(I).Name <> "Raw Data") Then<br />
                Call beautify_temp<br />
            End If<br />
            pos_counter = 0<br />
            Range("A1").Select<br />
        Next I 'cycling through each worksheet<br />
        '********************************************************************************************************************</p>
<p>        Application.EnableEvents = True<br />
        Application.DisplayAlerts = True</p>
<p>    End Sub</p>
<p>    Function Col_Letter(lngCol As Long) As String<br />
        Dim vArr<br />
        vArr = Split(Cells(1, lngCol).Address(True, False), "$")<br />
        Col_Letter = vArr(0)<br />
    End Function</p>
<p>    Sub CondFormat(my_range As String)<br />
    '<br />
    ' CondFormat Macro<br />
    '</p>
<p>    '<br />
        Range(my_range).Select<br />
        Selection.FormatConditions.Add Type:=xlCellValue, Operator:=xlBetween, _<br />
            Formula1:="=$" & Left(my_range, 1) & "$3", Formula2:="=$" & Left(my_range, 1) & "$6"<br />
        Selection.FormatConditions(Selection.FormatConditions.Count).SetFirstPriority<br />
        With Selection.FormatConditions(1).Font<br />
            .Color = -16752384<br />
            .TintAndShade = 0<br />
        End With<br />
        With Selection.FormatConditions(1).Interior<br />
            .PatternColorIndex = xlAutomatic<br />
            .Color = 13561798<br />
            .TintAndShade = 0<br />
        End With<br />
        Selection.FormatConditions(1).StopIfTrue = False</p>
<p>    End Sub</p>
<p>    Sub beautify_temp()<br />
    Application.ScreenUpdating = False</p>
<p>        Columns("A:A").Select<br />
        Selection.Insert Shift:=xlToRight<br />
        Range("A3").Select<br />
        ActiveCell.FormulaR1C1 = "Upper Bound"<br />
        Range("A4").Select<br />
        ActiveCell.FormulaR1C1 = "1st Quartile"<br />
        Range("A5").Select<br />
        ActiveCell.FormulaR1C1 = "3rd Quartile"<br />
        Range("A6").Select<br />
        ActiveCell.FormulaR1C1 = "Lower Bound"</p>
<p>        Range("A9").Select<br />
        Columns("A:A").EntireColumn.AutoFit<br />
        Range("A3:A6").Select<br />
        Selection.Font.Bold = True<br />
        Range("A3,A6").Select<br />
        Range("A6").Activate<br />
        With Selection.Font<br />
            .Color = -16776961<br />
            .TintAndShade = 0<br />
        End With<br />
        Range("3:3,6:6").Select<br />
        Range("A6").Activate<br />
        With Selection.Font<br />
            .Color = -16776961<br />
            .TintAndShade = 0<br />
        End With<br />
        Range("A8").Select<br />
        Selection.Font.Bold = True<br />
        Range("D6").Select<br />
        Range("A1").Select</p>
<p>        Columns.AutoFit<br />
        Application.ScreenUpdating = True</p>
<p>    End Sub</p>
<p>    Sub InsertScatterPlot(Sheet_Name As String, Chart_Range As String, Chart_Position As String)<br />
    '<br />
    ' InsertScatterPlot Macro<br />
    '</p>
<p>        With ActiveSheet.ChartObjects.Add _<br />
            (Left:=Range(Chart_Position).Left, Width:=375, Top:=Range(Chart_Position).Top, Height:=225)<br />
            With .Chart<br />
                .ChartType = xlXYScatterLines<br />
                .SetSourceData Source:=Sheets(Sheet_Name).Range(Chart_Range)<br />
                .Parent.Name = "My Chart2"<br />
            End With<br />
        End With<br />
    End Sub</p>
<p>    Sub DefBusRules()<br />
    '<br />
    ' DefBusRules Macro<br />
    '</p>
<p>    '<br />
    'test to see if tab already exists<br />
        Dim wsTest As Worksheet</p>
<p>        Set wsTest = Nothing<br />
            On Error Resume Next<br />
        Set wsTest = ActiveWorkbook.Worksheets("Def & Bus Rules & Overview")<br />
        On Error GoTo 0</p>
<p>        'if tab does not exist, create one and insert header<br />
        If wsTest Is Nothing Then<br />
            Worksheets.Add.Name = "Def & Bus Rules & Overview"<br />
            Worksheets("Def & Bus Rules & Overview").Activate<br />
        End If</p>
<p>        Sheets("Def & Bus Rules & Overview").Select<br />
        Sheets("Def & Bus Rules & Overview").Name = "Def & Bus Rules & Overview"<br />
        ActiveCell.FormulaR1C1 = "POC"<br />
        Range("B1").Select<br />
        ActiveCell.FormulaR1C1 = Application.UserName<br />
        Range("C1").Select<br />
        ActiveCell.FormulaR1C1 = "=Today()"<br />
        Range("D1").Select<br />
        ActiveCell.FormulaR1C1 = "Email: "<br />
        Range("B3").Select<br />
        ActiveCell.FormulaR1C1 = "Definitions and Business Rules"<br />
        Columns("B:B").Select<br />
        Selection.ColumnWidth = 27.43<br />
        Range("B5").Select<br />
        ActiveCell.FormulaR1C1 = "Data Source"<br />
        Range("B6").Select<br />
        ActiveCell.FormulaR1C1 = "Data Pull Date"<br />
        Range("B8").Select<br />
        ActiveCell.FormulaR1C1 = "Data Source"<br />
        Range("B9").Select<br />
        ActiveCell.FormulaR1C1 = "Data Pull Date"<br />
        Range("B12").Select<br />
        ActiveCell.FormulaR1C1 = "Generic Rules Applied"<br />
        Range("B13").Select<br />
        ActiveCell.FormulaR1C1 = "Outliers"<br />
        Range("B14").Select<br />
        ActiveCell.FormulaR1C1 = "#NA"<br />
        Range("B15").Select<br />
        ActiveCell.FormulaR1C1 = "Blanks"<br />
        Range("B16").Select<br />
        ActiveCell.FormulaR1C1 = "Zeros"<br />
        Range("B18").Select<br />
        ActiveCell.FormulaR1C1 = "Findings and Further Analysis"<br />
        Range("B23").Select<br />
        ActiveCell.FormulaR1C1 = "Raw Data Key"<br />
        Range("C3").Select<br />
        ActiveCell.FormulaR1C1 = "'---"<br />
        Range("C5").Select<br />
        ActiveCell.FormulaR1C1 = "'---"<br />
        Range("C6").Select<br />
        ActiveCell.FormulaR1C1 = "'---"<br />
        Range("C8").Select<br />
        ActiveCell.FormulaR1C1 = "'---"<br />
        Range("C9").Select<br />
        ActiveCell.FormulaR1C1 = "'---"<br />
        Range("C12").Select<br />
        ActiveCell.FormulaR1C1 = "'---"<br />
        Range("C13").Select<br />
        ActiveCell.FormulaR1C1 = "'---"<br />
        Range("C14").Select<br />
        ActiveCell.FormulaR1C1 = "'---"<br />
        Range("C15").Select<br />
        ActiveCell.FormulaR1C1 = "'---"<br />
        Range("C16").Select<br />
        ActiveCell.FormulaR1C1 = "'---"<br />
        Range("C19").Select<br />
        ActiveCell.FormulaR1C1 = "'---"<br />
        Range("C20").Select<br />
        ActiveCell.FormulaR1C1 = "'---"<br />
        Range("C21").Select<br />
        ActiveCell.FormulaR1C1 = "'---"<br />
        Range("C24").Select<br />
        ActiveCell.FormulaR1C1 = "'---"<br />
        Range("C25").Select<br />
        ActiveCell.FormulaR1C1 = "'---"<br />
        Range("C26").Select<br />
        ActiveCell.FormulaR1C1 = "'---"<br />
        Range("B3,B12,B18,B23").Select<br />
        Range("B23").Activate<br />
        Selection.Font.Size = 12<br />
        Selection.Font.Size = 14<br />
        Selection.Font.Size = 16<br />
        Selection.Font.Size = 14<br />
        Selection.Font.Bold = True<br />
        Range("B5:B9,B13:B16,B19:B22,B24:B26").Select<br />
        Range("B24").Activate<br />
        With Selection<br />
            .HorizontalAlignment = xlRight<br />
            .VerticalAlignment = xlBottom<br />
            .WrapText = False<br />
            .Orientation = 0<br />
            .AddIndent = False<br />
            .IndentLevel = 0<br />
            .ShrinkToFit = False<br />
            .ReadingOrder = xlContext<br />
            .MergeCells = False<br />
        End With<br />
        With Selection.Interior<br />
            .Pattern = xlSolid<br />
            .PatternColorIndex = xlAutomatic<br />
            .Color = 15773696<br />
            .TintAndShade = 0<br />
            .PatternTintAndShade = 0<br />
        End With<br />
        With Selection.Font<br />
            .ThemeColor = xlThemeColorDark1<br />
            .TintAndShade = 0<br />
        End With<br />
        Range("C3:C26").Select<br />
        With Selection<br />
            .HorizontalAlignment = xlCenter<br />
            .VerticalAlignment = xlBottom<br />
            .WrapText = False<br />
            .Orientation = 0<br />
            .AddIndent = False<br />
            .IndentLevel = 0<br />
            .ShrinkToFit = False<br />
            .ReadingOrder = xlContext<br />
            .MergeCells = False<br />
        End With<br />
        ActiveWindow.SmallScroll Down:=-12<br />
        Range("A2").Select<br />
        ActiveCell.FormulaR1C1 = "Tab Index"<br />
        Range("A2").Select<br />
        With Selection.Interior<br />
            .Pattern = xlSolid<br />
            .PatternColorIndex = xlAutomatic<br />
            .Color = 15773696<br />
            .TintAndShade = 0<br />
            .PatternTintAndShade = 0<br />
        End With<br />
        With Selection<br />
            .HorizontalAlignment = xlRight<br />
            .VerticalAlignment = xlBottom<br />
            .WrapText = False<br />
            .Orientation = 0<br />
            .AddIndent = False<br />
            .IndentLevel = 0<br />
            .ShrinkToFit = False<br />
            .ReadingOrder = xlContext<br />
            .MergeCells = False<br />
        End With<br />
        Selection.Font.Bold = True<br />
        Columns("M:M").ColumnWidth = 12.43<br />
        Range("M5").Select</p>
<p>        Columns("C:C").EntireColumn.AutoFit<br />
        Columns("D:D").ColumnWidth = 72.14</p>
<p>        Call Add_Borders<br />
    End Sub</p>
<p>    Sub Add_Borders()<br />
    '<br />
    ' Macro3 Macro<br />
    '</p>
<p>    '<br />
        Range("B5").Select<br />
        Selection.Borders(xlDiagonalDown).LineStyle = xlNone<br />
        Selection.Borders(xlDiagonalUp).LineStyle = xlNone<br />
        With Selection.Borders(xlEdgeLeft)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeTop)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeBottom)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeRight)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        Selection.Borders(xlInsideVertical).LineStyle = xlNone<br />
        Selection.Borders(xlInsideHorizontal).LineStyle = xlNone<br />
        Range("B6").Select<br />
        Selection.Borders(xlDiagonalDown).LineStyle = xlNone<br />
        Selection.Borders(xlDiagonalUp).LineStyle = xlNone<br />
        With Selection.Borders(xlEdgeLeft)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeTop)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeBottom)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeRight)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        Selection.Borders(xlInsideVertical).LineStyle = xlNone<br />
        Selection.Borders(xlInsideHorizontal).LineStyle = xlNone<br />
        Range("B7").Select<br />
        Selection.Borders(xlDiagonalDown).LineStyle = xlNone<br />
        Selection.Borders(xlDiagonalUp).LineStyle = xlNone<br />
        With Selection.Borders(xlEdgeLeft)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeTop)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeBottom)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeRight)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        Selection.Borders(xlInsideVertical).LineStyle = xlNone<br />
        Selection.Borders(xlInsideHorizontal).LineStyle = xlNone<br />
        Range("B8").Select<br />
        Selection.Borders(xlDiagonalDown).LineStyle = xlNone<br />
        Selection.Borders(xlDiagonalUp).LineStyle = xlNone<br />
        With Selection.Borders(xlEdgeLeft)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeTop)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeBottom)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeRight)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        Selection.Borders(xlInsideVertical).LineStyle = xlNone<br />
        Selection.Borders(xlInsideHorizontal).LineStyle = xlNone<br />
        Range("B9").Select<br />
        Selection.Borders(xlDiagonalDown).LineStyle = xlNone<br />
        Selection.Borders(xlDiagonalUp).LineStyle = xlNone<br />
        With Selection.Borders(xlEdgeLeft)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeTop)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeBottom)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeRight)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        Selection.Borders(xlInsideVertical).LineStyle = xlNone<br />
        Selection.Borders(xlInsideHorizontal).LineStyle = xlNone<br />
        Range("B13").Select<br />
        Selection.Borders(xlDiagonalDown).LineStyle = xlNone<br />
        Selection.Borders(xlDiagonalUp).LineStyle = xlNone<br />
        With Selection.Borders(xlEdgeLeft)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeTop)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeBottom)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeRight)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        Selection.Borders(xlInsideVertical).LineStyle = xlNone<br />
        Selection.Borders(xlInsideHorizontal).LineStyle = xlNone<br />
        Range("B14").Select<br />
        Selection.Borders(xlDiagonalDown).LineStyle = xlNone<br />
        Selection.Borders(xlDiagonalUp).LineStyle = xlNone<br />
        With Selection.Borders(xlEdgeLeft)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeTop)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeBottom)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeRight)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        Selection.Borders(xlInsideVertical).LineStyle = xlNone<br />
        Selection.Borders(xlInsideHorizontal).LineStyle = xlNone<br />
        Range("B15").Select<br />
        Selection.Borders(xlDiagonalDown).LineStyle = xlNone<br />
        Selection.Borders(xlDiagonalUp).LineStyle = xlNone<br />
        With Selection.Borders(xlEdgeLeft)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeTop)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeBottom)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeRight)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        Selection.Borders(xlInsideVertical).LineStyle = xlNone<br />
        Selection.Borders(xlInsideHorizontal).LineStyle = xlNone<br />
        Range("B19").Select<br />
        Selection.Borders(xlDiagonalDown).LineStyle = xlNone<br />
        Selection.Borders(xlDiagonalUp).LineStyle = xlNone<br />
        With Selection.Borders(xlEdgeLeft)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeTop)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeBottom)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeRight)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        Selection.Borders(xlInsideVertical).LineStyle = xlNone<br />
        Selection.Borders(xlInsideHorizontal).LineStyle = xlNone<br />
        Range("B20").Select<br />
        Selection.Borders(xlDiagonalDown).LineStyle = xlNone<br />
        Selection.Borders(xlDiagonalUp).LineStyle = xlNone<br />
        With Selection.Borders(xlEdgeLeft)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeTop)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeBottom)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeRight)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        Selection.Borders(xlInsideVertical).LineStyle = xlNone<br />
        Selection.Borders(xlInsideHorizontal).LineStyle = xlNone<br />
        Range("B21:B22").Select<br />
        Selection.Borders(xlDiagonalDown).LineStyle = xlNone<br />
        Selection.Borders(xlDiagonalUp).LineStyle = xlNone<br />
        With Selection.Borders(xlEdgeLeft)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeTop)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeBottom)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeRight)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        Selection.Borders(xlInsideVertical).LineStyle = xlNone<br />
        Selection.Borders(xlInsideHorizontal).LineStyle = xlNone<br />
        Range("B21:B22").Select<br />
        Selection.Borders(xlDiagonalDown).LineStyle = xlNone<br />
        Selection.Borders(xlDiagonalUp).LineStyle = xlNone<br />
        With Selection.Borders(xlEdgeLeft)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeTop)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeBottom)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeRight)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        Selection.Borders(xlInsideVertical).LineStyle = xlNone<br />
        Selection.Borders(xlInsideHorizontal).LineStyle = xlNone<br />
        Range("B21").Select<br />
        Selection.Borders(xlDiagonalDown).LineStyle = xlNone<br />
        Selection.Borders(xlDiagonalUp).LineStyle = xlNone<br />
        With Selection.Borders(xlEdgeLeft)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeTop)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeBottom)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        With Selection.Borders(xlEdgeRight)<br />
            .LineStyle = xlContinuous<br />
            .ThemeColor = 1<br />
            .TintAndShade = 0<br />
            .Weight = xlThin<br />
        End With<br />
        Selection.Borders(xlInsideVertical).LineStyle = xlNone<br />
        Selection.Borders(xlInsideHorizontal).LineStyle = xlNone</p>
<p>    End Sub</p>
<p>    Sub format_raw_Data()<br />
    '<br />
    ' Macro7 Macro<br />
    '</p>
<p>    '<br />
        Worksheets("Def & Bus Rules & Overview").Activate<br />
        Range("B24").Select<br />
        Range(Selection, Selection.End(xlDown)).Select<br />
        With Selection<br />
            .HorizontalAlignment = xlRight<br />
            .VerticalAlignment = xlBottom<br />
            .WrapText = False<br />
            .Orientation = 0<br />
            .AddIndent = False<br />
            .IndentLevel = 0<br />
            .ShrinkToFit = False<br />
            .ReadingOrder = xlContext<br />
            .MergeCells = False<br />
        End With<br />
        With Selection.Interior<br />
            .Pattern = xlSolid<br />
            .PatternColorIndex = xlAutomatic<br />
            .Color = 15773696<br />
            .TintAndShade = 0<br />
            .PatternTintAndShade = 0<br />
        End With<br />
        With Selection.Font<br />
            .ThemeColor = xlThemeColorDark1<br />
            .TintAndShade = 0<br />
        End With<br />
        Range("C24:C26").Select<br />
        Selection.AutoFill Destination:=Range("C24:C223")<br />
        Range("C24:C223").Select<br />
        Range("B24").Select<br />
        Selection.End(xlDown).Select<br />
        Selection.End(xlDown).Select<br />
        Selection.End(xlUp).Select<br />
        Range("C47").Select<br />
        Range(Selection, Selection.End(xlDown)).Select<br />
        Selection.ClearContents<br />
        Range("A1").Select<br />
        Columns("B:B").EntireColumn.AutoFit<br />
    End Sub</p>
<p>`