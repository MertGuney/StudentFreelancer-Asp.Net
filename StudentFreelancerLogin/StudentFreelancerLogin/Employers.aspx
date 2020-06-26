<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages.Master" AutoEventWireup="true" CodeBehind="Employers.aspx.cs" Inherits="StudentFreelancerLogin.Employers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="section db">
        <div class="container">
            <div class="page-title text-center">
                <div class="heading-holder">
                    <h1>İş verenler</h1>
                </div>
                <p class="lead">Kimin için çalışacağınızı detaylı görmek için profillerini inceleyin.</p>
            </div>
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->

    <div class="section lb">
        <div class="container">
            <div class="submit-form customform">
                <div class="row">
                    <div class="col-md-5 col-sm-6 col-xs-12">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-search"></i></span>
                            <asp:TextBox ID="TB_src" class="form-control" placeholder="Isim" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <!-- end col -->
                    <div class="col-md-5 col-sm-6 col-xs-12">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-map-o"></i></span>
                            <asp:TextBox ID="TB_Citys" class="form-control" placeholder="Sehir" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-6 col-xs-12">
                        <button id="BTN_Src" runat="server" onserverclick="BTN_Src_ServerClick" class="btn btn-primary btn-block">İş veren ara</button>
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <div class="all-jobs job-listing clearfix">
                <asp:Repeater ID="Rpt_Emp" runat="server">
                    <ItemTemplate>
                        <div class="job-tab">
                            <div class="row">
                                <div class="col-md-2 col-sm-2 col-xs-12">
                                    <div class="post-media">
                                        <a href="job-single.html">
                                            <img src="HTML/upload/job_07.jpg" alt="" class="img-responsive img-thumbnail"></a>
                                    </div>
                                    <!-- end media -->
                                </div>
                                <!-- end col -->

                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div class="badge part-badge">İşveren</div>
                                    <h3><a href="Users.aspx?Kullanici_id=<%# Eval("Kullanici_id")%>"><%# Eval("Kullanici_adi") %></a></h3>
                                    <small>
                                        <span>Yayınlayan : <a href="#"><%# Eval("Kullanici_adi") %></a></span>
                                        <span>Alan : <a href="#"><%# Eval("Kullanici_Alan") %></a></span>
                                    </small>
                                </div>
                                <!-- end col -->

                                <div class="col-md-2 col-sm-2 col-xs-12">
                                    <div class="job-meta">
                                        <p><%# Eval("Kullanici_Sehir") %></p>
                                        <small><%# Eval("Kullanici_Ulke") %></small>
                                    </div>
                                    <!-- end meta -->
                                </div>
                                <!-- end col -->

                                <div class="col-md-2 col-sm-2 col-xs-12">
                                    <div class="job-meta text-center">
                                        <a href="Users.aspx?Kullanici_id=<%# Eval("Kullanici_id")%>" class="btn btn-primary btn-sm btn-block">Görüntüle</a>
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
                <a href="#" class="btn btn-primary" id="loadMore">Daha fazla işveren gör</a>
            </div>
            <!-- end loadmore -->
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->


</asp:Content>
