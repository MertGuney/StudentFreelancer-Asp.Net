<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="StudentFreelancerLogin.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">


    <div class="section hero">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="home-title text-center">
                        <h3>Ben İşverenim</h3>
                        <p>Yapılıcak işleriniz var ama bütçeniz mi yok yada elinizdeki iş yükünü azaltmak için çalışan mı arıyorsunuz öğrencilerle bunları paylaşıp iş ortağı olmaya ne dersiniz ? Hadi durmayın hemen üye olun.</p>
                        <a href="Freelancers.aspx" class="btn btn-primary">Çalışanını Bul</a>
                    </div>
                </div>
                <!-- end col -->

                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="home-title rightside text-center">
                        <h3>Ben Öğrenciyim</h3>
                        <p>Pekiştirirken öğrenmeye öğrenirken gelişmeye gelişirken para kazanmaya ne dersiniz ? Hadi durmayın hemen üye olun.</p>
                        <a href="SearchJob.aspx" class="btn btn-primary">İşini Bul</a>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
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
                <div class="job-title hidden-sm hidden-xs">
                    <h5>Son işler</h5>
                </div>
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
                                        <h4><%# Eval("Proje_Ucret") %>/TL</h4>
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
            <!-- end all-jobs -->

            <hr class="largeinvis">

            <div class="loadmorebutton text-center clearfix">
                <a href="SearchJob.aspx" class="btn btn-custom" id="loadMore">Daha Fazlası</a>
            </div>
            <!-- end loadmore -->
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->

    <div class="section lb">
        <div class="container">
            <div class="section-title text-center clearfix">
                <h4>En aktif öğrenciler</h4>
                <p class="lead">En aktif ve çalışkan iki öğrenciyi buradan görebilirsiniz.Eğer buraya profilinin eklenmesini istiyorsan hadi durma çalışmaya başla.</p>
            </div>

            <div class="row freelancer-list">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="freelancer-wrap row-fluid clearfix">
                        <div class="col-md-3 text-center">
                            <div class="post-media">
                                <img class="img-responsive" src="HTML/upload/testi_09.png" alt="">
                            </div>
                        </div>
                        <!-- end col -->

                        <div class="col-md-9">
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <h4><a href="#">Sude Durmaz</a></h4>
                            <ul class="list-inline">
                                <li><small>Grafik Tasarım</small></li>
                                <li><small>21 iş Yapıldı</small></li>
                            </ul>
                            <p>Ben Sude Durmaz Profilimi incelemek için bağlantıya tıklayınız.</p>
                        </div>
                        <!-- end col -->
                        <a href="#" class="btn btn-primary"><span class="oi" data-glyph="link-intact"></span></a>
                    </div>
                    <!-- end freelancer-wrap -->
                </div>
                <!-- end col -->

                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="freelancer-wrap row-fluid clearfix">
                        <div class="col-md-3 text-center">
                            <div class="post-media">
                                <img class="img-responsive" src="HTML/upload/testi_04.png" alt="">
                            </div>
                        </div>
                        <!-- end col -->

                        <div class="col-md-9">
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <h4><a href="#">Aziz Çalışkan</a></h4>
                            <ul class="list-inline">
                                <li><small>Web Tasarımı</small></li>
                                <li><small>42 iş yapıldı</small></li>
                            </ul>
                            <p>Ben Aziz Çalışkan profilimi incelemek için bağlantıya tıklayınız.</p>
                        </div>
                        <!-- end col -->
                        <a href="#" class="btn btn-primary"><span class="oi" data-glyph="link-intact"></span></a>
                    </div>
                    <!-- end freelancer-wrap -->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->

            <div class="loadmorebutton margintop text-center clearfix">
                <a href="#" class="btn btn-default">Tüm öğrencileri gör</a>
            </div>
            <!-- end loadmore -->
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->

    <div class="parallax section parallax-off" style="background-image: url('HTML/upload/parallax.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-6">
                    <div class="section-title text-left clearfix">
                        <h4>Neden Biz ?</h4>
                        <p class="lead">
                            Öğrenim görmeye devam ederken öğrendiklerinizi pekiştirmeniz kendinizi geliştimeniz ve dolu dolu bir CV 'ye sahip olmak istemez misiniz? 
                        </p>
                    </div>

                    <div class="about-widget">
                        <h5>Nasıl Para kazanırım ?</h5>
                        <ul class="customlist">
                            <li>İş verenlerin yayınladığı projelerden kendinize uygun olanı bulmakla başlamaya ne dersin?</li>
                            <li>Projeyi tamamladıktan sonra iş verenle iletişime geçip işlemlerin bittikten sonra ödemeni alabilirsin.</li>
                            <li>Bir sorunla karşılaşırsan biz buradayız merak etme destek bölümümüzden bizim ile iletişime geçebilir ve sorununu bize bildirebilirsin.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->

    <div class="section lb">
        <div class="container">
            <div class="section-title text-center clearfix">
                <h4>Blog Sayfamızdan</h4>
                <p class="lead">Blog Sayfasından öne çıkanlar</p>
            </div>

            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="blog-widget">
                        <h5 class="color1"><a href="#">Web Tasarımı</a></h5>
                        <h4><a href="single.html">İşe hoşgeldin</a></h4>
                        <div class="blog-meta clearfix">
                            <ul class="list-inline">
                                <li><a href="#"><i class="fa fa-clock-o"></i>21 Mart 2019</a></li>
                                <li><a href="#"><i class="fa fa-comment-o"></i>21</a></li>
                                <li><a href="#"><i class="fa fa-pencil"></i>Ali</a></li>
                            </ul>
                        </div>
                        <p>Yaptığım projelerden çok memnun kalan bir firma ile anlaştım</p>
                        <a class="readmore" href="single.html">Devamını Görüntüle</a>
                    </div>
                </div>
                <!-- end col -->

                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="blog-widget">
                        <h5 class="color2"><a href="#">Ödeme sorunu</a></h5>
                        <h4><a href="single.html">Ödememi alamadım!!</a></h4>
                        <div class="blog-meta clearfix">
                            <ul class="list-inline">
                                <li><a href="#"><i class="fa fa-clock-o"></i>15 Mart 2019</a></li>
                                <li><a href="#"><i class="fa fa-comment-o"></i>44</a></li>
                                <li><a href="#"><i class="fa fa-pencil"></i>Mahmut</a></li>
                            </ul>
                        </div>
                        <p>
                            Destek ekibi inanılmaz!! alamadığım ödemem o kadar hızlı çözüldü ki ne kadar teşekkür etsem az. 
                        </p>
                        <a class="readmore" href="single.html">Devamını Görüntüle</a>
                    </div>
                </div>
                <!-- end col -->

                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="blog-widget">
                        <h5 class="color3"><a href="#">Son Güncellemeler
                        </a></h5>
                        <h4><a href="single.html">Yeni kullanıcı paneli</a></h4>
                        <div class="blog-meta clearfix">
                            <ul class="list-inline">
                                <li><a href="#"><i class="fa fa-clock-o"></i>11 Mayıs 2019</a></li>
                                <li><a href="#"><i class="fa fa-comment-o"></i>22</a></li>
                                <li><a href="#"><i class="fa fa-pencil"></i>StudentFreelancer</a></li>
                            </ul>
                        </div>
                        <p>Sizler için her şeyi kolaylaştırmaya devam ediyoruz.Yeni kullanıcı paneli ile işlemler artık daha hızlı</p>
                        <a class="readmore" href="single.html">Devamını görüntüle</a>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->

            <div class="loadmorebutton text-center clearfix">
                <a href="#" class="btn btn-primary">Blog sayfasını görüntüle</a>
            </div>
            <!-- end loadmore -->
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->


</asp:Content>
