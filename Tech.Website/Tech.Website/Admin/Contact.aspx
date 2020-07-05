<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Tech.Website.Admin.Contact" %>
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
                        <h5>Inbox</h5>
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
                            <a href="#!">Email</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#!">Inbox</a>
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
<ul class="page-list nav nav-tabs flex-column" id="pills-tab" role="tablist">
<li class="nav-item mail-section">
<a class="nav-link waves-effect d-block active" data-toggle="pill" href="#e-inbox" role="tab">
<i class="icofont icofont-inbox"></i> Inbox
<span class="label label-primary float-right">6</span>
</a>
</li>
<li class="nav-item mail-section">
<a class="nav-link waves-effect d-block" data-toggle="pill" href="#e-starred" role="tab">
<i class="icofont icofont-star"></i> Starred
</a>
</li>
<li class="nav-item mail-section">
<a class="nav-link waves-effect d-block" data-toggle="pill" href="#e-drafts" role="tab">
<i class="icofont icofont-file-text"></i> Drafts
</a>
</li>
<li class="nav-item mail-section">
<a class="nav-link waves-effect d-block" data-toggle="pill" href="#e-sent" role="tab">
<i class="icofont icofont-paper-plane"></i> Sent Mail
</a>
</li>
<li class="nav-item mail-section">
<a class="nav-link waves-effect d-block" data-toggle="pill" href="#e-trash" role="tab">
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
<div class="tab-content" id="pills-tabContent">
<div class="tab-pane fade show active" id="e-inbox" role="tabpanel">
<div class="mail-body">
<div class="mail-body-header">
<button type="button" class="btn btn-primary btn-xs waves-effect waves-light">
<i class="icofont icofont-exclamation-circle"></i>
</button>
<button type="button" class="btn btn-success btn-xs waves-effect waves-light">
<i class="icofont icofont-inbox"></i>
</button>
<button type="button" class="btn btn-danger btn-xs waves-effect waves-light">
<i class="icofont icofont-ui-delete"></i>
</button>
<div class="btn-group dropdown-split-primary">
<button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="icofont icofont-ui-folder"></i>
</button>
<div class="dropdown-menu">
<a class="dropdown-item waves-effect waves-light" href="#">Action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
</div>
</div>
<div class="btn-group dropdown-split-primary">
<button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
More
</button>
<div class="dropdown-menu">
<a class="dropdown-item waves-effect waves-light" href="#">Action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
</div>
</div>
</div>
<div class="mail-body-content">
<div class="table-responsive">
<table class="table">

<asp:Repeater runat="server" ID="rptContact"><ItemTemplate>
<tr class="read">
<td>
<div class="check-star">
<div class="checkbox-fade fade-in-primary checkbox">
<label>
<input type="checkbox" value="">
<span class="cr"><i class="cr-icon icofont icofont-verification-check txt-primary"></i></span>
</label>
</div>
<i class="icofont icofont-star text-primary"></i>
</div>
</td>
    
<td><a href="Email-Read.aspx?messageId=<%#Eval("Id") %>" class="email-name waves-effect"><%#Eval("Name") %></a></td>
<td><a href="Email-Read.aspx?messageId=<%#Eval("Id") %>" class="email-name waves-effect"><%#Eval("Subject") %></a></td>
<td class="email-attch"><a href="#"><i class="icofont icofont-clip"></i></a></td>
<td class="email-time"><%#Eval("Time") %></td>
    
</tr>
    </ItemTemplate></asp:Repeater>
</table>
</div>
</div>
</div>
</div>
<div class="tab-pane fade" id="e-starred" role="tabpanel">
<div class="mail-body">
<div class="mail-body-header">
<button type="button" class="btn btn-primary btn-xs waves-effect waves-light">
<i class="icofont icofont-star"></i>
</button>
<div class="btn-group dropdown-split-primary">
<button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="icofont icofont-ui-folder"></i>
</button>
<div class="dropdown-menu">
<a class="dropdown-item waves-effect waves-light" href="#">Action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
</div>
</div>
<div class="btn-group dropdown-split-primary">
<button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
More
</button>
<div class="dropdown-menu">
<a class="dropdown-item waves-effect waves-light" href="#">Action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
</div>
</div>
</div>
<div class="mail-body-content">
<div class="table-responsive">
<table class="table">
<tr class="read">
<td>
<div class="check-star">
<div class="checkbox-fade fade-in-primary checkbox">
<label>
<input type="checkbox" value="">
<span class="cr"><i class="cr-icon icofont icofont-verification-check txt-primary"></i></span>
</label>
</div>
<i class="icofont icofont-star text-primary"></i>
</div>
</td>
<td><a href="email-read.html" class="email-name waves-effect">Liu Koi Yan</a></td>
<td><a href="email-read.html" class="email-name waves-effect">Charts waiting for you</a></td>
<td class="email-attch"><a href="#"><i class="icofont icofont-clip"></i></a></td>
<td class="email-time">07:15 AM</td>
</tr>
<tr class="unread">
<td>
<div class="check-star">
<div class="checkbox-fade fade-in-primary checkbox">
<label>
<input type="checkbox" value="">
<span class="cr"><i class="cr-icon icofont icofont-verification-check txt-primary"></i></span>
</label>
</div>
<i class="icofont icofont-star text-warning"></i>
</div>
</td>
<td><a href="email-read.html" class="email-name waves-effect">Google Inc</a></td>
<td><a href="email-read.html" class="email-name waves-effect">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</a></td>
<td class="email-attch"><a href="#"><i class="icofont icofont-clip"></i></a></td>
<td class="email-time">08:01 AM</td>
</tr>

</table>
</div>
</div>
</div>
</div>
<div class="tab-pane fade" id="e-drafts" role="tabpanel">
<div class="mail-body">
<div class="mail-body-header">
<button type="button" class="btn btn-success btn-xs waves-effect waves-light">
<i class="icofont icofont-inbox"></i>
</button>
<button type="button" class="btn btn-danger btn-xs waves-effect waves-light">
<i class="icofont icofont-ui-delete"></i>
</button>
<div class="btn-group dropdown-split-primary">
<button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="icofont icofont-ui-folder"></i>
</button>
<div class="dropdown-menu">
<a class="dropdown-item waves-effect waves-light" href="#">Action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
</div>
</div>
<div class="btn-group dropdown-split-primary">
<button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
More
</button>
<div class="dropdown-menu">
<a class="dropdown-item waves-effect waves-light" href="#">Action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
</div>
</div>
</div>
<div class="mail-body-content">
 <div class="table-responsive">
<table class="table">
<tr class="unread">
<td>
<div class="check-star">
<div class="checkbox-fade fade-in-primary checkbox">
<label>
<input type="checkbox" value="">
<span class="cr"><i class="cr-icon icofont icofont-verification-check txt-primary"></i></span>
</label>
</div>
<i class="icofont icofont-star text-danger"></i>
</div>
</td>
<td><a href="email-read.html" class="email-name waves-effect">Rinky Behl</a></td>
<td><a href="email-read.html" class="email-name waves-effect">Photoshop updates are available</a></td>
<td class="email-attch"><a href="#"><i class="icofont icofont-clip"></i></a></td>
<td class="email-time">10:01 AM</td>
</tr>
<tr class="read">
<td>
<div class="check-star">
<div class="checkbox-fade fade-in-primary checkbox">
<label>
<input type="checkbox" value="">
<span class="cr"><i class="cr-icon icofont icofont-verification-check txt-primary"></i></span>
</label>
</div>
<i class="icofont icofont-star text-primary"></i>
</div>
</td>
<td><a href="email-read.html" class="email-name waves-effect">Harry John</a></td>
<td><a href="email-read.html" class="email-name waves-effect">New upcoming data available</a></td>
<td class="email-attch"><a href="#"><i class="icofont icofont-clip"></i></a></td>
<td class="email-time">11:01 AM</td>
</tr>
</table>
</div>
</div>
</div>
</div>
<div class="tab-pane fade" id="e-sent" role="tabpanel">
<div class="mail-body">
<div class="mail-body-header">
<button type="button" class="btn btn-primary btn-xs waves-effect waves-light">
<i class="icofont icofont-exclamation-circle"></i>
</button>
<button type="button" class="btn btn-danger btn-xs waves-effect waves-light">
<i class="icofont icofont-ui-delete"></i>
</button>
<div class="btn-group dropdown-split-primary">
<button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="icofont icofont-ui-folder"></i>
</button>
<div class="dropdown-menu">
<a class="dropdown-item waves-effect waves-light" href="#">Action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
</div>
</div>
<div class="btn-group dropdown-split-primary">
<button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
More
</button>
<div class="dropdown-menu">
<a class="dropdown-item waves-effect waves-light" href="#">Action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
<div class="dropdown-divider"></div>
 <a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
</div>
</div>
</div>
<div class="mail-body-content">
<div class="table-responsive">
<table class="table">
<tr class="read">
<td>
<div class="check-star">
<div class="checkbox-fade fade-in-primary checkbox">
<label>
<input type="checkbox" value="">
<span class="cr"><i class="cr-icon icofont icofont-verification-check txt-primary"></i></span>
</label>
</div>
<i class="icofont icofont-star text-primary"></i>
</div>
</td>
<td><a href="email-read.html" class="email-name waves-effect">Liu Koi Yan</a></td>
<td><a href="email-read.html" class="email-name waves-effect">Charts waiting for you</a></td>
<td class="email-attch"><a href="#"><i class="icofont icofont-clip"></i></a></td>
<td class="email-time">07:15 AM</td>
</tr>
<tr class="unread">
<td>
<div class="check-star">
<div class="checkbox-fade fade-in-primary checkbox">
<label>
<input type="checkbox" value="">
<span class="cr"><i class="cr-icon icofont icofont-verification-check txt-primary"></i></span>
</label>
</div>
<i class="icofont icofont-star text-warning"></i>
</div>
</td>
<td><a href="email-read.html" class="email-name waves-effect">Google Inc</a></td>
<td><a href="email-read.html" class="email-name waves-effect">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</a></td>
<td class="email-attch"><a href="#"><i class="icofont icofont-clip"></i></a></td>
<td class="email-time">08:01 AM</td>
</tr>
</table>
 </div>
</div>
</div>
</div>
<div class="tab-pane fade" id="e-trash" role="tabpanel">
<div class="mail-body">
<div class="mail-body-header">
<button type="button" class="btn btn-primary btn-xs waves-effect waves-light">
<i class="icofont icofont-exclamation-circle"></i>
</button>
<div class="btn-group dropdown-split-primary">
<button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="icofont icofont-ui-folder"></i>
</button>
<div class="dropdown-menu">
<a class="dropdown-item waves-effect waves-light" href="#">Action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
</div>
</div>
<div class="btn-group dropdown-split-primary">
<button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
More
</button>
<div class="dropdown-menu">
<a class="dropdown-item waves-effect waves-light" href="#">Action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
<a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
</div>
</div>
</div>
<div class="mail-body-content">
<div class="table-responsive">
<table class="table">
<tr class="unread">
<td>
<div class="check-star">
<div class="checkbox-fade fade-in-primary checkbox">
<label>
<input type="checkbox" value="">
<span class="cr"><i class="cr-icon icofont icofont-verification-check txt-primary"></i></span>
</label>
</div>
<i class="icofont icofont-star text-danger"></i>
</div>
 </td>
<td><a href="email-read.html" class="email-name waves-effect">Rinky Behl</a></td>
<td><a href="email-read.html" class="email-name waves-effect">Photoshop updates are available</a></td>
<td class="email-attch"><a href="#"><i class="icofont icofont-clip"></i></a></td>
<td class="email-time">10:01 AM</td>
</tr>
<tr class="read">
<td>
<div class="check-star">
<div class="checkbox-fade fade-in-primary checkbox">
<label>
<input type="checkbox" value="">
<span class="cr"><i class="cr-icon icofont icofont-verification-check txt-primary"></i></span>
</label>
</div>
<i class="icofont icofont-star text-primary"></i>
</div>
</td>
<td><a href="email-read.html" class="email-name waves-effect">Harry John</a></td>
<td><a href="email-read.html" class="email-name waves-effect">New upcoming data available</a></td>
<td class="email-attch"><a href="#"><i class="icofont icofont-clip"></i></a></td>
<td class="email-time">11:01 AM</td>
</tr>
</table>
</div>
</div>
</div>
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
