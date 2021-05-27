<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddEmployee.aspx.cs" Inherits="AddEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 715px;
    }
        .auto-style3 {
            height: 23px;
        }
        .auto-style5 {
            text-align: left;
            color: black;
            height: 28px;
        }
        .auto-style6 {
            height: 28px;
        }
        .auto-style8 {
            text-align: left;
            color: black;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
        .auto-style12 {
            border: solid 1px #942323;
            padding-left: 3px;
            background: #e6ffee;
            margin-right: 5px;
        }
        .auto-style14 {
            text-align: left;
            color: black;
            height: 22px;
        }
        .auto-style15 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <div class="auto-style13">
            <td class="tblhead">ADD NEW EMPLOYEE</td>
    </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style1">
                    <tr>
                        <td class="auto-style8">Employee ID</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtname0" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="txtname" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">First Name : </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtname" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style9"></td>
                        <td class="auto-style9"></td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Last Name : </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtadd" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtadd" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style6"></td>
                        <td class="auto-style6">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Email : </td>
                        <td>
                            <asp:TextBox ID="txtcity" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtcity" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Mobile :
                    </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtmoile" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtmoile" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style6"></td>
                        <td class="auto-style6">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Designation : </td>
                        <td class="auto-style6">
                            <asp:DropDownList ID="drpdesignation" runat="server" CssClass="auto-style12" Height="20px" Width="120px">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>ASE</asp:ListItem>
                                <asp:ListItem>SE</asp:ListItem>
                                <asp:ListItem>HR</asp:ListItem>
                                <asp:ListItem>Trainer</asp:ListItem>
                                <asp:ListItem>SME</asp:ListItem>
                                <asp:ListItem>TL</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="drpdesignation" ErrorMessage="**" ForeColor="Red" 
                            InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style6"></td>
                        <td class="auto-style6"></td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Date of Join :</td>
                        <td class="auto-style15">
                            <asp:TextBox ID="TextBox2" textmode="Date" runat="server" Width="120px"></asp:TextBox>
                        </td>
                        <td class="auto-style15"></td>
                        <td class="auto-style15"></td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Salary :</td>
                        <td class="auto-style15">
                            <asp:TextBox ID="TextBox1" runat="server" Width="120px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txtmoile" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style15">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style15">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3"></td>
                        <td class="auto-style3">
                            <asp:Button ID="btnaddempl" runat="server" CssClass="btn" Text="ADD Empoyee" 
                            Width="120px" onclick="btnaddempl_Click" />
                        </td>
                        <td class="auto-style3"></td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lbl" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </div>
        </tr>
</table>
</asp:Content>

