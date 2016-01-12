<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listarnotasporalunov2.aspx.cs" Inherits="m6_alunos_t2.listarnotasporalunov2" %>

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
    
        <asp:SqlDataSource ID="SQLNotas" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" SelectCommand="SELECT codigo_disciplina, nr_modulo, nota FROM Notas WHERE (nprocesso = @nprocesso)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="nprocesso" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SQLAlunos" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" SelectCommand="SELECT nprocesso, nome, data_nascimento FROM alunos"></asp:SqlDataSource>
        Nome
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SQLAlunos" DataTextField="nome" DataValueField="nprocesso">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Pesquisar" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SQLNotas" CssClass="table">
            <Columns>
                <asp:BoundField DataField="codigo_disciplina" HeaderText="codigo_disciplina" SortExpression="codigo_disciplina" />
                <asp:BoundField DataField="nr_modulo" HeaderText="nr_modulo" SortExpression="nr_modulo" />
                <asp:BoundField DataField="nota" HeaderText="nota" SortExpression="nota" />
            </Columns>
        </asp:GridView>
        <br />
    
    </div>
    </form>
</body>
</html>
