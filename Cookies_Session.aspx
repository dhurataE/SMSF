<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookies_Session.aspx.cs" Inherits="SMS.Cookies_Session" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
  
            <h3> Krijimi i Coocies dhe Sessioneve</h3>
            <table>
                <tr>
                    <td>
                        <asp:Button runat="server" ID="btnCoocieAdd" OnClick="btnCoocieAdd_Click" Text="AddCoocies" />
                    </td>
                                       <td>   <asp:Button runat="server" ID="btnCoociesDelete"  Text="DeleteCoocies" OnClick="btnCoociesDelete_Click" /></td>  
                    
                    <td>  <asp:Label ID="Label1" runat="server" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button runat="server" ID="btnAddSessnion"  Text="AddSession" OnClick="btnAddSessnion_Click" />
                    </td>
                                       <td>   <asp:Button runat="server" ID="btnDeleteSession"  Text="DeleteSession" OnClick="btnDeleteSession_Click"  /></td>  
                    
                    <td>  <asp:Label ID="lblSession" runat="server" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
