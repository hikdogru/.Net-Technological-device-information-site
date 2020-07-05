<%@ Page Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Tech.Website.Contact" %>

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
<h2 class="product-title">Contact Us</h2>
<ol class="breadcrumb">
<li><a href="#">Home /</a></li>
<li class="current">Contact Us</li>
</ol>
</div>
</div>
</div>
</div>
</div>




<section id="content" class="section-padding">
<div class="container">
<div class="row">
<div class="col-lg-8 col-md-8 col-xs-12">

<form id="contactForm" class="contact-form" data-toggle="validator">
<h2 class="contact-title">
Send Message Us
</h2>
<div class="row">
<div class="col-md-12">
<div class="row">
<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
<div class="form-group">
    <input type="text" class="form-control" id="name" runat="server" name="name" placeholder="Name" required data-error="Please enter your name"/>
<div class="help-block with-errors"></div>
</div>
</div>
<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
<div class="form-group">
    <input type="email" class="form-control" runat="server" id="email" placeholder="Email" required data-error="Please enter your email"/>
<div class="help-block with-errors"></div>
</div>
</div>
<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
<div class="form-group">
    <input type="text" class="form-control" runat="server" id="msg_subject" name="subject" placeholder="Subject" required data-error="Please enter your subject" />
<div class="help-block with-errors"></div>
</div>
</div>
</div>
</div>
<div class="col-sm-12 col-md-12 col-lg-12">
<div class="row">
<div class="col-md-12">
<div class="form-group">
<textarea class="form-control" id="message"  runat="server" placeholder="Message" rows="7" data-error="Write your message" required></textarea>
<div class="help-block with-errors"></div>
</div>
</div>
</div>
 </div>
<div class="col-md-12">
<button type="button" id="submitMessage" class="btn btn-common" runat="server" OnServerClick="submitMessage_OnServerClick">Submit Now</button>
<div id="msgSubmit" class="h3 text-center hidden"></div>
    <div class="clearfix"></div>
    <asp:Label runat="server" ID="lblResult"></asp:Label>
</div>
</div>
</form>
</div>
<div class="col-lg-4 col-md-4 col-xs-12">
<div class="information mb-4">
<h3>Address</h3>
<div class="contact-datails">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc metus lectus, viverra vehicula porta id, posuere at massa. Nam sollicitudin porta nunc.</p>
</div>
</div>
<div class="information">
<h3>Contact Info</h3>
<div class="contact-datails">
<ul class="list-unstyled info">
<li><span>Address : </span><p> 9870 St Vincent Place, Glasgow, DC 45 Fr 45</p></li>
<li><span>Email : </span><p><a href="#"><span class="__cf_email__" data-cfemail="c0b3b5b0b0afb2b480ada1a9aceea3afad">[email&#160;protected]</span></a></p></li>
<li><span>Phone : </span><p>555 444 66647 & 555 444 66647</p></li>
</ul>
</div>
</div>
</div>
</div>
</div>
</section>
</asp:Content>
