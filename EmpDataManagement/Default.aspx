<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            text-align: left;
            color: black;
            height: 53px;
            width: 105px;
        }
        .auto-style2 {
            height: 53px;
        }
        .auto-style3 {
            width: 105px;
        }
        .auto-style4 {
            text-align: left;
            color: black;
            width: 105px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="headd">
    
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/Employee.png" />
        </div>
    <div id="main"><div id="login">
        <table class="tbllogin">
            <tr>
                <td class="tblloginhead" colspan="2">
                    Login</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Username :
                </td>
                <td>
                    <asp:TextBox ID="txtuname" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txtuname" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Password :
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="txtpass" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Type" Text="Admin" />
                </td>
                <td class="auto-style2">
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Type" Text="Employee" />
                </td>
            </tr>

            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Login" 
                        onclick="Button1_Click" Width="123px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lbl" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        </div></div>
    <div id="foot"> </div>
    </form>
</body>
</html>
