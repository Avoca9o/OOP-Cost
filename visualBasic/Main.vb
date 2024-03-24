Imports System.Diagnostics
Imports System.IO

Module Main
    Sub Main()
        Dim tick As New Stopwatch()

        tick.Start()

        For i As Integer = 0 To 100000000
        Next

        tick.Stop()

        Dim elapsed As Long = tick.ElapsedMilliseconds

        Console.WriteLine(elapsed.ToString())
    End Sub
End Module
