<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mediapordisciplina.aspx.cs" Inherits="m6_alunos_t2.mediapordisciplina" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" SelectCommand="SELECT Disciplinas.nome, AVG(Notas.nota) AS Expr1 FROM Disciplinas INNER JOIN Notas ON Disciplinas.codigo = Notas.codigo_disciplina GROUP BY Disciplinas.codigo, Disciplinas.nome"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="Expr1" HeaderText="Expr1" ReadOnly="True" SortExpression="Expr1" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
