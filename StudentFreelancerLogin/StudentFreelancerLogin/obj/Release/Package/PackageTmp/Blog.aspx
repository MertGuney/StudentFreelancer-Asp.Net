<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="StudentFreelancerLogin.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">


    <div class="parallax section parallax-off" style="background-image: url('HTML/upload/blogbg.jpg');">
        <div class="container">
            <div class="page-title text-center">
                <div class="heading-holder">
                    <h1>Blog</h1>
                </div>
                <p class="lead">Son yazılar</p>
            </div>
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->

    <div class="section lb">
        <div class="container">
            <div class="row">
                <div class="content col-md-8">
                    <asp:Repeater ID="RptBlog" runat="server">
                        <ItemTemplate>
                            <div class="blog-widget">
                                <div class="post-media">
                                    <a href="single.html" title="">
                                        <img src="upload/blog_05.jpg" alt=""></a>
                                </div>
                                <h5 class="color3"><a href="#"><%# Eval("") %></a></h5>
                                <h4><a href="single.html"><%# Eval("") %></a></h4>
                                <div class="blog-meta clearfix">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fa fa-clock-o"></i><%# Eval("") %></a></li>
                                        <li><a href="#"><i class="fa fa-comment-o"></i><%# Eval("") %></a></li>
                                        <li><a href="#"><i class="fa fa-pencil"></i><%# Eval("") %></a></li>
                                    </ul>
                                </div>
                                <p><%# Eval("") %></p>
                                <a class="readmore" href="single.html">Devamı...</a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
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

                <div class="sidebar col-md-4">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h4>Sosyal Medyada Biz</h4>
                        </div>
                        <!-- end widget-title -->

                        <div class="text-widget">
                            <p>Sosyal Medyada Bizi Takip Etmek İçin</p>

                            <ul class="list-inline social-small">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                            </ul>
                        </div>
                        <!-- end text-widget -->
                    </div>
                    <!-- end widget -->

                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h4>Popüler işler</h4>
                        </div>
                        <!-- end widget-title -->

                        <div class="owl-job-carousel owl-job-widget owl-carousel owl-theme text-center">
                            <div class="job-tab">
                                <div class="post-media">
                                    <a href="job-single.html">
                                        <img src="HTML/upload/job_01.jpg" alt="" class="img-responsive"></a>
                                    <div class="badge part-badge">Part Time</div>
                                </div>
                                <!-- end media -->
                                <div class="job-big-meta">
                                    <h3><a href="job-single.html" title="">Hiring Online English Teachers</a></h3>
                                    <small>
                                        <span>Publisher : <a href="#">Bob Sturan</a></span>
                                        <span>In : <a href="#">Web Design</a></span>
                                    </small>
                                </div>
                                <!-- end job-big-meta -->
                            </div>
                            <!-- end job-tab -->

                            <div class="job-tab">
                                <div class="post-media">
                                    <a href="job-single.html">
                                        <img src="HTML/upload/job_02.jpg" alt="" class="img-responsive"></a>
                                    <div class="badge freelancer-badge">Freelancer</div>
                                </div>
                                <!-- end media -->
                                <div class="job-big-meta">
                                    <h3><a href="job-single.html" title="">Looking Logo Designer</a></h3>
                                    <small>
                                        <span>Publisher : <a href="#">Patrick</a></span>
                                        <span>In : <a href="#">Graphic Design</a></span>
                                    </small>
                                </div>
                                <!-- end job-big-meta -->
                            </div>
                            <!-- end job-tab -->
                        </div>
                        <!-- end job-widget -->
                    </div>
                    <!-- end widget -->

                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h4>Popüler çalışanlar</h4>
                        </div>
                        <!-- end widget-title -->

                        <div class="owl-freelancer-carousel owl-job-widget owl-carousel owl-theme">
                            <div class="freelancer-wrap row clearfix">
                                <div class="col-md-4">
                                    <div class="post-media">
                                        <img class="img-responsive" src="upload/testi_05.png" alt="">
                                    </div>
                                </div>

                                <div class="col-md-8">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <h4><a href="#">Amanda Pelt</a></h4>
                                    <ul class="list-inline">
                                        <li><small>Web Designer</small></li>
                                        <li><small>98 Jobs Done</small></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- end freelancer-wrap -->

                            <div class="freelancer-wrap row clearfix">
                                <div class="col-md-4">
                                    <div class="post-media">
                                        <img class="img-responsive" src="upload/testi_01.png" alt="">
                                    </div>
                                </div>

                                <div class="col-md-8">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <h4><a href="#">Jenny Lisbon</a></h4>
                                    <ul class="list-inline">
                                        <li><small>Graphic Designer</small></li>
                                        <li><small>21 Jobs Done</small></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- end freelancer-wrap -->
                        </div>
                        <!-- end job-widget -->
                    </div>
                    <!-- end widget -->

                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h4>Blog</h4>
                        </div>
                        <!-- end widget-title -->

                        <div class="postpager liststylepost">
                            <ul class="post-blog">
                                <li>
                                    <div class="post">
                                        <a href="job-single.html">
                                            <img alt="" src="upload/pager_01.png" class="img-responsive alignleft">
                                            <h4>Learning Professional English in 20 Days</h4>
                                        </a>
                                        <div class="blog-meta clearfix">
                                            <ul class="list-inline">
                                                <li><a href="#"><i class="fa fa-clock-o"></i>17 March 2016</a></li>
                                                <li><a href="#"><i class="fa fa-comment-o"></i>44</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="post">
                                        <a href="job-single.html">
                                            <img alt="" src="upload/pager_02.png" class="img-responsive alignleft">
                                            <h4>Selecting Material Design and Colors</h4>
                                        </a>
                                        <div class="blog-meta clearfix">
                                            <ul class="list-inline">
                                                <li><a href="#"><i class="fa fa-clock-o"></i>15 March 2016</a></li>
                                                <li><a href="#"><i class="fa fa-comment-o"></i>22</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="post">
                                        <a href="job-single.html">
                                            <img alt="" src="upload/pager_03.jpg" class="img-responsive alignleft">
                                            <h4>Getting Starting Web Design</h4>
                                        </a>
                                        <div class="blog-meta clearfix">
                                            <ul class="list-inline">
                                                <li><a href="#"><i class="fa fa-clock-o"></i>11 March 2016</a></li>
                                                <li><a href="#"><i class="fa fa-comment-o"></i>12</a></li>
                                            </ul>
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
                            <h4>Kategoriler</h4>
                        </div>
                        <!-- end widget-title -->
                        <ul class="check">
                            <li><a href="#">Coding <span>(12)</span></a></li>
                            <li><a href="#">Design & Development <span>(21)</span></a></li>
                            <li><a href="#">Branding <span>(44)</span></a></li>
                            <li><a href="#">Social Marketing <span>(09)</span></a></li>
                            <li><a href="#">Form Elements <span>(31)</span></a></li>
                            <li><a href="#">LifeStyle <span>(41)</span></a></li>
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
