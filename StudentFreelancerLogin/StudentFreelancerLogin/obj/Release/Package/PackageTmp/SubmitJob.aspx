<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages.Master" AutoEventWireup="true" CodeBehind="SubmitJob.aspx.cs" Inherits="StudentFreelancerLogin.SubmitJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">


    <div class="parallax section parallax-off" style="background-image: url('HTML/upload/fbg.jpg');">
        <div class="container">
            <div class="page-title text-center">
                <div class="heading-holder">
                    <h1>Bir iş ekleyin</h1>
                </div>
                <p class="lead">Öğrencilerden projelerinize yardım isteyin yada onlara bir proje verin.</p>
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
                            <li class="active"><a href="SubmitJob.aspx"><span class="glyphicon glyphicon-edit"></span>İş Ekle</a></li>
                            <li><a href="ActiveJob.aspx"><span class="glyphicon glyphicon-briefcase"></span>Aktif İşler</a></li>
                            <li><a href="PassedJob.aspx"><span class="glyphicon glyphicon-star"></span>Yapılan İşler</a></li>
                            <li><a href="Application.aspx"><span class="glyphicon glyphicon-bookmark"></span>Başvurular</a></li>
                            <li><a href="ChangePassword.aspx"><span class="glyphicon glyphicon-refresh"></span>Şifre Değiştirme</a></li>
                        </ul>
                    </div>
                    <!-- end widget -->
                </div>
                <!-- end col -->

                <div class="content col-md-8">
                    <div class="post-padding">
                        <div class="job-title nocover hidden-sm hidden-xs">
                            <h5>İş Ekle</h5>
                        </div>
                        <div id="submit" class="submit-form">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <label class="control-label">Proje Başlığı <small>Proje hakkında kısa bilgi giriniz.</small></label>
                                    <asp:TextBox ID="TB_ProjeBaslik" class="form-control" placeholder="*Web Sitesi" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <!-- end row -->

                            <hr class="invis">

                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <label class="control-label">Kısa Açıklama <small>Projeniz hakkında kısa bir açıklama yapınız.</small></label>
                                    <asp:TextBox ID="TB_KisaAciklama" class="form-control" placeholder="*Şirketimiz için Admin kontrollü yapılı bir web sitesi istiyoruz." runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <!-- end row -->

                            <hr class="invis">

                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <label class="control-label">Açıklama <small>Projeniz hakkında daha detaylı bilgi veriniz.</small></label>
                                    <asp:TextBox ID="TB_Aciklama" class="form-control" placeholder="*Site e-ticaret uyumlu olucaktır." runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <!-- end row -->

                            <hr class="invis">

                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Kategori <small>Projenizin kategorisini seçiniz.</small></label><br />
                                    <asp:DropDownList ID="DDLCategory" Style="max-height: 150px; width: 250px; overflow-y: scroll; position: absolute;" onmousedown="this.size=5;" onfocusout="this.size=1;" ondblclick="this.size=1;" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Proje içeriği <small>Proje için neleri bilmek gerekli ?</small></label><br />
                                    <div style="overflow-y: scroll; height: 100px">
                                        <asp:CheckBoxList ID="CBL_Skill" Width="150" runat="server" BorderStyle="NotSet"></asp:CheckBoxList>
                                    </div>
                                    <%--<asp:DropDownList ID="DDL_Istek" runat="server" Width="150"></asp:DropDownList>--%>
                                </div>
                            </div>
                            <!-- end row -->

                            <hr class="invis">

                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Ücret <small>Proje için minimum ücret giriniz.</small></label>
                                    <asp:TextBox ID="TB_Ucret" class="form-control" placeholder="100TL" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Bitiş Tarihi <small>Proje bitiş tarihi seçiniz.</small></label>
                                    <asp:TextBox ID="TB_Bitis" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                                <asp:Label ID="LB_aktif" runat="server" Text="Aktif" Visible="False"></asp:Label>
                            </div>
                            <hr>
                            <asp:Button ID="BTN_Yayınla" class="btn btn-primary" runat="server" Text="Yayınla" OnClick="BTN_Yayınla_Click" />
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
