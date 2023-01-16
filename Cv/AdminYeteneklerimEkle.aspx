<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYeteneklerimEkle.aspx.cs" Inherits="Cv.AdminYeteneklerimEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <formview id="Form1" runat="server" class="form-group" method="post">
        <div class="form-group" style="margin: 80px; margin-top: 15px;">
            <div style="margin-bottom: 15px;">
                <asp:Label ID="Label2" runat="server" Text="YETENEK"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div style="margin-bottom: 15px;">
                <asp:Label ID="Label3" runat="server" Text="ORAN"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server"  Text="Kaydet" CssClass="btn btn-primary" OnClick="Button1_Click"/>
        </div>
    </formview>
</asp:Content>
