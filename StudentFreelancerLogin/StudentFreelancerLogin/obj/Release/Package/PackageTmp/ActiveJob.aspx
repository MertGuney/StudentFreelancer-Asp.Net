<%@ Page Title="" Language="C#" MasterPageFile="~/UserPages.Master" AutoEventWireup="true" CodeBehind="ActiveJob.aspx.cs" Inherits="StudentFreelancerLogin.ActiveJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">


    <div class="section db">
        <div class="container">
            <div class="page-title text-center">
                <div class="heading-holder">
                    <h1>Aktif İşler</h1>
                </div>
                <p class="lead">Yayındaki işler</p>
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
                            <li class="active"><a href="ActiveJob.aspx"><span class="glyphicon glyphicon-briefcase"></span>Aktif İşler</a></li>
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
                            <h5>Aktif</h5>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive job-table">
                                    <table id="mytable" class="table table-bordred table-striped">

                                        <thead>
                                            <tr>
                                                <th>Başlık</th>
                                                <th>Ücret</th>
                                                <th>Durum</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <asp:Repeater ID="RptJobs" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td>
                                                            <h4><a href="JobDetail.aspx?Proje_id=<%# Eval("Proje_id") %>"><%# Eval("Proje_Baslik") %></a><br>
                                                                <small>Verilen Tarih : <%# Eval("Tarih") %></small> <small>Son Tarih : <%# Eval("Bitis_Tarih") %></small>
                                                            </h4>
                                                        </td>
                                                        <td><%# Eval("Proje_Ucret") %></td>
                                                        <td>
                                                            <span data-placement="top" data-toggle="tooltip" title="Tamamlandı">
                                                                <a href="ActiveJob.aspx?Proje_id=<%# Eval("Proje_id") %>">
                                                                    <button runat="server" id="BTN_Tamamlandi" class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                                                                </a>
                                                            </span>
                                                            <span data-placement="top" data-toggle="tooltip" title="Sil">
                                                                <a href="ActiveJob.aspx?Proje_id=<%# Eval("Proje_id") %>&islem=sil">
                                                                    <label runat="server" id="BTN_Sil" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></label>
                                                                </a>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>


                                        </tbody>
                                    </table>
                                </div>
                                <!-- end table -->
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->
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
