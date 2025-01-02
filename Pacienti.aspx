<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pacienti.aspx.cs" Inherits="SMS.Pacienti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   

    <h3>Regjistrimi Pacienteve -->Menyra e pare</h3>
    <table>
        <tr>
            <td>
                <asp:Label runat="server" ID="lblEmri">Emri: </asp:Label>
            </td>
            <td> 
                <asp:TextBox runat="server" ID="txtEmri" />
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
                <asp:Label ID="lblData" runat="server" Text="Data lindjes:"></asp:Label>
               </td>
            <td>
     <asp:TextBox ID="txtDataLindjes" runat="server"  />
<asp:Image ID="Image1" runat="server" ImageUrl="calendar.webp"   />
<asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                
               </td>
        </tr>
           <tr>
            <td style="height: 22px">
                <asp:Label ID="lblNumriKontaktues" runat="server" Text="Numri kontaktues:"></asp:Label>
               </td>
            <td style="height: 22px">
                <asp:TextBox ID="txtNumriKontaktues" runat="server"></asp:TextBox>
             
            
               </td>
        </tr>
           <tr>
            <td>
                <asp:Label ID="lblHPacientit" runat="server" Text="Historia Pacientit:"></asp:Label>
               </td>
            <td>
                <asp:TextBox ID="txtHistoria_P" runat="server" Height="57px" Width="183px"></asp:TextBox>
               </td>
        </tr>
           <tr>
            <td colspan="2"> <asp:Button ID="btnRuaj" runat="server" Text="Ruaj" OnClick="btnRuaj_Click" />
                <asp:Button ID="btnEdito" runat="server" Text="Edito" OnClick="btnEdito_Click" />
                <asp:Button ID="btnFshi" runat="server" Text="Fshi" OnClick="btnFshi_Click" />
                 <asp:Button ID="btnPastro" runat="server" Text="Pastro" OnClick="btnPastro_Click"  />
                </td>
          
        </tr>
        <tr>
           <td colspan="2">
            
            <asp:TextBox runat="server" ID="txtKerko" Width="113px" >Kerko</asp:TextBox>
                <asp:Button runat="server" Text="Kerko" ID="btnKerko" OnClick="btnKerko_Click" />
            </td>
          
        </tr>
        <tr> <td colspan="2"><asp:Label runat="server" id="lblNjoftim"></asp:Label></td></tr>
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
