<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages.Master" AutoEventWireup="true" CodeBehind="EditStudent.aspx.cs" Inherits="StudentFreelancerLogin.EditStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="section db">
        <div class="container">
            <div class="page-title text-center">
                <div class="heading-holder">
                    <h1>Profilinizi Düzenleyin</h1>
                </div>
                <p class="lead">Merhabalar burası sizin özel sayfanız. Giriceğiniz bilgiler popülerliğinizi arttırır.</p>
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
                            <li class="active"><a href="MyProfile.aspx"><span class="glyphicon glyphicon-off"></span>Profil Düzenle</a></li>
                            <li><a href="SubmitJob.aspx"><span class="glyphicon glyphicon-edit"></span>İş Ekle</a></li>
                            <li><a href="ActiveJob.aspx"><span class="glyphicon glyphicon-briefcase"></span>Aktif İşler</a></li>
                            <li><a href="PassedJob.aspx"><span class="glyphicon glyphicon-star"></span>Yapılan İşler</a></li>
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
                            <h5>Öğrenci Profilim</h5>
                        </div>
                        <div id="submit" class="submit-form">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <label class="control-label">Fotoğraf <small>Lütfen bir fotoğrafınızı yükleyiniz. (800x800)</small></label>
                                    <div class="fileupload fileupload-new" data-provides="fileupload">
                                        <div class="fileupload-preview thumbnail">
                                            <asp:Image ID="Img_Resim" runat="server" />
                                        </div>
                                        <br>
                                        <asp:FileUpload ID="FU_Resim" runat="server" />
                                        <asp:Button ID="BTN_Resim" class="btn btn-default btn-file" runat="server" Text="Yükle" />
                                    </div>
                                </div>
                            </div>
                            <!-- end row -->
                            <hr>
                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Ad</label>
                                    <asp:TextBox ID="TB_Ad" class="form-control" placeholder="Ad-Soyad" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Kullanıcı Adı</label>
                                    <asp:TextBox ID="TB_Kullanici" class="form-control" placeholder="Yeni Kullanıcı Adı" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Telefon<small>Başında '0' olmadan giriniz.</small></label>
                                    <asp:TextBox ID="TB_Tel" class="form-control" placeholder="(5**) *** ** **" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Mail</label>
                                    <asp:TextBox ID="TB_Mail" class="form-control" placeholder="Support@StudentFreelancer.com" runat="server" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Ülke</label><br />
                                    <asp:TextBox ID="TB_Country" class="form-control" placeholder="Türkiye" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Şehir</label><br />
                                    <asp:TextBox ID="TB_City" class="form-control" placeholder="İzmir" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row" style="height: 150px;">
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Üniversite</label><br />
                                    <asp:DropDownList ID="DDLUniversity" Style="max-height: 150px; width: 250px; overflow-y: scroll;" onmousedown="this.size=5;" onfocusout="this.size=1;" ondblclick="this.size=1;" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Bölüm</label><br />
                                    <asp:DropDownList ID="DDLDepartment" Style="max-height: 150px; width: 250px; overflow-y: scroll;" onmousedown="this.size=5;" onfocusout="this.size=1;" ondblclick="this.size=1;" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Yetenekler</label><br />
                                    <div style="overflow-y: scroll; height: 100px">
                                        <asp:CheckBoxList ID="CBL_Skill" runat="server"></asp:CheckBoxList>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <label class="control-label">Bildiğiniz Diller</label><br />
                                    <div style="overflow-y: scroll; height: 100px">
                                        <asp:CheckBoxList ID="CBL_Language" runat="server"></asp:CheckBoxList>
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <label class="control-label">Hakkınızda <small>Kendinizi bize tanıtın.</small></label>
                                    <asp:TextBox ID="TB_Hakkimda" class="form-control" placeholder="Neden sizi tercih etmeliyiz ?" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    <br>
                                    <label class="control-label">IBAN <small>Ödeme yöntemi için bir IBAN numarası giriniz</small></label>
                                    <asp:TextBox ID="TB_IBAN" class="form-control" placeholder="TR*********************" runat="server"></asp:TextBox>
                                    <br />
                                    <label class="control-label">Website <small>Site Linkinizi yapıştırın.</small></label>
                                    <asp:TextBox ID="TB_Web" class="form-control" placeholder="https://StudentFreelancer.com/" runat="server"></asp:TextBox>
                                    <br>
                                    <label class="control-label">Facebook URL <small>İsteğe bağlı</small></label>
                                    <asp:TextBox ID="TB_FB" class="form-control" placeholder="https://facebook.com/StudentFreelancer" runat="server"></asp:TextBox>
                                    <br>
                                    <label class="control-label">Twitter URL <small>İsteğe bağlı</small></label>
                                    <asp:TextBox ID="TB_Twitter" class="form-control" placeholder="https://twitter.com/StudentFreelancer" runat="server"></asp:TextBox>
                                    <br>
                                </div>
                            </div>
                            <!-- end row -->
                            <hr>
                            <asp:Button class="btn btn-primary" ID="BTN_Güncelle" runat="server" Text="Güncelle" OnClick="BTN_Güncelle_Click" />
                        </div>
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
