﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mediapordisciplina.aspx.cs" Inherits="m6_alunos_t2.mediapordisciplina" %>

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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" SelectCommand="SELECT Disciplinas.nome, AVG(Notas.nota) AS Expr1 FROM Disciplinas INNER JOIN Notas ON Disciplinas.codigo = Notas.codigo_disciplina GROUP BY Disciplinas.codigo, Disciplinas.nome"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table">
            <Columns>
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="Expr1" HeaderText="Expr1" ReadOnly="True" SortExpression="Expr1" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
