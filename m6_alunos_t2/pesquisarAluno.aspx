<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pesquisarAluno.aspx.cs" Inherits="m6_alunos_t2.pesquisarAluno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" SelectCommand="SELECT nprocesso, nome, data_nascimento FROM Alunos WHERE (nome LIKE '%' + @nome + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="nome" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        Nome:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Pesquisar" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="nprocesso" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="nprocesso" HeaderText="nprocesso" InsertVisible="False" ReadOnly="True" SortExpression="nprocesso" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="data_nascimento" HeaderText="data_nascimento" SortExpression="data_nascimento" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
