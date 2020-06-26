<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StudentFreelancerLogin.Register" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>StudentFreelancer</title>
    <link rel="stylesheet" type="text/css" href="Assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="Assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="Assets/css/iofrm-style.css">
    <link rel="stylesheet" type="text/css" href="Assets/css/iofrm-theme1.css">
</head>
<body>

    <div class="form-body">
        <div class="website-logo">
            <a href="Default.aspx">
                <div class="logo">
                    <img class="logo-size" src="Assets/images/logo-light.svg" alt="">
                </div>
            </a>
        </div>
        <div class="container-fluid">
            <form id="Form1" runat="server">
                <div class="row">
                    <div class="img-holder">
                        <div class="bg"></div>
                        <div class="info-holder">
                        </div>
                    </div>
                    <div class="form-holder">
                        <div class="form-content">
                            <div class="form-items">
                                <h3>StudentFreelancer</h3>
                                <p>Yapılması gereken onlarca proje var hadi durma giriş yap ve bir işe başla.</p>
                                <div class="form-button">
                                    <div>
                                        <a class="ibtn" href="https://loginstudentfreelancer.mertguney.com">Ziyaretçi Ol</a>
                                    </div>
                                </div>
                                <div class="page-links">
                                    <a href="Default.aspx">Giriş Yap</a><a class="active" href="Register.aspx">Üye Ol</a>
                                </div>
                                <div>
                                    <asp:TextBox ID="TB_Name" class="form-control" placeholder="Adınız" runat="server"></asp:TextBox>
                                    <asp:TextBox ID="TB_Mail" class="form-control" placeholder="E-Mail" runat="server" TextMode="Email"></asp:TextBox>
                                    <asp:TextBox ID="TB_UserName" class="form-control" placeholder="Kullanıcı Adınız" runat="server"></asp:TextBox><hr />
                                    <asp:RadioButtonList ID="RBLChoose" runat="server" AutoPostBack="True">
                                        <asp:ListItem Value="Student">Öğrenci</asp:ListItem>
                                        <asp:ListItem Value="Employer">İş Veren</asp:ListItem>
                                    </asp:RadioButtonList><hr />
                                    <asp:TextBox ID="TB_Password" class="form-control" placeholder="Şifre" runat="server" TextMode="Password"></asp:TextBox>
                                    <div class="form-button">
                                        <asp:Button ID="BTN_Kaydol" class="ibtn" runat="server" Text="Kaydol" OnClick="BTN_Kaydol_Click" />
                                        <asp:Label ID="LB_Bilgi" runat="server"></asp:Label><br />
                                        <a href="forget1.aspx">Şifremi Unuttum</a>
                                    </div>
                                </div>
                                <div class="other-links">
                                    <span>Ya da</span><a href="#">Facebook</a><a href="#">Google</a><a href="#">Linkedin</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script src="Assets/js/jquery.min.js"></script>
    <script src="Assets/js/popper.min.js"></script>
    <script src="Assets/js/bootstrap.min.js"></script>
    <script src="Assets/js/main.js"></script>
</body>
</html>
