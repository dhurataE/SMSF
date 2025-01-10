<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="S_C.aspx.cs" Inherits="SMS.S_C" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Ushtrime me pjesene  Sessioneve dhe Cookies</h3>
<table>
    <tr>
        <td>
            <asp:Button ID="btnRegjistroCookies" runat="server" Text="Ruaj Cookie" OnClick="btnRegjistroCookies_Click" />
            <asp:Button ID="btnFshiCookies" runat="server" Text="Fshi Cookie" OnClick="btnFshiCookies_Click" />
        </td>
        <td>
            <asp:Label ID="lblCookies" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btnRegjistroSessionet" runat="server" Text="Ruaj Sesionin" OnClick="btnRegjistroSessionet_Click" />
            <asp:Button ID="btnFshiSessionet" runat="server" Text="Fshi Sessionin" OnClick="btnFshiSessionet_Click" />
        </td>
        <td>
            <asp:Label runat="server" ID="lblSession" ></asp:Label>
        </td>
    </tr>
</table>

</asp:Content>
