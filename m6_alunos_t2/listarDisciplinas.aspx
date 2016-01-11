<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listarDisciplinas.aspx.cs" Inherits="m6_alunos_t2.listarDisciplinas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" SelectCommand="SELECT * FROM [Disciplinas]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="codigo" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="codigo" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="nr_modulos" HeaderText="nr_modulos" SortExpression="nr_modulos" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
