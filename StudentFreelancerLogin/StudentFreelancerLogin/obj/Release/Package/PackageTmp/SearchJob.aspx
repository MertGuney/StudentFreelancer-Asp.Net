<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages.Master" AutoEventWireup="true" CodeBehind="SearchJob.aspx.cs" Inherits="StudentFreelancerLogin.SearchJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">


    <div class="section db">
        <div class="container">
            <div class="page-title text-center">
                <div class="heading-holder">
                    <h1>Aktif İşler</h1>
                </div>
                <p class="lead">Yapılmayı bekleyen işleri inceleyin size uygun olanı bulun ve ileşime geçin. Acele edin başkaları anlaşmadan siz anlaşın</p>
            </div>
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->

    <div class="section lb">
        <div class="container">
            <div class="submit-form customform">
                <div class="row">
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="input-group">
                            <span class="input-group-addon" id="basic-addon2"><i class="fa fa-search"></i></span>
                            <asp:TextBox ID="TBsrc" class="form-control" placeholder="Proje Adı" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <!-- end col -->

                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1"><i class="fa fa-map-o"></i></span>
                            <asp:TextBox ID="TB_Citys" class="form-control" placeholder="Sehir" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <!-- end col -->
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="input-group">
                            <span class="input-group-addon" id="basic-addon1"><i class="fa fa-user-secret"></i></span>
                            <asp:TextBox ID="TB_Category" class="form-control" placeholder="Kategori" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <button class="btn btn-primary btn-block">İş Ara</button>
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <div class="all-jobs job-listing clearfix">
                <asp:Repeater ID="Rpt_Jobs" runat="server">
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
                                    <h3><a href="JobDetail.aspx?Proje_id=<%# Eval("Proje_id") %>" title=""><%# Eval("Proje_Baslik") %></a></h3>
                                    <small>
                                        <span>Yayınlayan : <a href="#"><%# Eval("Kullanici_adi") %></a></span>
                                        <span>Alan : <a href="#"><%# Eval("Proje_Kategori") %></a></span>
                                        <span>Tarih : <%# Eval("Tarih") %></span>
                                    </small>
                                </div>
                                <!-- end col -->

                                <div class="col-md-2 col-sm-2 col-xs-12">
                                    <div class="job-meta">
                                        <%--<p><%# Eval("Kullanici_Sehir") %></p>
                                        <small><%# Eval("Kullanici_Ulke") %></small>--%>
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
                <a href="#" class="btn btn-primary" id="loadMore">Görüntüle</a>
            </div>
            <!-- end loadmore -->
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->


</asp:Content>
