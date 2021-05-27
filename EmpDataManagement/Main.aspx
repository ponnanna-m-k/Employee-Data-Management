<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
               </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <div id="acc">
                   <table class="style1">
                       <tr>
                           <td class="acc">
                               Total No. of Employees</td>
                       </tr>
                       <tr>
                           <td class="acc1">
                               <asp:Label ID="lblemp" runat="server" Text="0"></asp:Label>
                           </td>
                       </tr>
                   </table>
                </div>  <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">
                                Date</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lbldte" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div> <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">
                                Time</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lbltme" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                        <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick"></asp:Timer>

                    </table>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

