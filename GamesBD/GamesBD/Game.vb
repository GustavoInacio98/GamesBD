<Serializable()> Public Class Game
    Private _Nome As String
    Private _JogoID As String
    Private _Preco As String
    Private _DataLancamento As String
    Private _Rating As String
    Private _Categoria As String
    Private _EspecifacoesTecnicas As String

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

    Property JogoID() As String
        Get
            Return _JogoID
        End Get
        Set(value As String)
            If value Is Nothing Or value = "" Then
                Throw New Exception("Campo JogoID não pode estar vazio")
                Exit Property
            End If
            _JogoID = value
        End Set
    End Property

    Property Preco() As String
        Get
            Return _Preco
        End Get
        Set(value As String)
            _Preco = value
        End Set
    End Property

    Property DataLancamento() As String
        Get
            Return _DataLancamento
        End Get
        Set(value As String)
            If value Is Nothing Or value = "" Then
                Throw New Exception("Campo Data de Lançamento não pode estar vazio")
                Exit Property
            End If
            _DataLancamento = value
        End Set
    End Property

    Property Rating() As String
        Get
            Return _Rating
        End Get
        Set(value As String)
            If value Is Nothing Or value = "" Then
                Throw New Exception("Campo Rating não pode estar vazio")
                Exit Property
            End If
            _Rating = value
        End Set
    End Property

    Property Categoria() As String
        Get
            Return _Categoria
        End Get
        Set(value As String)
            If value Is Nothing Or value = "" Then
                Throw New Exception("Campo Categoria não pode estar vazio")
                Exit Property
            End If
            _Categoria = value

        End Set
    End Property

    Property EspecificacoesTecnicas() As String
        Get
            Return _EspecifacoesTecnicas
        End Get
        Set(value As String)
            _EspecifacoesTecnicas = value
        End Set
    End Property

    Overrides Function ToString() As String
        Return _JogoID & "   " & _Rating & "     " & _Nome
    End Function

    Public Sub New()
        MyBase.New()
    End Sub

    Public Sub New(ByVal Nome As String)
        MyBase.New()
        Me.Nome = Nome
    End Sub

End Class
