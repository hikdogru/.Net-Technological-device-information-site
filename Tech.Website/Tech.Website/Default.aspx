<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tech.Website.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="hero" runat="server">
    <div id="hero-area" style="height: 345px;">
        <div class="overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12 col-lg-9 col-xs-12 text-center">
                    <div class="contents">
                        
                        <div class="search-bar">
                            <div class="search-inner">
                                <form class="search-form">
                                
                                    <div class="form-group">
                                        <input type="text" name="customword" class="form-control" placeholder="What are you looking for?">
                                    </div>
                                    <div class="form-group inputwithicon">
                                        <div class="select">
                                            <select>
                                                <option value="none">Locations</option>
                                                <option value="none"></option>
                                                
                                            </select>
                                        </div>
                                        <i class="lni-target"></i>
                                    </div>
                                    
                                    <div class="form-group inputwithicon">
                                    
                                            
                                        <div class="select">
                                            
                                                
                                                <select id="categorySelect" runat="server">
                                                
                                                </select>
                                
                        
                                        </div>
                            
                                        
                                        <i class="lni-menu"></i>
                            
                                    </div>
                                        
                                    <button class="btn btn-common" type="button"><i class="lni-search"></i>Search Now</button>
                            
                                </form>

                                </div>
                            </div>
                        
                    </div>
                </div>
            </div>
                            
        </div>
    </div>
                       
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="middleArea" runat="server">
    <section id="categories">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10 col-md-12 col-xs-12">
                    <div id="categories-icon-slider" class="categories-wrapper owl-carousel owl-theme">
                        <asp:Repeater ID="categoryRepeater" runat="server">
                            <ItemTemplate>
                        <div class="item">
                            <a href="Products.aspx?categoryID=<%#Eval("CategoryID") %>">
                                <div class="category-icon-item">
                                    <div class="icon-box">
                                        <div class="icon">

                                            <img src="<%#Eval("Picture") %>" alt="">
                                        </div>
                                        <h4> <%#Eval("CategoryName") %> </h4>
                                    </div>
                                </div>
                            </a>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="featured section-padding">
        <div class="container">
            <h1 class="section-title">Latest Products</h1>
            <div class="row">
                <asp:Repeater ID="rptLatestProducts" runat="server">
                    <ItemTemplate>
                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-4">
                    <div class="featured-box">
                        <figure>
                            <div style="margin: 25px 60px; width: 200px; height: 180px">
                            <a href="#">
                                <img class="img-fluid" img src="<%#Eval("ProductImage_2") %>"
                                     alt="" style="width: 100%; height: 100%; padding-left: 50px;"></a>
                            </div>
                        </figure>
                        <div class="feature-content">
                            <div class="product">
                                <a href="#">Electronic</a>
                                
                            </div>
                            <h4><a href="Details.aspx"><%#Eval("ProductName") %></a></h4>
                            
                            <p class="dsc" style="white-space: nowrap;overflow: hidden;
                                                                                                                                                                                                                                                   max-width: 330px;text-overflow: ellipsis;" ><%#Eval("ProductFeatures") %></p>
                            
                            <div class="listing-bottom">
                                <h3 class="price float-left">$<%#Eval("AveragePrice") %></h3>
                                <a href="Details.aspx?productID=<%#Eval("ProductID") %>" class="btn btn-common float-right">View Details</a>
                            
                            </div>
                        </div>
                    </div>
                </div>
                    </ItemTemplate>
                </asp:Repeater>
                
            </div>
        </div>
    </section>


<section class="featured-lis section-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12 wow fadeIn" data-wow-delay="0.5s">
                <h3 class="section-title">Featured Products</h3>
                <div id="new-products" class="owl-carousel owl-theme">
                    <asp:Repeater ID="productRepeater" runat="server">
                        <ItemTemplate>
                    <div class="item">
                        <div class="product-item">
                            <div class="carousel-thumb">
                                <div style="margin: 25px 60px ">
                                    <img class="img-fluid" src="<%#Eval("ProductImage_2") %>"
                                         style="width: 250px;height: 250px;"  alt="">

                                </div>
                                <div class="overlay">
                                    <div>
                                        <a class="btn btn-common" href="Details.aspx?productId=<%#Eval("ProductId") %>">View Details</a>
                                    </div>
                                </div>
                                
                                </div>
                            <div class="product-content">
                                <h3 class="product-title"><a href="Details.aspx?productId=<%#Eval("ProductId") %>"><%#Eval("ProductName") %>

                                                          </a></h3>
                                <span>Electronic <%--/ Computers--%></span>
                               
                                <div class="card-text">
                                    <div class="float-left">
                                        <span class="icon-wrap">
                                            <i class="lni-star-filled"></i>
                                            <i class="lni-star-filled"></i>
                                            <i class="lni-star-filled"></i>
                                            <i class="lni-star-filled"></i>
                                            <i class="lni-star-filled"></i>
                                            <i class="lni-star"></i>
                                        </span>
                                        <span class="count-review">
                                            
                                        </span>
                                    </div>
                                    <div class="float-right">
                                        <a class="address" href="#"><i class="lni-map-marker"></i> New York</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</section>

    <!-- Do not forget , i will change -->


    <section class="testimonial section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div id="testimonials" class="owl-carousel">
                        <div class="item">
                            <div class="img-thumb">
                                <img src="MyWebSite/assets/img/testimonial/img1.png" alt="">
                            </div>
                            <div class="testimonial-item">
                                <div class="content">
                                    <p class="description">Eiusmod tempor incidiunt labore velit dolore magna aliqu sed eniminim veniam quis nostrud exercition eullamco laborisaa, Eiusmod tempor incidiunt labore velit dolore magna.</p>
                                    <div class="info-text">
                                        <h2><a href="#">Josh Messica</a></h2>
                                        <h4><a href="#">Manager of Dropbox</a></h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item">
                                <div class="img-thumb">
                                    <img src="MyWebSite/assets/img/testimonial/img2.png" alt="">
                                </div>
                                <div class="testimonial-item">
                                    <div class="content">
                                        <p class="description">Eiusmod tempor incidiunt labore velit dolore magna aliqu sed eniminim veniam quis nostrud exercition eullamco laborisaa, Eiusmod tempor incidiunt labore velit dolore magna.</p>
                                        <div class="info-text">
                                            <h2><a href="#">Jessica</a></h2>
                                            <h4><a href="#">CEO of Dropbox</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item">
                                <div class="img-thumb">
                                    <img src="MyWebSite/assets/img/testimonial/img3.png" alt="">
                                </div>
                                <div class="testimonial-item">
                                    <div class="content">
                                        <p class="description">Eiusmod tempor incidiunt labore velit dolore magna aliqu sed eniminim veniam quis nostrud exercition eullamco laborisaa, Eiusmod tempor incidiunt labore velit dolore magna.</p>
                                        <div class="info-text">
                                            <h2><a href="#">Halil İbrahim</a></h2>
                                            <h4><a href="#">CEO of CoolTech</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item">
                                <div class="img-thumb">
                                    <img src="MyWebSite/assets/img/testimonial/img4.png" alt="">
                                </div>
                                <div class="testimonial-item">
                                    <div class="content">
                                        <p class="description">My name is Sule. I'm very very a genius woman. That's why i'm here. By the way, i'm cute</p>
                                        <div class="info-text">
                                            <h2><a href="#">Şule Ayser</a></h2>
                                            <h4><a href="#">Manager of CoolTech</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item">
                                <div class="img-thumb">
                                    <img src="MyWebSite/assets/img/testimonial/img5.png" alt="">
                                </div>
                                <div class="testimonial-item">
                                    <div class="content">
                                        <p class="description">Eiusmod tempor incidiunt labore velit dolore magna aliqu sed eniminim veniam quis nostrud exercition eullamco laborisaa, Eiusmod tempor incidiunt labore velit dolore magna.</p>
                                        <div class="info-text">
                                            <h2><a href="#">Priyanka</a></h2>
                                            <h4><a href="#">CEO of Dropbox</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
