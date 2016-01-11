<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gerirDisciplinas.aspx.cs" Inherits="m6_alunos_t2.gerirDisciplinas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" DeleteCommand="delete from disciplinas where codigo=@codigo" SelectCommand="select * from disciplinas" UpdateCommand="UPDATE Disciplinas SET nome = @nome, nr_modulos = @nr_modulos WHERE (codigo = @codigo)">
            <DeleteParameters>
                <asp:Parameter Name="codigo" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="nome" />
                <asp:Parameter Name="nr_modulos" />
                <asp:Parameter Name="codigo" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="codigo" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="codigo" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="nr_modulos" HeaderText="nr_modulos" SortExpression="nr_modulos" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
