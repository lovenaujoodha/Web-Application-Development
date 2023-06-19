<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Assignment.GuestSite.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="UTF-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css"/>
</head>
<body style="background-color:#FBF4F4">
         <a href="home.aspx">
                <img src="images/logo.jpeg" height="90" width="120" align="left">
            </a>
    <form id="form1" runat="server">
        <br /><br /><br /><br />
        <div class="row d-flex justify-content-center">
            <div class="col-md-4"> 

            <ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link active" id="tab-login" data-mdb-toggle="pill" href="#pills-login" role="tab"
                        aria-controls="pills-login" aria-selected="true">Login</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="tab-register" data-mdb-toggle="pill" href="register.aspx" role="tab"
                        aria-controls="pills-register" aria-selected="false">Register</a>
                </li>
            </ul>

                <div class="tab-content">
                    <div class="tab-pane fade show active" id="pills-login" role="tabpanel" aria-labelledby="tab-login">

                        <div class="text-center mb-3">
                            <p>Sign in with:</p>
                            <button type="button" class="btn btn-link btn-floating mx-1">
                                <i class="bi bi-facebook"></i>
                            </button>

                            <button type="button" class="btn btn-link btn-floating mx-1">
                                <i class="bi bi-google"></i>
                            </button>

                            <button type="button" class="btn btn-link btn-floating mx-1">
                                <i class="bi bi-twitter"></i>
                            </button>

                        </div>

                        <p class="text-center">or:</p>                      

                        <div class="row">
                            <div class="col-md-12">
                                <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                            </div>
                        </div>

                        <div class="form-outline mb-4">
                            Username
                <asp:TextBox ID="txtUsername" runat="server" class="form-control"></asp:TextBox>
                        </div>

                        <div class="form-outline mb-4">
                            Password
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                        </div>

                        <!-- 2 column grid layout -->
                        <div class="row mb-4">
                            <div class="col-md-6 d-flex justify-content-center">
                                <!-- Checkbox -->
                                <div class="form-check mb-3 mb-md-0">
                                    <input class="form-check-input" type="checkbox" value="" id="loginCheck" checked />
                                    <label class="form-check-label" for="loginCheck">Remember me </label>
                                </div>
                            </div>

                            <div class="col-md-6 d-flex justify-content-center">
                                <!-- Simple link -->
                                <a href="#!">Forgot password?</a>
                            </div>
                        </div>

                        <!-- Register buttons -->
                        <div class="text-center">
                            <p>Not a member? <a href="register.aspx">Register</a></p>
                        </div>
                    </div>

                    <!-- Submit button -->
                    <asp:Button ID="btnLogin" runat="server" Text="Sign in" OnClick="btnLogin_Click" class="btn btn-primary btn-block mb-3" />

                </div>
            </div>
        </div>
    </form>
</body>
</html>
