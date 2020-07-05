<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Tech.Website.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hero" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middleArea" runat="server">
    <div class="page-header" style="background: url(assets/img/banner1.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="breadcrumb-wrapper">
                        <h2 class="product-title">Join Us</h2>
                        <ol class="breadcrumb">
                            <li><a href="#">Home /</a></li>
                            <li class="current">Register</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <section class="register section-padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5 col-md-12 col-xs-12">
                    <div class="register-form login-area">
                        <h3>
                            Register
                        </h3>

                        <div class="login-form">
                            <div class="form-group">
                                <div class="input-icon">
                                    <i class="lni-user"></i>
                                    <input type="text" runat="server" ID="userName" class="form-control" name="email" placeholder="Username"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-icon">
                                    <i class="lni-envelope"></i>
                                    <input type="text" runat="server" ID="email" class="form-control" name="email" placeholder="Email Address"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-icon">
                                    <i class="lni-lock"></i>
                                    <input type="password" runat="server" ID="password" class="form-control" placeholder="Password"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-icon">
                                    <i class="lni-lock"></i>
                                    <input type="password" runat="server" ID="retypePassword" class="form-control" placeholder="Retype Password"/>
                                </div>
                            </div>
                           
                            <label ID="lbl" runat="server"></label>
                            <div class="text-center">
                                <button type="button" class="btn btn-common log-btn" runat="server" OnServerClick="OnServerClick">Register</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    

</asp:Content>
