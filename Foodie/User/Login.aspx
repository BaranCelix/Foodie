<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Foodie.User.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
        /* For disappearing alert message */
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblmsg.ClientID%>").style.display = "none";
             }, seconds * 1000);
        };

        /* Toggle Password Visibility */
        function togglePasswordVisibility() {
            var passwordField = document.getElementById("<%= txtPassword.ClientID %>");
            var eyeIcon = document.getElementById("eyeIcon");

            if (passwordField.type === "password") {
                passwordField.type = "text";
                eyeIcon.classList.remove("fa-eye");
                eyeIcon.classList.add("fa-eye-slash");
            } else {
                passwordField.type = "password";
                eyeIcon.classList.remove("fa-eye-slash");
                eyeIcon.classList.add("fa-eye");
            }
        }

        /* Enter tuşu ile form gönderimi */
        document.addEventListener('keydown', function (event) {
            if (event.key === 'Enter') {
                event.preventDefault(); // Varsayılan Enter davranışını engeller
                document.getElementById("<%= btnLogin.ClientID %>").click(); // Giriş yap butonuna tıklamayı tetikler
            }
        });
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label runat="server" ID="lblmsg"></asp:Label>
                </div>
                <h2>Giriş Yap</h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form_container">
                        <img id="userLogin" src="../Images/fastfoodlogin.png" alt="" class="img-thumbnail" style="width: 400px; height: 400px; border: none;" />
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form_container">
                        <div>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Kullanıcı adı boş bırakılamaz" ControlToValidate="txtUsername" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Kullanıcı adı giriniz"></asp:TextBox>
                        </div>

                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Şifre boş bırakılamaz" ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" Font-Size="Small"></asp:RequiredFieldValidator>

                            <div class="form-group position-relative">
                                <!-- Şifre Giriş Alanı -->
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control pr-5" placeholder="Şifrenizi giriniz" TextMode="Password"></asp:TextBox>

                                <!-- Göz Simgesi -->
                                <span class="position-absolute" style="right: 15px; top: 50%; transform: translateY(-50%); cursor: pointer;" onclick="togglePasswordVisibility()">
                                    <i class="fa fa-eye" id="eyeIcon"></i>
                                </span>
                            </div>

                        </div>
                    </div>

                    <div class="btn_box">
                        <asp:Button ID="btnLogin" runat="server" Text="Giriş Yap" CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white" OnClick="btnLogin_Click" />
                        <span class="pl-3 text-info">Burada yeni misin ? <a href="Registration.aspx" class="badge badge-info">Aramıza katıl.. </a></span>
                    </div>
                </div>
            </div>

        </div>
    </section>

</asp:Content>
