<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Assignment.GuestSite.register" %>

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
        <div>
            <br />
            <br />
            <div class="row d-flex justify-content-lg-center">
                <div class="col-md-4">

                    <ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="tab-login" data-mdb-toggle="pill" href="login.aspx" role="tab"
                                aria-controls="pills-login" aria-selected="true">Login</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link active" id="tab-register" data-mdb-toggle="pill" href="register.aspx" role="tab"
                                aria-controls="pills-register" aria-selected="false">Register</a>
                        </li>
                    </ul>

                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="pills-register" role="tabpanel" aria-labelledby="tab-register">
                            <div class="text-center mb-3">
                                <p>Sign up with:</p>
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
                                First Name
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-outline mb-4">
                                Last Name
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-outline mb-4">
                                NIC/Passport No
                <asp:TextBox ID="txtNIC" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-outline mb-4">
                                Address 1
                <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-outline mb-4">
                                Address 2
                <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-outline mb-4">
                                Email
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-outline mb-4">
                                Phone Number
                <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                            </div>


                            <div class="form-outline mb-4">
                                Mobile Number
                <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox>
                            </div>

                            <div class="row">
                                <div class="form-outline mb-4">
                                    Gender
                                    <asp:DropDownList ID="drpGender" runat="server">
                                        <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="row">
                                    <div class="form-outline mb-4">
                                        Country
                                        <asp:DropDownList ID="drpCountry" runat="server"></asp:DropDownList>
                                    </div>

                                    <div class="form-outline mb-4">
                                        Password
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>

                                    <div class="form-outline mb-4">
                                        Confirm Password
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>

                                    <!-- Checkbox -->
                                    <div class="form-check d-flex justify-content-center mb-4">
                                        <input class="form-check-input me-2" type="checkbox" value="" id="registerCheck"
                                            aria-describedby="registerCheckHelpText" />
                                        <label class="form-check-label" for="registerCheck">
                                            I have read and agree to the terms
                                        </label>
                                    </div>
                                    <!-- Submit button -->
                                    <asp:Button ID="btnSave" runat="server" Text="Register" OnClick="btnSave_Click" class="btn btn-primary btn-block mb-3" />
                                    
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
    </form>
</body>
</html>
