<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Login" Culture="Auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .style1
        {
            width: 81%;
            margin-right: 0px;
            height: 330px;
        }
        #Reset1
        {
            width: 84px;
        }
        .style11
        {
            width: 262px;
            text-align: right;
            font-family: Calibri;
            height: 35px;
        }
        .style12
        {
            text-align: left;
            width: 190px;
            height: 35px;
        }
        .style13
        {
            width: 441px;
            height: 35px;
            text-align: left;
        }
        .style14
        {
            text-align: center;
        }
        .style15
        {
            font-size: x-large;
            font-weight: normal;
            font-family: "Times New Roman", Times, serif;
        }
        #form1
        {
            height: 33px;
        }
        
    </style>
   
       
   
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Reset1_onclick() {

        }

       

// ]]>
    </script>
</head>
<body style="height: 29px">
    <form id="form1" runat="server">
    <div class="backimg">
    <div class="style14">
        <h1 class="style15">
            <strong>Registration Page</strong></h1>
    </div>
    <div style="height: 7px">
    
    <table class="style1" align="center" bgcolor="White">
        <tr>
            <td class="style11">
                First Name</td>
            <td class="style12">
                <asp:TextBox ID="TextBoxfname" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxfname" ErrorMessage="Enter First Name" 
                    ForeColor="#FF3300" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Last Name</td>
            <td class="style12">
                <asp:TextBox ID="TextBoxlname" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxlname" ErrorMessage="Enter Last Name" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                UserName</td>
            <td class="style12">
                <asp:TextBox ID="TextBoxuname" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxuname" ErrorMessage="Enter User Name" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                E-Mail</td>
            <td class="style12">
                <asp:TextBox ID="TextBoxemail" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBoxemail" ErrorMessage="Enter E-Mail" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBoxemail" ErrorMessage="You must Enter Valid Email Id" 
                    ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Password</td>
            <td class="style12">
                <asp:TextBox ID="TextBoxpass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBoxpass" ErrorMessage="Enter Password" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Confirm Password</td>
            <td class="style12">
                <asp:TextBox ID="TextBoxrpass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBoxrpass" ErrorMessage="Enter Password" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBoxpass" ControlToValidate="TextBoxrpass" 
                    ErrorMessage="Password must be same" ForeColor="#FF3300"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                Contry</td>
            <td class="style12">
                <asp:DropDownList ID="DropDownListcontry" runat="server" Height="25px" 
                    Width="180px">
                    <asp:ListItem>Select Contry</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                    <asp:ListItem>Koria</asp:ListItem>
                    <asp:ListItem>Chiana</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DropDownListcontry" ErrorMessage="Select Contry" 
                    ForeColor="#FF3300" InitialValue="Select Contry"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11">
                </td>
            <td class="style12">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                <input id="Reset1" type="reset" value="reset" onclick="return Reset1_onclick()"  /></td>
            <td class="style13">
                </td>
        </tr>
    </table>
    </div>
    </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
