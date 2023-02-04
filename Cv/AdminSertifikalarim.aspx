<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminSertifikalarim.aspx.cs" Inherits="Cv.AdminSertifikalarim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin: 20px; margin-left:70px;">
        <h2>SERTİFİKALARIM SAYFASI</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>SERTİFİKA</th>
                    <th>KURUM</th>
                    <th>EĞİTMEN</th>
                    <th>SİL</th>
                    <th>GÜNCELLE</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ID") %></td>
                            <td><%# Eval("SERTIFIKA") %></td>
                            <td><%# Eval("ADRES") %></td>
                            <td><%# Eval("HOCA") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%# "AdminSertifikalarimSil.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server"
                                    CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%# "AdminSerifikalarimGuncelle.aspx?ID=" +  Eval("ID") %>' ID="HyperLink2" runat="server"
                                    CssClass="btn btn-warning">Güncelle</asp:HyperLink></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>
    <div style="margin-left:70px; margin-bottom:100px;">
        <asp:HyperLink ID="HyperLink3" NavigateUrl="AdminSertifikalarimEkle.aspx" runat="server" CssClass="btn btn-success">Sertifika Ekle</asp:HyperLink>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
