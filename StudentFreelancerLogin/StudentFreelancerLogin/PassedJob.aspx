<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages.Master" AutoEventWireup="true" CodeBehind="PassedJob.aspx.cs" Inherits="StudentFreelancerLogin.PassedJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">



    <div class="section db">
        <div class="container">
            <div class="page-title text-center">
                <div class="heading-holder">
                    <h1>Yapılan İşler</h1>
                </div>
                <p class="lead">Şu ana kadar ki işleriniz</p>
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
                            <li class="active"><a href="PassedJob.aspx"><span class="glyphicon glyphicon-star"></span>Yapılan İşler</a></li>
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
                            <h5>Yapılan işler</h5>
                        </div>
                        <div class="all-jobs job-listing active-jobs clearfix">
                            <asp:Repeater ID="RptJobs" runat="server">
                                <ItemTemplate>
                                    <div class="job-tab">
                                        <div class="row">
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <div class="post-media">
                                                    <a href="job-single.html">
                                                        <img src="HTML/upload/job_05.jpg" alt="" class="img-responsive img-thumbnail"></a>
                                                </div>
                                                <!-- end media -->
                                            </div>
                                            <!-- end col -->

                                            <div class="col-md-7 col-sm-7 col-xs-12">
                                                <div class="badge freelancer-badge">Freelancer</div>
                                                <h3><a href="job-single.html" title=""><%# Eval("Proje_Baslik") %></a></h3>
                                                <small>
                                                    <span>Yapan : <a href="#"><%# Eval("Ogrenci_adi") %></a></span>
                                                    <span>Bitiş Tarih : <%# Eval("Bitis_Tarih") %></span>
                                                </small>
                                            </div>
                                            <!-- end col -->

                                            <div class="col-md-2 col-sm-2 col-xs-12">
                                                <div class="job-meta text-center">
                                                    <h4><%# Eval("Proje_Ucret") %></h4>
                                                    <a href="#" class="btn btn-primary btn-sm btn-block">Sil</a>
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
