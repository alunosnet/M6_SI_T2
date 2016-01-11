<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alunomelhormedia.aspx.cs" Inherits="m6_alunos_t2.alunomelhormedia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" SelectCommand="SELECT TOP (1) alunos.nome, AVG(Notas.nota) AS Media FROM alunos INNER JOIN Notas ON alunos.nprocesso = Notas.nprocesso GROUP BY alunos.nprocesso, alunos.nome ORDER BY Media DESC"></asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                nome:
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                Media:
                <asp:TextBox ID="MediaTextBox" runat="server" Text='<%# Bind("Media") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                nome:
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                Media:
                <asp:TextBox ID="MediaTextBox" runat="server" Text='<%# Bind("Media") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                nome:
                <asp:Label ID="nomeLabel" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                Media:
                <asp:Label ID="MediaLabel" runat="server" Text='<%# Bind("Media") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
