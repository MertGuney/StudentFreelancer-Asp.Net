<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages.Master" AutoEventWireup="true" CodeBehind="FAQS.aspx.cs" Inherits="StudentFreelancerLogin.FAQS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">


    <div class="db section">
        <div class="container">
            <div class="page-title text-center">
                <div class="heading-holder">
                    <h1>FAQS</h1>
                </div>
                <p class="lead">Merhaba burada sıkça sorulan soruların cevaplarını bulabilirsiniz.</p>
            </div>
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->

    <div class="section lb">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="customfaqs panel-group" id="accordion6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion6" href="#collapse136">Nasıl iş bulurum?</a>
                                </h4>
                            </div>
                            <div id="collapse136" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <p><a href="SearchJob.aspx">İşler</a>sekmesine giderek alanınıza uygun işleri bulabilir sonrasında işveren ile görüşerek bir işe başlıyabilirsiniz.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion6" href="#collapse236">Projeyi nasıl teslim alıyorum ?</a>
                                </h4>
                            </div>
                            <div id="collapse236" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Yayınladığınız projeyi bir öğrenciyle anlaştıktan sonra yapımda butonuna tıklamanız gerekmetedir sonrası öğrencinin projeyi tamamlamasına kalıyor tamamlanan projeyi öğrenci yüklediğinde tamamlanan projeler sekmesinden ulaşabilirsiniz.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion6" href="#collapse336">Ödememi nasıl alırım ?</a>
                                </h4>
                            </div>
                            <div id="collapse336" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p>Projeyi bitirdikten sonra önce işverenle görüşmenizi tavsiye ederiz sonra projeyi teslim ediniz ve vermiş olduğunuz IBAN hesabına işveren tarafından aktarılan para yatıcaktır.</p>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion6" href="#collapse436">Şifre Kullanıcı adı değiştirme.</a>
                                </h4>
                            </div>
                            <div id="collapse436" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <p><a href="ChangePassword.aspx">Şifre Değiştirme</a> işleminiz için link üzerinden işleminizi yapabilirsiniz.<a href="MyProfile.aspx">Kullanıcı adı </a>işleminiz için istediğiniz profildeki kullanıcı adınızı değiştirebilirsiniz.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end panel -->
                </div>
            </div>
        </div>
        <!-- end container -->
    </div>
    <!-- end section -->

</asp:Content>
