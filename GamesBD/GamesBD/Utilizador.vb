<Serializable()> Public Class Utilizador
    Private _Telemovel As String
    Private _Regiao As String
    Private _ID As String
    Private _Email As String
    Private _Nome As String

    Property Telemovel() As String
        Get
            Return _Telemovel
        End Get
        Set(value As String)
            If value Is Nothing Or value = "" Then
                Throw New Exception("Campo Telemóvel não pode estar vazio")
                Exit Property
            End If
            _Telemovel = value
        End Set
    End Property

    Property Regiao() As String
        Get
            Return _Regiao
        End Get
        Set(value As String)
            _Regiao = value
        End Set
    End Property

    Property ID() As String
        Get
            Return _ID
        End Get
        Set(value As String)
            _ID = value
        End Set
    End Property

    Property Email() As String
        Get
            Return _Email
        End Get
        Set(value As String)
            If value Is Nothing Or value = "" Then
                Throw New Exception("Campo Email não pode estar vazio")
                Exit Property
            End If
            _Email = value
        End Set
    End Property

    Property Nome() As String
        Get
            Return _Nome
        End Get
        Set(value As String)
            If value Is Nothing Or value = "" Then
                Throw New Exception("Campo Nome não pode estar vazio")
                Exit Property
            End If
            _Nome = value
        End Set
    End Property

    Public Overrides Function ToString() As String
        Return _Nome & "  " & _Email & "  " & _Regiao & "  " & _ID
    End Function

    Public Sub New()
        MyBase.New()
    End Sub

    Public Sub New(ByVal Nome As String)
        MyBase.New()
        Me.Nome = Nome
    End Sub
End Class
