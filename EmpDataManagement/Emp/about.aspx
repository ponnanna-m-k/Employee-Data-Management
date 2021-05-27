<%@ Page Title="" Language="C#" MasterPageFile="~/Emp/Employee.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="ViewSalaryy" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">

        .tbl
        {
            width:100%;
            border:solid 1px green;
            
            }
         .tblhead
   {
     
     height:30px;
     font-size:medium;
     font-weight:bold;
     text-align:center;
     color:#fff;
       background:green;
       
       }
       
        .style1
        {
            width: 749px;
        }
        .style2
        {
            width: 69px;
        }
       
        .auto-style1 {
            width: 69px;
            height: 25px;
        }
        .auto-style2 {
            height: 25px;
        }
        .auto-style3 {
            height: 22px;
        }
        .auto-style4 {
            width: 639px;
        }
       
        .auto-style5 {
            height: 30px;
            font-size: larger;
            font-weight: bold;
            text-align: center;
            color: #fff;
            width: 725px;
            background: #942323;
        }
        .auto-style6 {
            height: 22px;
            width: 725px;
        }
        .auto-style7 {
            height: 30px;
            font-size: larger;
            font-weight: bold;
            text-align: center;
            color: #fff;
            width: 459px;
            background: #942323;
        }
        .auto-style8 {
            height: 22px;
            width: 459px;
        }
       
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style5">
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style1">
                        </td>
                        <td class="auto-style2">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="tblhead">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style6">
                <asp:Image ID="Image2" ImageUrl="~/img/about.jpg" runat="server" Height="328px" Width="640px" />
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

