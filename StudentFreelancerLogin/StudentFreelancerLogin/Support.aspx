<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages.Master" AutoEventWireup="true" CodeBehind="Support.aspx.cs" Inherits="StudentFreelancerLogin.Support" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">


    <div class="section db">
        <div class="container">
            <div class="page-title text-center">
                <div class="heading-holder">
                    <h1>Bize Ulaşın</h1>
                </div>
                <p class="lead">Bir sorununuz varsa lütfen bizim ile paylasın.</p>
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
                        <div class="content-title">
                            <h4>İletişim Formu</h4>
                            <hr>
                        </div>
                        <!-- end widget-title -->

                        <p>Bizim ile iletişime geçin</p>

                        <hr class="invis">

                        <div id="submit" class="submit-form">
                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Ad Soyad*</label>
                                    <asp:TextBox ID="TBName" class="form-control" placeholder="Ad Soyad" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">E-Mail Adresiniz*</label>
                                    <asp:TextBox ID="TBMail" class="form-control" placeholder="e-Mail" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <!-- end row -->

                            <hr class="invis">

                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Telefon*</label>
                                    <asp:TextBox ID="TBPhone" class="form-control" placeholder="5** *** ** **" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Konu*</label>
                                    <asp:TextBox ID="TBSubject" class="form-control" placeholder="Konu" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <!-- end row -->

                            <hr class="invis">

                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <label class="control-label">Mesajınız*</label>
                                    <asp:TextBox ID="TBMessage" class="form-control" placeholder="Mesaj" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <!-- end row -->
                            <hr class="invis">
                            <asp:Label ID="Label1" runat="server" Text="'*' Sembolü Zorunlulu alanları temsil etmektedir." ForeColor="#FF3300"></asp:Label>
                            <hr class="invis">
                            <asp:Button ID="BTNSend" class="btn btn-primary" runat="server" Text="Gönder" />
                        </div>
                    </div>
                    <!-- end post-padding -->
                </div>
                <!-- end col -->

                <div class="sidebar col-md-4">
                    <div class="widget clearfix">
                        <div class="postpager liststylepost">
                            <ul class="post-blog">
                                <li>
                                    <div class="post">
                                        <a href="job-single.html">
                                            <h4>Post Your Resume</h4>
                                        </a>
                                        <div class="blog-meta clearfix">
                                            <small>Recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</small>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="post">
                                        <a href="job-single.html">
                                            <h4>Post Job Now</h4>
                                        </a>
                                        <div class="blog-meta clearfix">
                                            <small>Recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</small>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="post">
                                        <a href="job-single.html">
                                            <h4>Create An Account</h4>
                                        </a>
                                        <div class="blog-meta clearfix">
                                            <small>Recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</small>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- end postpager -->
                    </div>
                    <!-- end widget -->

                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h4>İletişim Detayları</h4>
                        </div>
                        <!-- end widget-title -->
                        <ul class="contact-details">
                            <li><a href="#"><i class="fa fa-phone"></i>+90 264 987 66 55</a></li>
                            <li><a href="#"><i class="fa fa-fax"></i>+90 264 987 66 54</a></li>
                            <li><a href="#"><i class="fa fa-envelope-o"></i>support@StudentFreelancer.com</a></li>
                            <li><a href="#"><i class="fa fa-link"></i>www.StudentFreelancer.com</a></li>
                        </ul>
                    </div>
                    <!-- end widget -->

                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->

</asp:Content>
