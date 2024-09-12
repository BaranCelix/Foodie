<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Foodie.User.Registration" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
        /* For disappearing alert message */
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblMsg.ClientID%>").style.display = "none";
            }, seconds * 1000);
        };
    </script>


    <script>
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=imgUser.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>
                <asp:Label ID="lblHeaderMsg" runat="server" Text="<h2>Kayıt Ol</h2>"></asp:Label>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form_container">
                        <div>

                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Ad-Soyad alanı boş bırakılamaz!" ControlToValidate="txtName"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revName" runat="server" ErrorMessage="İsim, yalnızca alfabetik karakterlerden oluşmalıdır."
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[a-zA-Z\u00C0-\u017F\s]+$"
                                ControlToValidate="txtName"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Ad ve soyadınızı giriniz."
                                ToolTip="Full Name"></asp:TextBox>
                        </div>

                        <div>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Kullanıcı adı boş bırakılamaz!" ControlToValidate="txtUsername" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Kullanıcı adınızı giriniz."
                                ToolTip="Kullanıcı Adı"></asp:TextBox>

                        </div>
                        <div>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="E-Posta boş bırakılamaz!" ControlToValidate="txtEmail" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Mail adresinizi giriniz."
                                ToolTip="E-Posta" TextMode="Email"></asp:TextBox>

                        </div>
                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Telefon numarası boş bırakılamaz!" ControlToValidate="txtMobile"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revMobile" runat="server" ErrorMessage="Tel no, 10 rakamdan oluşmalıdır(Başında '0' olmadan giriniz.)"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{10}$"
                                ControlToValidate="txtMobile"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Telefon numaranızı giriniz."
                                ToolTip="Telefon Numarası" TextMode="Number"></asp:TextBox>
                        </div>

                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form_container">

                        <div>
                            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Adres alanı boş bırakılamaz!" ControlToValidate="txtAddress"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Adresinizi giriniz."
                                ToolTip="Adres Bilgisi" TextMode="MultiLine"></asp:TextBox>

                        </div>

                        <div>
                            <asp:RequiredFieldValidator ID="rfvPostCode" runat="server" ErrorMessage="Posta Kodu boş bırakılamaz!" ControlToValidate="txtPostCode" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revPostCode" runat="server" ErrorMessage="Posta Kodu,5 rakamdan  oluşmalıdır."
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{5}$"
                                ControlToValidate="txtPostCode"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtPostCode" runat="server" CssClass="form-control" placeholder="Posta kodunuzu giriniz."
                                ToolTip="Posta Kodu" TextMode="Number"></asp:TextBox>

                        </div>

                        <div>
                            <asp:FileUpload ID="fuUserImage" runat="server" CssClass="form-control" ToolTip="Kullanıcı resmi"
                                onchange="ImagePreview(this);" />

                        </div>
                        <div>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Şifre boş bırakılamaz!" ControlToValidate="txtPassword"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>

                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Şifrenizi giriniz."
                                ToolTip="Şifre" TextMode="Password" ValidateRequestMode="Disabled"></asp:TextBox>

                            <!-- Şifreyi göster checkbox'ı -->
                            <input type="checkbox" id="showPassword" onclick="togglePassword()">
                            Şifreyi göster
                        </div>

                        <script>
                            function togglePassword() {
                                var passwordField = document.getElementById('<%= txtPassword.ClientID %>');
                                var checkbox = document.getElementById("showPassword");

                                // Eğer checkbox işaretli ise şifreyi göster, değilse gizle
                                if (checkbox.checked) {
                                    passwordField.type = "text";
                                } else {
                                    passwordField.type = "password";
                                }
                            }
                        </script>

                    </div>
                </div>

                <div class="row pl-4">
                    <div class="btn_box">
                        <asp:Button ID="btnRegister" runat="server" Text="Kayıt Ol" CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white"
                            OnClick="btnRegister_Click" />

                        <asp:Label ID="lblAlreadyUser" runat="server" CssClass="pl-3 text-black-100"
                            Text="Zaten üye misin ? <a href='Login.aspx' class='badge badge-info'>Giriş Yap..</a>">
                        </asp:Label>
                    </div>
                </div>


                <div class="row p-5">
                    <div style="align-items: center">
                        <asp:Image ID="imgUser" runat="server" CssClass="img-thumbnail" />
                    </div>
                </div>
            </div>
        </div>
    </section>


</asp:Content>
