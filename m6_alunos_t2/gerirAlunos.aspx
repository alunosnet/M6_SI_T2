<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gerirAlunos.aspx.cs" Inherits="m6_alunos_t2.gerirAlunos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" DeleteCommand="DELETE FROM Alunos WHERE (nprocesso = @nprocesso)" SelectCommand="select * from alunos" UpdateCommand="UPDATE Alunos SET nome = @nome, data_nascimento = @data_nascimento WHERE (nprocesso = @nprocesso)">
            <DeleteParameters>
                <asp:Parameter Name="nprocesso" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="nome" />
                <asp:Parameter Name="data_nascimento" />
                <asp:Parameter Name="nprocesso" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="nprocesso" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="nprocesso" HeaderText="nprocesso" InsertVisible="False" ReadOnly="True" SortExpression="nprocesso" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="data_nascimento" HeaderText="data_nascimento" SortExpression="data_nascimento" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
