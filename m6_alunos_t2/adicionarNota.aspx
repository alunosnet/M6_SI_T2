<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionarNota.aspx.cs" Inherits="m6_alunos_t2.adicionarNota" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SQLNotas" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" InsertCommand="INSERT INTO Notas(nprocesso, codigo_disciplina, nr_modulo, data, nota) VALUES (@nprocesso, @codigo_disciplina, @nr_modulo, @data, @nota)" SelectCommand="select * from notas">
            <InsertParameters>
                <asp:Parameter Name="nprocesso" />
                <asp:Parameter Name="codigo_disciplina" />
                <asp:Parameter Name="nr_modulo" />
                <asp:Parameter Name="data" />
                <asp:Parameter Name="nota" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SQLAlunos" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" SelectCommand="select * from alunos"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SQLDisciplinas" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t2ConnectionString %>" SelectCommand="select * from disciplinas"></asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="nr_nota" DataSourceID="SQLNotas" DefaultMode="Insert" Width="384px">
            <EditItemTemplate>
                nr_nota:
                <asp:Label ID="nr_notaLabel1" runat="server" Text='<%# Eval("nr_nota") %>' />
                <br />
                nprocesso:
                <asp:TextBox ID="nprocessoTextBox" runat="server" Text='<%# Bind("nprocesso") %>' />
                <br />
                codigo_disciplina:
                <asp:TextBox ID="codigo_disciplinaTextBox" runat="server" Text='<%# Bind("codigo_disciplina") %>' />
                <br />
                nr_modulo:
                <asp:TextBox ID="nr_moduloTextBox" runat="server" Text='<%# Bind("nr_modulo") %>' />
                <br />
                data:
                <asp:TextBox ID="dataTextBox" runat="server" Text='<%# Bind("data") %>' />
                <br />
                nota:
                <asp:TextBox ID="notaTextBox" runat="server" Text='<%# Bind("nota") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                nprocesso:
                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("nprocesso") %>' DataSourceID="SQLAlunos" DataTextField="nome" DataValueField="nprocesso">
                </asp:DropDownList>
                <br />
                codigo_disciplina:
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SQLDisciplinas" DataTextField="nome" DataValueField="codigo" SelectedValue='<%# Bind("codigo_disciplina") %>'>
                </asp:DropDownList>
                <br />
                nr_modulo:
                <asp:TextBox ID="nr_moduloTextBox" runat="server" Text='<%# Bind("nr_modulo") %>' />
                <br />
                data:
                <asp:TextBox ID="dataTextBox" runat="server" Text='<%# Bind("data") %>' />
                <br />
                nota:
                <asp:TextBox ID="notaTextBox" runat="server" Text='<%# Bind("nota") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                nr_nota:
                <asp:Label ID="nr_notaLabel" runat="server" Text='<%# Eval("nr_nota") %>' />
                <br />
                nprocesso:
                <asp:Label ID="nprocessoLabel" runat="server" Text='<%# Bind("nprocesso") %>' />
                <br />
                codigo_disciplina:
                <asp:Label ID="codigo_disciplinaLabel" runat="server" Text='<%# Bind("codigo_disciplina") %>' />
                <br />
                nr_modulo:
                <asp:Label ID="nr_moduloLabel" runat="server" Text='<%# Bind("nr_modulo") %>' />
                <br />
                data:
                <asp:Label ID="dataLabel" runat="server" Text='<%# Bind("data") %>' />
                <br />
                nota:
                <asp:Label ID="notaLabel" runat="server" Text='<%# Bind("nota") %>' />
                <br />
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SQLNotas">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
