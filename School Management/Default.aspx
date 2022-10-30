<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div id="banner">
     <asp:ScriptManager ID="ScriptManager1" runat="server">
     </asp:ScriptManager>
     <asp:Timer ID="Timer1" runat="server" Interval="3000">
     </asp:Timer>
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
            <asp:AsyncPostBackTrigger runat="server" ControlID="Timer1" EventName="Tick"/>
        </Triggers>
         <ContentTemplate>
            <asp:AdRotator ID="rotator"  runat = "server" AdvertisementFile = "~/Advertisment1.xml" />
         </ContentTemplate>
     </asp:UpdatePanel>
 </div>

</asp:Content>

