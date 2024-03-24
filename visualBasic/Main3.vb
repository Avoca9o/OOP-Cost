Imports System.Diagnostics
Imports System.IO

Module Main
    Public Class Base
        Public Overridable Sub DoNothing()
        End Sub
    End Class
    
    Public Class Derived
        Inherits Base
        Public Overrides Sub DoNothing()
        End Sub
    End Class

    Sub Main()
        Dim obj As Base = New Derived()
        Dim tick As New Stopwatch()

        tick.Start()

        For i As Integer = 0 To 100000000
            obj.DoNothing()
        Next

        tick.Stop()

        Dim elapsed As Long = tick.ElapsedMilliseconds

        Console.WriteLine(elapsed.ToString())
    End Sub
End Module
