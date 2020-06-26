<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="StudentFreelancerLogin.Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">


    <div class="parallax section parallax-off" style="background-image: url('HTML/upload/fbg.jpg');">
        <div class="container">
            <div class="page-title text-center">
                <%--<img src="<%# Eval("resim") %>" alt="" class="profile-image img-circle img-responsive">--%>
                <div class="heading-holder">
                    <h1>
                        <asp:Label ID="LB_Kullanici" runat="server"></asp:Label></h1>
                </div>
                <p class="lead">
                    <asp:Label ID="LB_KAciklama" runat="server"></asp:Label>
                </p>
            </div>
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->

    <div class="section lb">
        <div class="container">
            <div class="row">
                <div class="content col-md-8">
                    <div class="post-padding">
                        <div class="single-content">
                            <h4 class="small-title">Ben Kimim ?</h4>
                            <p class="lead">
                                <asp:Label ID="LB_KisaAciklama" runat="server"></asp:Label>
                            </p>

                            <p>
                                <asp:Label ID="LB_Aciklama" runat="server"></asp:Label>
                            </p>



                            <h5 class="small-title">Preferred Freelancer and 100% Success Rate</h5>

                            <ul class="customlist">
                                <%--<asp:Repeater ID="Rpt_Skills" runat="server">
                                    <ItemTemplate>
                                        <li><%# Eval("Kullanici_alan") %></li>
                                    </ItemTemplate>
                                </asp:Repeater>--%>
                            </ul>
                        </div>

                    </div>
                    <!-- end post-padding -->

                    <div class="post-padding">
                        <div class="single-content reviewwrapper">
                            <h4 class="small-title">Recent Reviews <a href="#" class="readmore">View All Feedbacks</a></h4>
                            <div class="testimonials">
                                <blockquote>
                                    <div class="row">
                                        <div class="col-md-2">
                                            <a href="#">
                                                <img src="upload/job_02.jpg" alt="" class="img-responsive"></a>
                                        </div>
                                        <div class="col-md-10">
                                            <h4><a href="#">PHP Developer - Wordpress Error</a></h4>
                                            <div class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                            <p class="clients-words">“Great freelancer. Fixed two complicated Wordpress issues in under 45 minutes as we had a deadline to meet. Very impressed and will use again. Highly recommended.”</p>
                                            <span class="clients-name text-primary">-wesleyberry 22.05.2016</span>
                                        </div>
                                    </div>
                                </blockquote>
                                <hr>
                                <p class="lead">If you want to review for this freelancer, please make sure you are <a href="#">Login your account</a> or order any <a href="#">service</a> from this freelancer.</p>
                            </div>
                        </div>
                        <!-- end single-content -->
                    </div>
                    <!-- end post-padding -->
                </div>
                <!-- end col -->

                <div class="sidebar col-md-4">
                    <div class="widget clearfix">
                        <div class="customwidget item-price w40">
                            <span class="text-center">
                                <asp:Label ID="LB_Ad" runat="server"></asp:Label></span>
                            <div class="rating text-center">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <small>95% Recommended</small>
                            </div>
                            <hr>
                            <div class="text-center">
                                <small><a href="#"><i class="fa fa-star-o"></i>Add to Favorites</a> &nbsp;&nbsp; <a href="#"><i class="fa fa-heart-o"></i>Like it</a> </small>
                            </div>
                            <hr>
                            <div class="link-widget">
                                <ul class="check">
                                    <li>21 iş Tamamlandı</li>
                                    <li>12 Geri bildirim</li>
                                </ul>
                                <!-- end check -->
                            </div>
                            <div class="text-center">
                                <a href="#contactmodal" role="button" data-toggle="modal" class="btn btn-primary btn-lg">Bana yazın</a>
                                <a href="#" class="btn btn-primary btn-lg">CV İndir</a>
                            </div>
                        </div>
                        <!-- end newsletter -->
                    </div>
                    <!-- end widget -->

                    <div class="widget post-padding clearfix">
                        <div class="widget-title">
                            <h4>Daha fazlası</h4>
                        </div>
                        <!-- end widget-title -->

                        <div class="link-widget">
                            <ul class="verification-list">
                                <asp:Repeater ID="Rpt_Sosyal" runat="server">
                                    <ItemTemplate>
                                        <li class="done"><i class="fa fa-facebook"></i><a href="<%# Eval("Kullanici_FB") %>">Facebook</a></li>
                                        <li class="done"><i class="fa fa-twitter"></i><a href="<%# Eval("Kullanici_TW") %>">Twitter</a></li>
                                        <li><i class="fa fa-shield"></i>Preferred Freelancer</li>
                                        <li class="done"><i class="fa fa-money"></i>Payment Approved</li>
                                        <li><i class="fa fa-phone"></i>+90 <%# Eval("Kullanici_telefon") %></li>
                                        <li class="done"><i class="fa fa-user"></i>Authenticated</li>
                                        <li class="done"><i class="fa fa-envelope-o"></i><a><%# Eval("Kullanici_mail") %></a></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                            <!-- end check -->
                        </div>
                        <!-- end link-widget -->
                    </div>
                    <!-- end post-padding -->

                    <div class="widget post-padding clearfix">
                        <div class="widget-title">
                            <h4>Eğitim</h4>
                        </div>
                        <!-- end widget-title -->

                        <div class="link-widget">
                            <ul class="check">
                                <li>
                                    <asp:Label ID="LB_Uni" runat="server"></asp:Label></li>
                                <li>
                                    <asp:Label ID="LB_Bolum" runat="server"></asp:Label></li>
                            </ul>
                            <!-- end check -->
                        </div>
                        <!-- end link-widget -->

                    </div>
                    <!-- end post-padding -->

                    <div class="widget post-padding clearfix">
                        <div class="widget-title">
                            <h4>Extra</h4>
                        </div>
                        <!-- end widget-title -->

                        <div class="link-widget">
                            <ul class="check">
                                <li>
                                    <asp:Label ID="LB_Ex1" runat="server" Text="Label"></asp:Label>
                                </li>
                                <li>
                                    <asp:Label ID="LB_Ex2" runat="server" Text="Label"></asp:Label>
                                </li>
                                <li>
                                    <asp:Label ID="LB_Ex3" runat="server" Text="Label"></asp:Label>
                                </li>
                            </ul>
                            <!-- end check -->
                        </div>
                        <!-- end link-widget -->
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
