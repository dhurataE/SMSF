<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Stafi.aspx.cs" Inherits="SMS.Stafi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Regjistrimi Stafit te Spitalit ne Ferizajit</h3>
    <table>
        <tr>
            <td><asp:Label runat="server" ID="lblIDStafi" >ID Stafi:</asp:Label></td>
            <td><asp:TextBox runat="server" ID="txtStafi" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 22px">
                <asp:Label ID="lblEmri" runat="server" Text="Emri:"></asp:Label>
            </td>
             <td style="height: 22px">
                 <asp:TextBox ID="txtEmri" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMbiemri" runat="server" Text="Mbiemri:"></asp:Label>
            </td>
             <td>
                 <asp:TextBox ID="txtMbiemri" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSpecjalizimi" runat="server" Text="Specializimi:"></asp:Label>
            </td>
             <td>
                 <asp:TextBox ID="txtSpecializimi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblNumriKontaktues" runat="server" Text="Nr. kontaktues:"></asp:Label>
            </td>
             <td>
                 <asp:TextBox ID="txtNrKontaktues" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPaga" runat="server" Text="Paga:"></asp:Label>
            </td>
             <td>
                 <asp:TextBox ID="txtPaga" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPozita" runat="server" Text="Pozita:"></asp:Label>
            </td>
             <td>
                 <asp:DropDownList ID="ddlPozita" runat="server">
                     <asp:ListItem Value="1">Mjek</asp:ListItem>
                     <asp:ListItem Value="2">Infermier</asp:ListItem>
                     <asp:ListItem Value="3">Mjek Specialist</asp:ListItem>
                     <asp:ListItem Value="4">Drejtor</asp:ListItem>
                     <asp:ListItem></asp:ListItem>
                 </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPerdoruesi" runat="server" Text="Perdoruesi:"></asp:Label>
            </td>
             <td>
                 <asp:TextBox ID="txtPerdoruesi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblFjalekalimi" runat="server" Text="Fjalekalimi:"></asp:Label>
            </td>
             <td>
                 <asp:TextBox ID="txtFjalekalimi" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblRoli" runat="server" Text="Roli:"></asp:Label>
            </td>
             <td>
                 <asp:DropDownList ID="ddlRoli" runat="server">
                     <asp:ListItem Value="1">Staf</asp:ListItem>
                     <asp:ListItem Value="2">Admin</asp:ListItem>
                 </asp:DropDownList>
             </td>
        </tr>
            <tr>
            <td colspan="2"> 
                <br /><asp:Button ID="btnRuaj" runat="server" Text="Ruaj" OnClick="btnRuaj_Click"  />
                <asp:Button ID="btnEdito" runat="server" Text="Edito" OnClick="btnEdito_Click"  />
                <asp:Button ID="btnFshi" runat="server" Text="Fshi" OnClick="btnFshi_Click"  />
                 <asp:Button ID="btnPastro" runat="server" Text="Pastro"   />
                </td>
          
        </tr>
        <tr>
           <td colspan="2">
            <br />
            <asp:TextBox runat="server" ID="txtKerko" Width="113px" >Kerko</asp:TextBox>
                <asp:Button runat="server" Text="Kerko" ID="btnKerko" OnClick="btnKerko_Click"  />
            </td>
          
        </tr>
        <tr>
            <td colspan="2"> <asp:label ID="lblRez" runat="server"></asp:label></td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
</asp:Content>
