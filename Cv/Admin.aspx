<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Cv.Admin1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="cvtemp/css/StyleSheet1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <formview id="Form1" runat="server" class="form-group">
        <div class="form-group" style="margin-left:150px; margin-top:15px;">
            <h2>HAKKIMDA SAYFASI</h2>
            <div style="margin-bottom: 15px;">
                <asp:Label ID="Label1" runat="server" Text="AD SOYAD"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div style="margin-bottom: 15px;">
                <asp:Label ID="Label2" runat="server" Text="MESLEK"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div style="margin-bottom: 15px;">
                <asp:Label ID="Label3" runat="server" Text="DOĞUM TARİHİ"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div style="margin-bottom: 15px;">
                <asp:Label ID="Label4" runat="server" Text="ADRES"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div style="margin-bottom: 15px;">
                <asp:Label ID="Label5" runat="server" Text="MAİL"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click" />
        </div>
    </formview>
</asp:Content>

