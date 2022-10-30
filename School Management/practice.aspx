<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="practice.aspx.cs" Inherits="practice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .fade
        {
          animation: adrotate 5s;
          animation: out 5s;
        }
        @keyframes adrotate
        {
            0%
            {
                opacity: 0;
            }
            100%
            {
                opacity:1;
            }
        }
        @keyframes out
        {
            0%
            {
                 opacity:1;
            }
            100%
            {
               
                opacity: 0;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="5000">
        </asp:Timer>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger runat="server" ControlID="Timer1" EventName="Tick"/>
            </Triggers>
            <ContentTemplate>
                <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Advertisement2.xml" CssClass="fade"/>
            </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>

