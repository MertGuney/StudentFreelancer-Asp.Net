<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages.Master" AutoEventWireup="true" CodeBehind="Application.aspx.cs" Inherits="StudentFreelancerLogin.Application" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">


    <div class="parallax section parallax-off" style="background-image: url('HTML/upload/fbg.jpg');">
        <div class="container">
            <div class="page-title text-center">
                <div class="heading-holder">
                    <h1>İş Başvuruları</h1>
                </div>
                <p class="lead">Yayınladığınız işlere başvuran kişiler</p>
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
                            <li class="active"><a href="Application.aspx"><span class="glyphicon glyphicon-bookmark"></span>Başvurular</a></li>
                            <li><a href="ChangePassword.aspx"><span class="glyphicon glyphicon-refresh"></span>Şifre Değiştirme</a></li>
                        </ul>
                    </div>
                    <!-- end widget -->
                </div>
                <!-- end col -->

                <div class="content col-md-8">
                    <div class="post-padding">
                        <div class="job-title nocover hidden-sm hidden-xs">
                            <h5>Başvurular</h5>
                        </div>
                        <div class="all-jobs job-listing freelancer-list nopadlist clearfix">
                            <asp:Repeater ID="RptApp" runat="server">
                                <ItemTemplate>
                                    <div class="job-tab">
                                        <div class="row">
                                            <div class="col-md-2 col-sm-2 col-xs-12">
                                                <div class="post-media">
                                                    <a href="freelancer-profile.html">
                                                        <img src="upload/testi_01.png" alt="" class="img-responsive img-thumbnail"></a>
                                                </div>
                                                <!-- end media -->
                                            </div>
                                            <!-- end col -->

                                            <div class="col-md-8 col-sm-8 col-xs-12">
                                                <div class="badge part-badge"><%# Eval("Alan") %></div>
                                                <h3><a href="freelancer-profile.html" title=""><%# Eval("Kullanici_isim") %></a></h3>
                                                <small>
                                                    <span>Başvuru : <a href="#"><%# Eval("Proje_Baslik") %></a></span>
                                                    <span>Tarih : <%# Eval("Tarih") %></span>
                                                </small>
                                            </div>
                                            <!-- end col -->

                                            <div class="col-md-2 col-sm-3 col-xs-12">
                                                <div class="job-meta text-center">
                                                    <h4><%# Eval("Proje_Ucret") %>TL</h4>
                                                    <a href="freelancer-profile.html" class="btn btn-primary btn-sm btn-block">İş Ver</a>
                                                </div>
                                            </div>
                                            <!-- end col -->
                                        </div>
                                        <!-- end row -->
                                    </div>
                                    <!-- end job-tab -->
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <!-- end alljobs -->
                    </div>
                    <!-- end post-padding -->
                    <nav aria-label="Page navigation">
                        <ul class="pagination">
                            <li>
                                <a href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li>
                                <a href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->



</asp:Content>
