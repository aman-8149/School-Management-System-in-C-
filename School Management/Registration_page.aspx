<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Registration_page.aspx.cs" Inherits="Registration_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!doctype html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
     <link href="registration.css" rel="stylesheet" type="text/css" />
    <title>Registration</title>

    <script type="text/javascript">
        function validate(oSrc, args) {
            args.IsValid = (args.Value.length == 10);
        }
    </script>

  </head>
  <body>
    <div class="container" style="background-color:Red;">
    `   <div class="card center">
            <div class="card-body">
            <h1 style="margin-left:400px;">Registration Form</h1>
                <table style="display:flex;align-item:center;justify-content:center;">
                    <tr>
                        <td>
                            <asp:Label ID="name" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="tname" runat="server" placeholder="Enter name..."></asp:TextBox><br />
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required !!!" ControlToValidate="tname" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="email" runat="server" Text="Email"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="tmail" runat="server" placeholder="Enter Email..."></asp:TextBox><br />
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required!!!" ControlToValidate="tmail" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter an valid email !!!" ControlToValidate="tmail" ForeColor="Red" ValidationExpression="^[a-z0-9][-a-z0-9._]+@([-a-z0-9]+.)+[a-z]{2,5}$"></asp:RegularExpressionValidator>
                        </td>
                        
                    </tr>
                    <tr>
                        <td><asp:Label ID="Age" runat="server" Text="Age"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="tage" runat="server" placeholder="Enter Age..."></asp:TextBox><br />
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age should be 18-60 only allow!!" ControlToValidate="tage" MinimumValue="18" MaximumValue="60" ForeColor="Red"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Contact" runat="server" Text="Contact"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="tcontact" runat="server" placeholder="Enter Contact..." ></asp:TextBox><br />
                            <asp:CustomValidator
                                ID="CustomValidator1" runat="server" ErrorMessage="10 digits are required!!" ControlToValidate="tcontact" ClientValidationFunction="validate"></asp:CustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="tpassword" runat="server" placeholder="Enter Password..."></asp:TextBox><br />
                            <asp:RequiredFieldValidator
                                ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is required!!!" ControlToValidate="tpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="Confirm_password" runat="server" Text="Confirm Password"></asp:Label></td>
                        <td><asp:TextBox ID="tcpassword" runat="server" placeholder="Confirm password..."></asp:TextBox><br />
                        <asp:CompareValidator
                                ID="CompareValidator1" runat="server" ErrorMessage="Password doesn't match!!" ControlToValidate="tcpassword" ControlToCompare="tpassword" ForeColor="Red"></asp:CompareValidator></td>
                    </tr>
                    <tr>
                         <td></td>
                        <td>
                            <asp:Button ID="insert" runat="server" Text="Submit" Width="200px" Height="50px" BackColor="White" />
                        </td>
                        <td></td>
                        
                    </tr>
                </table>
            </div>
        </div>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    -->
  </body>
</html>
</asp:Content>

