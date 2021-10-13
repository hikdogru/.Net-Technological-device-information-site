<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Tech.Website.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style>
        .product-img {
            margin: 1em 0;
            text-align: center;
        }

            .product-img img {
                width: 250px;
                object-fit:cover;
            }

        .slider::-webkit-slider-thumb {
            background: #e91e63 !important;
        }

        .scrollingControlContainer {
            overflow-y: scroll;
        }

        .MyClass {
            width: 250px;
            left: 2px;
            top: 5px;
            border: solid white;
            border-width: 0 3px 3px 0;
        }

            .MyClass label {
                padding-left: 7px;
                text-transform: capitalize;
                font-size: 25px;
                font-weight: 700;
            }

            .MyClass input {
                width: 25px;
                height: 25px;
            }

        ::-webkit-scrollbar {
            width: 10px;
        }

        /* Track */
        ::-webkit-scrollbar-track {
            box-shadow: inset 0 0 5px grey;
            border-radius: 10px;
        }

        /* Handle */
        ::-webkit-scrollbar-thumb {
            background: #e91e63;
            border-radius: 10px;
        }

            /* Handle on hover */
            ::-webkit-scrollbar-thumb:hover {
                background: #b30000;
            }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="hero" runat="server">
   <div id="hero-area" style="height: 345px;">
        <div class="overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12 col-lg-9 col-xs-12 text-center">
                    <div class="contents">
                        <span class="search-bar" method="post">
                            <div class="search-inner">
                                <div class="search-form">
                                    <div class="form-group">
                                        <asp:TextBox runat="server" ID="tbxSearch" CssClass="form-control" placeholder="What are you looking for?"></asp:TextBox>

                                    </div>
                                    <div class="form-group inputwithicon">
                                        <div class="select">
                                            <select>
                                                <option value="none">Locations</option>
                                                <option value="none">New York</option>
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
                                    <!-- UseSubmitBehavior buton çalışmadığı için kullandık.-->
                                    <button class="btn btn-common" id="btnSearch" runat="server" onserverclick="btnSearch_Click"
                                        type="button" name="search" usesubmitbehavior="False">
                                        <i class="lni-search"></i>Search Now
                                    </button>
                                </div>
                            </div>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middleArea" runat="server">
<asp:ScriptManager runat="server"></asp:ScriptManager>
<asp:UpdatePanel runat="server" ID="pnlList">
<ContentTemplate>
    <div class="main-container section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-4 order-md-1 col-lg-3 sidebar-filter">
                    <div class="widget_search">
                        <form role="search" id="searchform">
                            <input runat="server" type="search" class="form-control" autocomplete="off" name="s" placeholder="Search..." id="search" value="" onserverchange="search_OnServerChange" />

                            <button type="submit" id="search-submit" class="search-btn"><i class="lni-search"></i></button>
                        </form>
                    </div>


                    <div class="widget categories">
                        <h4 class="widget-title">All Categories</h4>
                        <ul class="categories-list">
                            <asp:Repeater runat="server" ID="rptCategoryCount">
                                <ItemTemplate>

                                    <li>
                                        <a href="Products.aspx?categoryID=<%#Eval("CategoryID") %>">

                                            <i class="<%#Eval("Icon") %>" style="color: #4b4e50"></i>
                                            <label style="color: gray"><%#Eval("Name") %></label><span class="category-counter">(<%#Eval("Count") %>)</span>
                                        </a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>


                    <div class="divider mt-5 mb-5 border-bottom border-secondary"></div>

                    <h6 class="text-uppercase font-weight-bold mb-3">Brands</h6>
                    <div class="mt-2 mb-2 pl-2 ">

                        <div class="custom-control custom-checkbox" style="padding-left: 0;">




                            <asp:Panel ID="checkBoxPanel" runat="server" CssClass="scrollingControlContainer" Style="height: 200px !important;">
                                <asp:CheckBoxList CssClass="MyClass" ID="cbxBrands" runat="server" OnSelectedIndexChanged="cbxBrands_OnSelectedIndexChanged" AutoPostBack="true"></asp:CheckBoxList>

                            </asp:Panel>



                        </div>



                    </div>


                    <div class="divider mt-5 mb-5 border-bottom border-secondary"></div>
                    <h6 class="text-uppercase mt-5 mb-3 font-weight-bold">Price</h6>
                    <div class="price-filter-control">




                        <input type="range" class="custom-range slider" min="0" max="10000" name="" onchange="updateTextInput(this.value);">
                        <br>
                        <br>
                        <input type="number" class="form-control w-50 pull-left mb-2" value="0" name="pricemin" id="price-min-control" style="display: inline-block; width: 40%!important;">
                        <input type="number" class="form-control w-50 pull-right" value="5000" name="pricemax" id="price-max-control" style="display: inline-block; width: 40%!important;">
                    </div>
                    <input id="ex2" type="text" class="slider " value="50,150" data-slider-min="10" data-slider-max="200" data-slider-step="5" data-slider-value="[50,150]" data-value="50,150" style="display: none;">
                    <br />
                    <br />
                    <button class="btn btn-lg btn-block btn-primary mt-5" id="btnFilter" runat="server" 
                        type="button" style="background-color: #e91e63; border-color: #e91e63 !important;" onserverclick="btnFilter_Click" usesubmitbehavior="False">Update Results
                    </button>
                </div>


                <div class="col-md-8 order-md-2 col-lg-9 page-content">

                    <div class="product-filter">
                        <div class="short-name">
                            <span>Showing (1 - 12 products of 7371 products)</span>
                        </div>
                        <div class="Show-item">
                            <span>Show Items</span>
                            <span class="woocommerce-ordering">

                                <label>
                                    <asp:DropDownList runat="server" ID="ddlFiltre" name="order" class="orderby" AutoPostBack="True" OnSelectedIndexChanged="ddlFiltre_SelectedIndexChanged">
                                        <asp:ListItem>Sort Product</asp:ListItem>
                                        <asp:ListItem>Name:A to Z</asp:ListItem>
                                        <asp:ListItem>Name:Z to A</asp:ListItem>
                                        <asp:ListItem>Price:High to Low</asp:ListItem>
                                        <asp:ListItem>Price:Low to High</asp:ListItem>
                                    </asp:DropDownList>

                                </label>
                            </span>

                        </div>

                        <ul class="nav nav-tabs">
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#grid-view"><i class="lni-grid"></i></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#list-view"><i class="lni-list"></i></a>
                            </li>
                        </ul>
                    </div>

                    
                    <div class="adds-wrapper">

                        <div class="tab-content">

                            <div id="grid-view" class="tab-pane fade">

                                <div class="row">

                                    <asp:ListView ID="lvGridProduct" runat="server">
                                        <ItemTemplate>
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <div class="featured-box">
                                                    <figure>

                                                        <div style="margin: 25px 60px;" class="product-img">
                                                            <a href="#">
                                                                <img class="img-fluid" src="<%#Eval("ProductImage_2")  %>" alt=""></a>
                                                        </div>
                                                    </figure>
                                                    <div class="feature-content">
                                                        <div class="product">
                                                            <a href="#">Electronic</a>

                                                        </div>
                                                        <h4><a href="details.aspx?productID=<%#Eval("ProductID") %>"><%#Eval("ProductName") %></a></h4>

                                                        <p class="dsc" style="white-space: nowrap; overflow: hidden; max-width: 330px; text-overflow: ellipsis;">
                                                            <%#Eval("ProductFeatures") %>
                                                        </p>
                                                        <div class="listing-bottom">
                                                            <h3 class="price float-left"><%#Eval("AveragePrice") %></h3>
                                                            <a href="details.aspx?productID=<%#Eval("ProductID") %> " class="btn btn-common float-right">View Details</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                </div>
                            </div>
                            
                            <div id="list-view" class="tab-pane fade active show">
                                <div class="row">
                                    
                                    <asp:ListView ID="productslv" runat="server">

                                        <ItemTemplate>
                                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                <div class="featured-box">
                                                    <figure>
                                                        <div style="margin: 10px 80px" class="product-img">
                                                            <a href="#">
                                                                <img class="img-fluid" src="<%#Eval("ProductImage_2")  %>" alt=""></a>
                                                        </div>
                                                    </figure>
                                                    <div class="feature-content">
                                                        <div class="product">
                                                            <a href="#">Electronic</a>

                                                        </div>
                                                        <h4><a href="details.aspx?productID=<%#Eval("ProductID") %>"><%#Eval("ProductName") %></a></h4>

                                                        <p class="dsc" style="white-space: nowrap; overflow: hidden; max-height: 30%; text-overflow: ellipsis;">
                                                            <%#Eval("ProductFeatures") %>
                                                        </p>
                                                        <div class="listing-bottom">
                                                            <h3 class="price float-left">$<%#Eval("AveragePrice") %></h3>
                                                            <a href="details.aspx?productId=<%#Eval("ProductId") %>" class="btn btn-common float-right">View Details</a>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>

                                        </ItemTemplate>
                                    </asp:ListView>
                                       
                                </div>

                            </div>
                                        
                            
                        </div>

                    </div>
                
                    <div class="pagination-bar">
                        <nav>
                            <ul class="pagination justify-content-center">
                                <li class="page-item">
                                
                                    <asp:DataPager ID="dpProduct" QueryStringField="Page"
                                        runat="server" PageSize="10" PagedControlID="productslv">
                                        <Fields>
                                            <asp:NextPreviousPagerField
                                                ShowLastPageButton="false"
                                                ShowNextPageButton="false"
                                                ButtonCssClass="link" />

                                            <asp:NumericPagerField
                                                ButtonCount="2" ButtonType="Link" NumericButtonCssClass="link" CurrentPageLabelCssClass="link active" />

                                            <asp:NextPreviousPagerField
                                                ShowPreviousPageButton="false" ButtonCssClass="link" />
                                        </Fields>
                                    </asp:DataPager>

                                    <asp:DataPager ID="dpGridProduct" QueryStringField="Page" runat="server" PageSize="10" PagedControlID="lvGridProduct">
                                    </asp:DataPager>
                                    
                                </li>
                            </ul>
                        </nav>
                    </div>
                   
                                
                </div>

            </div>
        </div>


    </div></ContentTemplate></asp:UpdatePanel>
                            


    <script>
        function updateTextInput(val) {
            document.getElementById('price-max-control').value = val;
        }
    </script>
            
</asp:Content>


