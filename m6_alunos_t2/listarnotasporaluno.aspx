<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listarnotasporaluno.aspx.cs" Inherits="m6_alunos_t2.listarnotasporaluno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" SelectCommand="SELECT alunos.nome, Notas.codigo_disciplina, Notas.nr_modulo, Notas.nota FROM alunos INNER JOIN Notas ON alunos.nprocesso = Notas.nprocesso WHERE (alunos.nome LIKE '%' + @nome + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="nome" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        Nome:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Pesquisar" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="codigo_disciplina" HeaderText="codigo_disciplina" SortExpression="codigo_disciplina" />
                <asp:BoundField DataField="nr_modulo" HeaderText="nr_modulo" SortExpression="nr_modulo" />
                <asp:BoundField DataField="nota" HeaderText="nota" SortExpression="nota" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
