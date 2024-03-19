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
        For i As Integer = 0 To 100000000
            obj.DoNothing()
        Next
    End Sub  
End Module