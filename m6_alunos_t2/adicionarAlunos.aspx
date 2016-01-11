<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionarAlunos.aspx.cs" Inherits="m6_alunos_t2.adicionarAlunos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" InsertCommand="INSERT INTO alunos(nome, data_nascimento) VALUES (@nome, @data_nascimento)" SelectCommand="SELECT nprocesso, nome, data_nascimento FROM alunos">
            <InsertParameters>
                <asp:Parameter Name="nome" />
                <asp:Parameter Name="data_nascimento"
                    convertemptystringtonull="true"
                    type="DateTime" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="nprocesso" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
                nprocesso:
                <asp:Label ID="nprocessoLabel1" runat="server" Text='<%# Eval("nprocesso") %>' />
                <br />
                nome:
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                data_nascimento:
                <asp:TextBox ID="data_nascimentoTextBox" runat="server" Text='<%# Bind("data_nascimento") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                nome:
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                data_nascimento:
                <asp:TextBox ID="data_nascimentoTextBox" runat="server" Text='<%# Bind("data_nascimento") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                nprocesso:
                <asp:Label ID="nprocessoLabel" runat="server" Text='<%# Eval("nprocesso") %>' />
                <br />
                nome:
                <asp:Label ID="nomeLabel" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                data_nascimento:
                <asp:Label ID="data_nascimentoLabel" runat="server" Text='<%# Bind("data_nascimento") %>' />
                <br />
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
