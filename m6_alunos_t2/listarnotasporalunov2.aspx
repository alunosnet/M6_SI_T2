<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listarnotasporalunov2.aspx.cs" Inherits="m6_alunos_t2.listarnotasporalunov2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SQLNotas">
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
