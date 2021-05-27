<%@ Page Title="" Language="C#" MasterPageFile="~/Emp/Employee.master" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="Emp_MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .auto-style1 {
            font-weight: bold;
            text-align: center;
            font-size: 20px;
            color: #fff;
            padding-top: 2px;
            height: 54px;
        }
    .auto-style5 {
        width: 156px;
    }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead" colspan="2">
                Account Summary</td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td>
               <div id="acc">
                   <table class="style1">
                       <tr>
                           <td class="acc">
                              Full Name</td>
                       </tr>
                       <tr>
                           <td class="auto-style1">
                               <asp:Label ID="lblfname" runat="server" Text="Name"></asp:Label>
                           </td>
                       </tr>
                   </table>
                </div>  <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">
                                Date of Join</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lbljoin" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                <%--</div> <div id="acc">--%>
                <%--    <table class="style1">
                        <tr>
                            <td class="acc">
                                </td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lblcleave" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                        <img src="data:image;base64,@System.Convert.ToBase64String(Model.CategoryPicture.Content)" Height="155px" Width="185px" />
                    </table>--%>
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td>
                <%--<div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">
                                Salary</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lblsalary" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>--%><div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">
                                Phone Number</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lblasal" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div><div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">
                                Designation</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lblrole" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div> </td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

