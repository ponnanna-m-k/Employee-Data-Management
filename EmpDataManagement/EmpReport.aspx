<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EmpReport.aspx.cs" Inherits="EmpReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 574px;
            height: 22px;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            height: 33px;
        }
        .auto-style1 {
            width: 13px;
        }
        .auto-style2 {
            text-align: left;
            color: black;
            width: 13px;
        }
    .auto-style3 {
        text-align: left;
        color: black;
        height: 22px;
    }
    .auto-style4 {
        height: 22px;
    }
    .auto-style5 {
        text-align: left;
        color: black;
        width: 13px;
        height: 22px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Employee Report</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Search Employee :
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnsearch" runat="server" CssClass="btn" Text="Search" 
                                onclick="btnsearch_Click" Width="128px" />
                                    <asp:Label ID="lbl" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <%--<asp:View ID="View1" runat="server">--%>
                        <table class="style2">
                            <tr>
                                <td bgcolor="#FFCCFF" style="color: #008000" class="style3">
                                    <strong>Employee Detail </strong>
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#FFFFCC">
                                    <table align="center" class="style1">
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td class="auto-style1">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                First
                                                Name :
                                            </td>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblname" runat="server" CssClass="lbl" Text=""></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td class="auto-style1">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td class="auto-style1">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Last Name&nbsp;
                                            </td>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lstname" runat="server" CssClass="lbl" Text=""></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td class="lbl">
                                                Salary :
                                                  <td class="auto-style2">
                                                      &nbsp;<td>
                                                <asp:Label ID="lblsalary" runat="server" CssClass="lbl" Text=""></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td class="lbl">
                                                &nbsp;<td class="auto-style2">
                                                &nbsp;<td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Mobile :
                                            </td>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblmobile" runat="server" CssClass="lbl" Text=""></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td class="lbl">
                                                Email :
                                            </td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblemail" runat="server" CssClass="lbl" Text=""></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td class="auto-style2">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style3">
                                                Designation :
                                            </td>
                                            <td class="auto-style3">
                                                </td>
                                            <td class="auto-style4">
                                                </td>
                                            <td class="auto-style4">
                                                <asp:Label ID="lbldesign" runat="server" CssClass="lbl" Text=""></asp:Label>
                                            </td>
                                            <td class="auto-style4">
                                                </td>
                                            <td class="auto-style4">
                                                </td>
                                            <td class="auto-style3">
                                                Status :
                                            </td>
                                            <td class="auto-style5">
                                                </td>
                                            <td class="auto-style4">
                                                <asp:Label ID="lblstatus" runat="server" CssClass="lbl" Text=""></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td class="auto-style1">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td class="auto-style1">
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="btndelemp" runat="server" CssClass="btn" 
                                                    onclick="btndelemp_Click" Text="DELETE" Width="120px" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    <%--</asp:View>--%>
            </td>
        </tr>
        </table>
</asp:Content>

