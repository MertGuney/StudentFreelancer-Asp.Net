<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages.Master" AutoEventWireup="true" CodeBehind="JobDetail.aspx.cs" Inherits="StudentFreelancerLogin.JobDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="parallax section parallax-off" style="background-image: url('HTML/upload/fbg.jpg');">
        <div class="container">
            <div class="page-title text-center">
                <div class="heading-holder">
                    <h1>İş Detay</h1>
                </div>
                <p class="lead">Projenin detaylı hali</p>
            </div>
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->

    <div class="section wb">
        <div class="container">
            <div class="single-job">
                <div class="job-tab">
                    <div class="row">
                        <div class="col-md-4 col-sm-3 col-xs-12">
                            <div class="post-media">
                                <a href="job-single.html">
                                    <img src="HTML/upload/job_02.jpg" alt="" class="img-responsive img-thumbnail"></a>
                            </div>
                            <!-- end media -->
                        </div>
                        <!-- end col -->

                        <div class="col-md-6 col-sm-7 col-xs-12">
                            <div class="badge freelancer-badge">Freelancer</div>
                            <h3><a href="job-single.html" title="">
                                <asp:Label ID="LB_Baslik" runat="server"></asp:Label></a></h3>
                            <small>
                                <span>Yayınlayan : <a href="#">
                                    <asp:Label ID="LB_Yayinlayan" runat="server"></asp:Label></a></span>
                                <span>Alan : <a href="#">
                                    <asp:Label ID="LB_Alan" runat="server"></asp:Label></a></span>
                                <span>Tarih :
                                    <asp:Label ID="LB_Tarih" runat="server"></asp:Label></span>
                            </small>

                            <hr class="invis">

                            <p>
                                <asp:Label ID="LB_KisaAciklama" runat="server"></asp:Label>
                            </p>
                            <p class="btn btn-primary btn-custom">
                                <asp:Label ID="LB_Ucret" runat="server"></asp:Label>/min
                            </p>
                            <hr />
                            <a href="#contactmodal" role="button" data-toggle="modal" class="btn btn-primary btn-custom">Görüş</a>
                        </div>
                        <!-- end col -->

                        <div class="col-md-2 col-sm-2 col-xs-12">
                            <div class="job-meta m45">
                                <%--<p><%# Eval("Kullanici_isim") %></p>
                                <small><%# Eval("Kullanici_adi") %></small>--%>
                                <ul class="company-links clearfix">
                                    <li><a href="<%# Eval("Web_Url")%>"><i class="fa fa-link"></i>Website</a></li>
                                    <li><a href="<%# Eval("Twitter_Url")%>"><i class="fa fa-twitter"></i>Twitter</a></li>
                                    <li><a href="<%# Eval("Facebook_URl")%>"><i class="fa fa-facebook"></i>Facebook</a></li>
                                </ul>
                            </div>
                            <!-- end meta -->
                        </div>
                        <!-- end col -->
                    </div>
                    <!-- end row -->
                </div>
                <!-- end job-tab -->
            </div>
            <!-- end single-job -->

            <hr class="singlejobhr">
            <div class="row">
                <div class="content col-md-12">
                    <div class="post-single-job">
                        <div class="single-content">
                            <h4 class="small-title">Proje Hakkında</h4>
                            <p class="lead">
                                <asp:Label ID="LB_KisaAciklama2" runat="server"></asp:Label>
                            </p>

                            <p>
                                <asp:Label ID="LB_Aciklama" runat="server"></asp:Label>
                            </p>
                            <div class="row">
                                <div class="col-md-4">
                                    <h5 class="small-title">Gerekli Yetenekler</h5>
                                    <ul class="customlist">
                                        <asp:Repeater ID="Rpt_icerik" runat="server">
                                            <ItemTemplate>
                                                <li><%# Eval("Proje_Icerik") %></li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>

                                </div>
                            </div>
                            <!-- end row -->
                        </div>
                    </div>
                    <!-- end post-padding -->
                </div>
            </div>
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->

    <div class="section lb">
        <div class="container">
            <div class="section-title text-center clearfix">
                <h4>Son yayınlanan işler</h4>
                <p class="lead">Yayınlanan son projeleri daha yakından takip edin ve projeleri inceleyin.</p>
            </div>

            <div class="all-jobs job-listing clearfix">
                <asp:Repeater ID="Rpt_Job" runat="server">
                    <ItemTemplate>
                        <div class="job-tab">
                            <div class="row">
                                <div class="col-md-2 col-sm-2 col-xs-12">
                                    <div class="post-media">
                                        <a href="job-single.html">
                                            <img src="HTML/upload/job_06.jpg" class="img-responsive img-thumbnail"></a>
                                    </div>
                                    <!-- end media -->
                                </div>
                                <!-- end col -->

                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div class="badge freelancer-badge">Freelancer</div>
                                    <h3><a href="JobDetail.aspx?Proje_id=<%# Eval("Proje_id") %>"><%# Eval("Proje_Baslik") %></a></h3>
                                    <small>
                                        <span>Yayınlayan : <a href="#"><%# Eval("Kullanici_adi") %></a></span>
                                        <span>Alan : <a href="#"><%# Eval("Proje_Kategori") %></a></span>
                                        <span>Tarih : <%# Eval("Tarih") %></span>
                                    </small>
                                </div>
                                <!-- end col -->

                                <div class="col-md-2 col-sm-2 col-xs-12">
                                    <div class="job-meta">
                                        <%--<p><%# Eval("Kullanici_sehir") %></p>
                                        <small><%# Eval("Kullanici_ulke") %></small>--%>
                                    </div>
                                    <!-- end meta -->
                                </div>
                                <!-- end col -->

                                <div class="col-md-2 col-sm-2 col-xs-12">
                                    <div class="job-meta text-center">
                                        <h4><%# Eval("Proje_Ucret") %></h4>
                                        <a href="JobDetail.aspx?Proje_id=<%# Eval("Proje_id") %>" class="btn btn-primary btn-sm btn-block">Başvur</a>
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

            <div class="loadmorebutton text-center clearfix">
                <a href="SearchJob.aspx" class="btn btn-primary">Daha Fazlası</a>
            </div>
            <!-- end loadmore -->
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->
</asp:Content>
