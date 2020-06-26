<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="StudentFreelancerLogin.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">


    <div class="section db">
        <div class="container">
            <div class="page-title text-center">
                <div class="heading-holder">
                    <h1>Şifre Değiştirme</h1>
                </div>
                <p class="lead">Eğer hesabının güvende olmadığını düşünüyorsan şifreni değiştirmelisin</p>
            </div>
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->

    <div class="section lb">
        <div class="container">
            <div class="row">
                <div class="sidebar col-md-4">
                    <div class="post-padding clearfix">
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="MyProfile.aspx"><span class="glyphicon glyphicon-off"></span>Profil Düzenle</a></li>
                            <li><a href="SubmitJob.aspx"><span class="glyphicon glyphicon-edit"></span>İş Ekle</a></li>
                            <li><a href="ActiveJob.aspx"><span class="glyphicon glyphicon-briefcase"></span>Aktif İşler</a></li>
                            <li><a href="PassedJob.aspx"><span class="glyphicon glyphicon-star"></span>Yapılan İşler</a></li>
                            <li><a href="Application.aspx"><span class="glyphicon glyphicon-bookmark"></span>Başvurular</a></li>
                            <li class="active"><a href="ChangePassword.aspx"><span class="glyphicon glyphicon-refresh"></span>Şifre Değiştirme</a></li>
                        </ul>
                    </div>
                    <!-- end widget -->
                </div>
                <!-- end col -->

                <div class="content col-md-8">
                    <div class="post-padding">
                        <div class="job-title nocover hidden-sm hidden-xs">
                            <h5>Şifre Değiştir</h5>
                        </div>
                        <div id="submit" class="submit-form">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <label class="control-label">Eski Şifreniz </label>
                                    <asp:TextBox ID="TB_Eski" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <br>
                                    <label class="control-label">Yeni Şifreniz</label>
                                    <asp:TextBox ID="TB_Yeni" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <br>
                                    <label class="control-label">Yeni Şifrenizi Doğrulayınız</label>
                                    <asp:TextBox ID="TB_Kontrol" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <br>
                                    <asp:Button ID="BTN_Guncelle" class="btn btn-primary" runat="server" Text="Güncelle" OnClick="BTN_Guncelle_Click" />&nbsp&nbsp
                                    <asp:Label ID="LB_Bilgi" runat="server" Font-Italic="True"></asp:Label>
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end post-padding -->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->


</asp:Content>
