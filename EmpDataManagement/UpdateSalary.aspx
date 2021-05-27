<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateSalary.aspx.cs" Inherits="GenerateSalary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
    {
        width: 699px;
    }
    .style2
    {
        width: 103px;
    }
    .style3
    {
        width: 702px;
    }
    .style4
    {
        height: 32px;
    }
        .style6
        {
            text-align: right;
            color: Green;
            width: 217px;
        }
        .style7
        {
            width: 217px;
        }
        .style9
        {
            width: 186px;
        }
        .auto-style1 {
            width: 215px;
        }
        .auto-style2 {
            width: 215px;
            height: 22px;
        }
        .auto-style3 {
            height: 22px;
        }
        .auto-style5 {
            width: 199px;
            height: 22px;
        }
        .auto-style6 {
            width: 199px;
        }
        .auto-style12 {
            border: solid 1px #942323;
            padding-left: 3px;
            background: #e6ffee;
            margin-right: 5px;
        }
        .auto-style13 {
            width: 215px;
            height: 26px;
        }
        .auto-style14 {
            width: 199px;
            height: 26px;
        }
        .auto-style15 {
            height: 26px;
        }
    .auto-style16 {
        width: 113px;
    }
    .auto-style17 {
        width: 113px;
        height: 22px;
    }
    .auto-style18 {
        width: 113px;
        height: 26px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl" style="margin-left=20px">
        <tr>
            <td class="tblhead">
                Update&nbsp; &amp; Salary</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style3" style="margin-left=20px">
                </td>
        </tr>
        <table class="tbl">
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style1">Enter Employee ID:
                        </td>
            <td class="auto-style6">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
            <td>
                            <asp:Button ID="btnsearch" runat="server" CssClass="btn" Text="Search" 
                                onclick="btnsearch_Click" Width="128px" />
                                    </td>
        </tr>
        <tr>
            <td class="auto-style17">
                &nbsp;</td>
            <td class="auto-style2">
                </td>
            <td class="auto-style5">
                </td>
            <td class="auto-style3">
                                                <asp:Label ID="err" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
        </tr>
        
        <tr>
            <td class="auto-style17">
                &nbsp;</td>
            <td class="auto-style2">
                Employee Name:</td>
            <td class="auto-style5">
                                                <asp:Label ID="lbldesign0" runat="server" CssClass="lbl" Text=""></asp:Label>
                                            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style17">
                &nbsp;</td>
            <td class="auto-style2">
                Current Designation:</td>
            <td class="auto-style5">
                                                <asp:Label ID="lbldesign" runat="server" CssClass="lbl" Text=""></asp:Label>
                                            </td>
            <td class="auto-style3">
                </td>
        </tr>
        
        <tr>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style1">
                Current Salary:</td>
            <td class="auto-style6">
                                                <asp:Label ID="lblsalary" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style17">
                &nbsp;</td>
            <td class="auto-style2">
                Change Designation : </td>
            <td class="auto-style5">
                            <asp:DropDownList ID="drpdesignation" runat="server" CssClass="auto-style12" Height="20px" Width="128px">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>ASE</asp:ListItem>
                                <asp:ListItem>SE</asp:ListItem>
                                <asp:ListItem>HR</asp:ListItem>
                                <asp:ListItem>Trainer</asp:ListItem>
                                <asp:ListItem>SME</asp:ListItem>
                                <asp:ListItem>TL</asp:ListItem>
                            </asp:DropDownList>
                            </td>
            <td class="auto-style3">
                </td>
        </tr>
        
        <tr>
            <td class="auto-style18">
                &nbsp;</td>
            <td class="auto-style13">
                Update Salary :</td>
            <td class="auto-style14">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
            <td class="auto-style15">
                            <asp:Button ID="btnupdate" CssClass="btn" runat="server" OnClick="Button11_Click" Text="Update" Width="129px" />
                                    </td>
        </tr>
        
        <tr>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td>
                                                <asp:Label ID="err0" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
        </tr>
        </table>
        </table>
</asp:Content>

