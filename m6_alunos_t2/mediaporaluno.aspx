<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mediaporaluno.aspx.cs" Inherits="m6_alunos_t2.mediaporaluno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" SelectCommand="SELECT alunos.nprocesso, alunos.nome, AVG(Notas.nota) AS Expr1 FROM alunos INNER JOIN Notas ON alunos.nprocesso = Notas.nprocesso GROUP BY alunos.nprocesso, alunos.nome"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="nprocesso" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="nprocesso" HeaderText="nprocesso" InsertVisible="False" ReadOnly="True" SortExpression="nprocesso" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="Expr1" HeaderText="Expr1" ReadOnly="True" SortExpression="Expr1" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
