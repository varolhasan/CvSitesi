<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEgitimim.aspx.cs" Inherits="Cv.AdminEgitimim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin: 20px; margin-left: 70px;">
        <h2>EĞİTİMİM SAYFASI</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>OKUL</th>
                    <th>DÜZEY</th>
                    <th>BÖLÜM</th>
                    <th>GNO</th>
                    <th>TARİH</th>
                    <th>SİL</th>
                    <th>GÜNCELLE</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ID") %></td>
                            <td><%# Eval("BASLIK") %></td>
                            <td><%# Eval("ALTBASLIK1") %></td>
                            <td><%# Eval("ALTBASLIK2") %></td>
                            <td><%# Eval("GNO") %></td>
                            <td><%# Eval("TARIH") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%# "AdminEgitimimSil.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server"
                                    CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%# "AdminEgitimimGuncelle.aspx?ID=" +  Eval("ID") %>' ID="HyperLink2" runat="server"
                                    CssClass="btn btn-warning">Güncelle</asp:HyperLink></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>
    <div style="margin-left:70px; margin-bottom:100px;">
        <asp:HyperLink ID="HyperLink3" NavigateUrl="AdminEgitimimEkle.aspx" runat="server" CssClass="btn btn-success">Eğitim Ekle</asp:HyperLink>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
