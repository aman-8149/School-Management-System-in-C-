<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="multiviewpractice.aspx.cs" Inherits="multiviewpractice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:MultiView runat="server" ID="multiview1">
            <asp:View ID="view1" runat="server">
                <asp:Label runat="server">Enter Name: </asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button runat="server" ID="btn1" OnClick="next" Text="next" />
            </asp:View>
            <asp:View ID="view2" runat="server">
                <asp:Label ID="Label1" runat="server">Enter Parent Name: </asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button runat="server" ID="Button2" OnClick="next" Text="next" />
                <asp:Button runat="server" ID="Button3" OnClick="previous" Text="previous" />
            </asp:View>
             <asp:View ID="view3" runat="server">
                <asp:Label ID="Label2" runat="server">Enter Address: </asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:Button runat="server" ID="Button4" OnClick="previous" Text="previous" />
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>

