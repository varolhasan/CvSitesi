﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYeteneklerimGuncelle.aspx.cs" Inherits="Cv.AdminYeteneklerimGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <formview id="Form1" runat="server" class="form-group">
        <div class="form-group" style="margin-left:150px; margin-top:15px; margin-right:50px;">
            <div style="margin-bottom: 15px; margin-right:50px;">
                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
            <div style="margin-bottom: 15px; margin-right:50px;">
                <asp:Label ID="Label2" runat="server" Text="YETENEK"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div style="margin-bottom: 15px; margin-right:50px;">
                <asp:Label ID="Label3" runat="server" Text="ORAN"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click"/>
        </div>
    </formview>
</asp:Content>
