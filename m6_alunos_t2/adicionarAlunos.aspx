<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionarAlunos.aspx.cs" Inherits="m6_alunos_t2.adicionarAlunos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
<div class="container">
    <!--Menu-->
    <nav class="navbar navbar-default">
        <ul class="nav navbar-nav">
            <!--Aluno-->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Alunos<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="adicionaralunos.aspx">Adicionar</a></li>
                    <li><a href="geriralunos.aspx">Gerir</a></li>
                    <li><a href="listaralunos.aspx">Listar</a></li>
                    <li><a href="pesquisaraluno.aspx">Pesquisar</a></li>
                </ul>
            </li>
            <!--Aluno-->
            <!--Disciplina-->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Disciplinas<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="adicionardisciplinas.aspx">Adicionar</a></li>
                    <li><a href="gerirdisciplinas.aspx">Gerir</a></li>
                    <li><a href="listardisciplinas.aspx">Listar</a></li>
                </ul>
            </li>
            <!--Disciplina-->
            <!--Notas-->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Notas<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="adicionarnota.aspx">Adicionar</a></li>
                    <li><a href="listarnotasporaluno.aspx">Listar</a></li>
                    <li><a href="listarnotasporalunov2.aspx">Listar V2</a></li>
                </ul>
            </li>
            <!--Notas-->
            <!--Consultas-->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Consultas<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="alunomelhormedia.aspx">Melhor Média</a></li>
                    <li><a href="alunosmelhorquemedia.aspx">Alunos Melhores Média</a></li>
                    <li><a href="mediaporaluno.aspx">Média por Aluno</a></li>
                    <li><a href="mediapordisciplina.aspx">Média por Disciplina</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <!--Menu-->
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" InsertCommand="INSERT INTO alunos(nome, data_nascimento) VALUES (@nome, @data_nascimento)" SelectCommand="SELECT nprocesso, nome, data_nascimento FROM alunos">
            <InsertParameters>
                <asp:Parameter Name="nome" />
                <asp:Parameter Name="data_nascimento"
                    convertemptystringtonull="true"
                    type="DateTime" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="nprocesso" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
                nprocesso:
                <asp:Label ID="nprocessoLabel1" runat="server" Text='<%# Eval("nprocesso") %>' />
                <br />
                nome:
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                data_nascimento:
                <asp:TextBox ID="data_nascimentoTextBox" runat="server" Text='<%# Bind("data_nascimento") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                nome:
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                data_nascimento:
                <asp:TextBox ID="data_nascimentoTextBox" runat="server" Text='<%# Bind("data_nascimento") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                nprocesso:
                <asp:Label ID="nprocessoLabel" runat="server" Text='<%# Eval("nprocesso") %>' />
                <br />
                nome:
                <asp:Label ID="nomeLabel" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                data_nascimento:
                <asp:Label ID="data_nascimentoLabel" runat="server" Text='<%# Bind("data_nascimento") %>' />
                <br />
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
