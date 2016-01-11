<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionarDisciplinas.aspx.cs" Inherits="m6_alunos_t2.adicionarDisciplinas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" InsertCommand="INSERT INTO Disciplinas(nome, nr_modulos) VALUES (@nome, @nr_modulos)" SelectCommand="SELECT Disciplinas.* FROM Disciplinas">
            <InsertParameters>
                <asp:Parameter Name="nome" />
                <asp:Parameter Name="nr_modulos" />
            </InsertParameters>
        </asp:SqlDataSource>
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="codigo" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
                codigo:
                <asp:Label ID="codigoLabel1" runat="server" Text='<%# Eval("codigo") %>' />
                <br />
                nome:
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                nr_modulos:
                <asp:TextBox ID="nr_modulosTextBox" runat="server" Text='<%# Bind("nr_modulos") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                nome:
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                nr_modulos:
                <asp:TextBox ID="nr_modulosTextBox" runat="server" Text='<%# Bind("nr_modulos") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                codigo:
                <asp:Label ID="codigoLabel" runat="server" Text='<%# Eval("codigo") %>' />
                <br />
                nome:
                <asp:Label ID="nomeLabel" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                nr_modulos:
                <asp:Label ID="nr_modulosLabel" runat="server" Text='<%# Bind("nr_modulos") %>' />
                <br />
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
