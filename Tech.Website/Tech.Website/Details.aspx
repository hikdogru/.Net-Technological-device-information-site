<%@ Page Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Tech.Website.Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .my-image-margin {
            padding-left: 85px !important; 
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hero" runat="server">
    <div class="page-header" style="background: url(assets/img/banner1.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="breadcrumb-wrapper">
                        <h2 class="product-title">Product Details</h2>
                        <ol class="breadcrumb">
                            <li><a href="#">Home /</a></li>
                            <li class="current">Details</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middleArea" runat="server">



    <div class="section-padding">
        <div class="container">
        
            <div class="product-info row">
            
                <div class="col-lg-8 col-md-12 col-xs-12">
                    <asp:Repeater ID="detailsRepeater" runat="server">
                        <ItemTemplate>
                    <div class="ads-details-wrapper">
                        <div id="owl-demo" class="owl-carousel owl-theme" >
                            
                        
                            <div class="item my-image-margin">
                                <div class="product-img">
                                    <img class="img-fluid details-slider-img"  src="<%#Eval("ProductImage_1") %>" alt="error"/>
                                </div>
                                <span class="price">$<%# Convert.ToInt32(Eval("AveragePrice")) %></span></div>
                            <div class="item my-image-margin">
                                <div class="product-img">
                                    <img class="img-fluid details-slider-img" src="<%#Eval("ProductImage_2") %>" alt="error"/>
                                </div>
                                <span class="price">$<%# Convert.ToInt32(Eval("AveragePrice")) %></span></div>
                            <div class="item my-image-margin">
                                <div class="product-img">
                                    <img class="img-fluid details-slider-img"  src="<%#Eval("ProductImage_3") %>" alt="error" />
                                </div>
                                <span class="price">$<%# Convert.ToInt32(Eval("AveragePrice")) %></span></div>
                        </div>
                    </div>
                            </ItemTemplate>
                        </asp:Repeater>

                            
                       <div class="details-box">
                            <div class="ads-details-info">
                                <h2><%# Eval("ProductName") %></h2>
                                
                                
                                <h4 class="title-small mb-3">Specification:</h4>
    
                                
                                <ul class="list-specification">
                                <asp:Repeater ID="rptDetails" runat="server" >
                                <ItemTemplate>
                                    <li><i class="lni-check-mark-circle"></i><%#Eval("FeatureName") %>:<%#Eval("FeatureValue") %></li>
                                    
                                    </ItemTemplate>
                                    
                                </asp:Repeater> 
                                </ul>
                
                                
                            </div>
                            <div class="tag-bottom">
                                <div class="float-left">
                                    <ul class="advertisement">
                                        <li>
                                            <p><strong><i class="lni-folder"></i>Categories:</strong> <a href="#">Electronics</a></p>
                                        </li>
                                       
                                        
                                    </ul>
                                

                            </div>
                        </div>

                    
                </div>
                   
                         
    </div>
                
                            
      
                <div class="col-lg-4 col-md-6 col-xs-12">

                    <aside class="details-sidebar">


                        <div class="widget">
                            <h4 class="widget-title">More Product</h4>
                            <ul class="posts-list">
                                <asp:Repeater ID="rptRightSide" runat="server">
                                    <ItemTemplate>
                                <li>
                                    <div class="widget-thumb">
                                        <a href="#">
                                            <img src="<%#Eval("ProductImage_2") %>" alt="" /></a>
                                    </div>
                                    <div class="widget-content">
                                        <h4><a href="#"><%# Eval("ProductName") %></a></h4>
                                        <h4 class="price">$<%# Eval("AveragePrice") %></h4>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </aside>

                </div>
            </div>

        </div>
    </div>

</asp:Content>
