<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="SMS.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <table align="center">
           <tr>
               <td colspan="2">
                  <asp:Image runat="server" ImageUrl="~/img/logo.jpg" />
               </td>
           </tr>
           <tr >
               <td class="style1" >
                   <asp:Label runat="server" ID="lblPerdoruesi" Text="Perdoruesi" CssClass="style1"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtPerdoruesi" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="style1">
                   <asp:Label runat="server" ID="lblFjalekalimi" Text="Fjalekalimi:" CssClass="style1"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtFjalekalimi"  runat="server" TextMode="Password"></asp:TextBox>
                   
               </td>
           </tr>
           <tr>
               <td colspan="2" class="style1">
                   <asp:Button runat="server" ID="btnQasu" Text="Qasu" OnClick="btnQasu_Click" />
                   </td>
           </tr>
           <tr>
               <td colspan="2" class="style1">
                   <asp:CheckBox runat="server" Text="Me rikujto" id="ChkRikujto"/>
               </td>
           </tr>
           <tr>
               <td colspan="2" class="style1">
                   <asp:Button runat="server" Text="Perdoruesi ri" OnClick="Unnamed2_Click" />
               </td>
           </tr>
       </table>
    </form>
</body>
</html>
