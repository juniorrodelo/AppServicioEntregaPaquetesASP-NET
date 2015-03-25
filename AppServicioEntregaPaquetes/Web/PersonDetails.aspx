<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonDetails.aspx.cs" Inherits="AppServicioEntregaPaquetes.Web.PersonDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="../static/css/bootstrap.css" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Identificacion"></asp:Label>
        <asp:TextBox ID="tbId" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Names"></asp:Label>
        <asp:TextBox ID="tbNames" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
        <asp:TextBox ID="tbCity" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
        <asp:TextBox ID="tbState" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Box"></asp:Label>
        <asp:TextBox ID="tbBox" runat="server"></asp:TextBox>
        <br />

        <asp:Button CssClass="btn btn-primary" ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Enviar" />
    </div>
    </form>
</body>
</html>
