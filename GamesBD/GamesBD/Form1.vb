Imports System.Data.SqlClient

Private Sub TestDBConnection(ByVal dbServer As String, ByVal dbName As String, ByVal userName As String, ByVal userPass As String)

    Dim CN As New SqlConnection("Data Source=tcp:mednat.ieeta.pt\\SQLSERVER,8101;User ID=p2g4;Password=")

    Try
        CN.Open()
        If CN.State = ConnectionState.Open Then
            MsgBox("Successful connection to database " & CN.Database & " on the " & CN.DataSource &
            " server", MsgBoxStyle.OkOnly, "Connection Test")
        End If
    Catch ex As Exception
        MsgBox("FAILED TO OPEN CONNECTION TO DATABASE DUE TO THE FOLLOWING ERROR" & vbCrLf &
        ex.Message, MsgBoxStyle.Critical, "Connection Test")
    End Try
    If CN.State = ConnectionState.Open Then CN.Close()

End Sub

Public Class Form1

End Class
