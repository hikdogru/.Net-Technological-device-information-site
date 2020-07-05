<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Email-Read.aspx.cs" Inherits="Tech.Website.Admin.Email_Read" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/themify-icons.css">

    <link rel="stylesheet" type="text/css" href="css/icofont.css">

    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">

    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/pages.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <div class="page-header card">
        <div class="row align-items-end">
            <div class="col-lg-8">
                <div class="page-header-title">
                    <i class="feather icon-mail bg-c-blue"></i>
                    <div class="d-inline">
                        <h5>View Email</h5>
                        <span>lorem ipsum dolor sit amet, consectetur adipisicing elit</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="page-header-breadcrumb">
                    <ul class=" breadcrumb breadcrumb-title">
                        <li class="breadcrumb-item">
                            <a href="Default.aspx"><i class="feather icon-home"></i></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#!"> Email</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#!">View Email</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    <div class="pcoded-inner-content">

<div class="main-body">
<div class="page-wrapper">

<div class="page-body">
<div class="card">

<div class="card-block email-card">
<div class="row">
<div class="col-lg-12 col-xl-3">
<div class="user-head row">
<div class="user-face">
<img class="img-fluid" src="png/logo.png" alt="Theme-Logo" />
</div>
</div>
</div>
<div class="col-lg-12 col-xl-9">
<div class="mail-box-head row justify-content-end">
<div class="col-auto">
<div class="form-material">
<div class="material-group">
<div class="form-group form-default">
<input type="text" name="footer-email" class="form-control" required="">
<span class="form-bar"></span>
<label class="float-label">Search</label>
</div>
<div class="material-addone">
<i class="icofont icofont-search"></i>
</div>
</div>
</div>
</div>
</div>
 </div>
</div>
<div class="row">

<div class="col-lg-12 col-xl-3">
<div class="user-body">
<div class="p-20 text-center">
<a href="email-compose.html" class="btn btn-danger waves-effect">Compose</a>
</div>
<ul class="page-list nav nav-tabs flex-column">
<li class="nav-item mail-section">
<a class="nav-link waves-effect  d-block" href="email-inbox.html">
<i class="icofont icofont-inbox"></i> Inbox
<span class="label label-primary float-right">6</span>
</a>
</li>
<li class="nav-item mail-section">
<a class="nav-link waves-effect  d-block" href="email-inbox.html">
<i class="icofont icofont-star"></i> Starred
</a>
</li>
<li class="nav-item mail-section">
<a class="nav-link waves-effect  d-block" href="email-inbox.html">
<i class="icofont icofont-file-text"></i> Drafts
</a>
</li>
<li class="nav-item mail-section">
<a class="nav-link waves-effect  d-block" href="email-inbox.html">
<i class="icofont icofont-paper-plane"></i> Sent Mail
</a>
</li>
<li class="nav-item mail-section">
<a class="nav-link waves-effect  d-block" href="email-inbox.html">
<i class="icofont icofont-ui-delete"></i> Trash
<span class="label label-info float-right">30</span>
</a>
</li>
</ul>
<ul class="p-20 label-list">
<li>
<h5>Labels</h5>
</li>
<li>
<a class="mail-work" href="#">Work</a>
</li>
<li>
<a class="mail-design" href="#">Design</a>
</li>
<li>
<a class="mail-family" href="#">Family</a>
</li>
<li>
<a class="mail-friends" href="#">Friends</a>
</li>
<li>
<a class="mail-office" href="#">Office</a>
</li>
</ul>
</div>
</div>


<div class="col-lg-12 col-xl-9">
<div class="mail-body">
<div class="mail-body-content email-read">
    
    <asp:Repeater runat="server" ID="rptEmail"><ItemTemplate>
 <div class="card">
<div class="card-header">
<h5>Here You Have New Opportunity...</h5>
<h6 class="float-right"><%#Eval("Time") %></h6>
</div>
<div class="card-block">
<div class="media m-b-20">
<div class="media-left photo-table">
<a href="#">
<img class="media-object img-radius" src="jpg/avatar-3.jpg" alt="E-mail User">
</a>
</div>
<div class="media-body photo-contant">
<a href="#">
<h6 class="user-name txt-primary"><%#Eval("Name") %></h6>
</a>
<a class="user-mail txt-muted" href="#">
<h6>From:<span class="__cf_email__"><%#Eval("Email") %></span></h6>
</a>
<div>
<p class="email-content">
<%#Eval("MessageText") %>
</p>
</div>
<div class="m-t-15">

<form class="form-material">
<div class="form-group form-primary">
 <textarea class="form-control" id="exampleTextarea-1" required=""></textarea>
<span class="form-bar"></span>
<label class="float-label">Reply Your Thoughts</label>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
    </ItemTemplate></asp:Repeater>
</div>
</div>
</div>

</div>
</div>

</div>
</div>

</div>
</div>

<div id="styleSelector">
</div>
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">

</asp:Content>
