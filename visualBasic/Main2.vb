Imports System.Diagnostics
Imports System.IO

Module Main
    Public Class Base
    End Class

    Sub Main()
        Dim tick As New Stopwatch()

        tick.Start()

        For i As Integer = 0 To 100000000
            Dim obj As Base = New Base()
        Next

        tick.Stop()

        Dim elapsed As Long = tick.ElapsedMilliseconds

        Console.WriteLine(elapsed.ToString())
    End Sub
End Module