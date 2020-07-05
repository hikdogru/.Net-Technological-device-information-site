<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Tech.Website.Admin.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/datatables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="css/buttons.datatables.min.css">
    <link rel="stylesheet" type="text/css" href="css/responsive.bootstrap4.min.css">

    <link rel="stylesheet" type="text/css" href="css/pages.css">


    <link rel="stylesheet" href="css/select2.min.css" />




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <div class="page-header card">
        <div class="row align-items-end">
            <div class="col-lg-8">
                <div class="page-header-title">
                    <i class="feather icon-feather bg-c-blue"></i>
                    <div class="d-inline">
                        <h5>Products</h5>
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
                            <a href="#!">Products</a>
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
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5>Products</h5>
                                </div>
                                <div class="card-block">
                                    <div class="dt-responsive table-responsive">
                                        <table id="row-delete"
                                            class="table table-striped table-bordered nowrap">
                                            <thead>
                                                <tr>
                                                    <th>Name</th>
                                                    <th>Category</th>
                                                    <th>Brand</th>
                                                    <th>Average-Price</th>
                                                    <th>Product Features</th>
                                                    <th>Image-1</th>
                                                    <th>Image-2</th>
                                                    <th>Image-3</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <asp:Repeater ID="rptProducts" runat="server">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td><%#Eval("Name") %></td>
                                                            <td><%#Eval("Category") %></td>
                                                            <td><%#Eval("Brand") %></td>
                                                            <td><%#Convert.ToInt32(Eval("AveragePrice")) %></td>
                                                            <td>
                                                                <p style="white-space: nowrap; overflow: hidden; max-width: 330px; text-overflow: ellipsis;">
                                                                    <%#Eval("ProductFeatures") %>
                                                                </p>

                                                            </td>
                                                            <td>
                                                                <img src="../<%#Eval("Image") %>" alt="Product Image" style="width: 100px;" />
                                                            </td>

                                                            <td>
                                                                <img src="../<%#Eval("Image2") %>" alt="Product Image" style="width: 100px;" /></td>
                                                            <td>
                                                                <img src="../<%#Eval("Image3") %>" alt="Product Image" style="width: 100px;" /></td>

                                                        </tr>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>



                            <div class="card">
                                <div class="card-block">

                                    

                                    <div class="row">
                                        <div class="col-md-12 col-xl-6">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h5>Product Add</h5>
                                                    <span>Add class of <code>.form-control</code> with <code>&lt;input&gt;</code> tag</span>
                                                </div>
                                                <div class="card-block">
                                                    <div id="main">
                                                        <div class="form-group row">
                                                            <label class="col-sm-2 col-form-label">Name</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control"
                                                                    name="productname" id="productname"
                                                                    placeholder="Enter Name" />
                                                                <span class="messages"></span>
                                                            </div>
                                                        </div>
                                                        
                                                                  
                                                        <div class="form-group row">
                                                            <label class="col-sm-2 col-form-label">Category</label>

                                                            
                                                                        <span class="col-sm-12 col-xl-4 m-b-30">
                                                                        
                                                                <select name="selectCategories" id="selectCategories" name="selectCategories" class="js-example-data-array col-sm-12 myselect">
                                                                <asp:Repeater ID="rptCategory" runat="server"><ItemTemplate>  
                                                                    <option value="<%#Eval("CategoryName") %>"><%#Eval("CategoryName") %></option>
                                                                    </ItemTemplate>
                                                                </asp:Repeater>
                                                                </select>
                                                                            
                                                            </span>
                                                        </div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-2 col-form-label">Brand</label>

                                                            <span class="col-sm-12 col-xl-4 m-b-30">
                                                                <select name="selectBrands" id="selectBrands" class="js-example-data-array col-sm-12 myselect">
                                                            <asp:Repeater ID="rptBrand" runat="server">
                                                                <ItemTemplate> 
                                                                
                                                                    <option value="<%#Eval("BrandName") %>"><%#Eval("BrandName") %></option>
                                                                    
                                                                </ItemTemplate>
                                                                </asp:Repeater>
                                                                </select>
                                                            </span>
                                                        </div>

                                                        <div class="form-group row">
                                                            <label class="col-sm-2 col-form-label">
                                                                Average
                                                                                Price</label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control"
                                                                    name="averageprice"
                                                                    id="averageprice"
                                                                    placeholder="Enter Average Price" />
                                                                <span class="messages"></span>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-2 col-form-label">
                                                                Product
                                                                                Feature</label>
                                                            <div class="col-sm-10">
                                                                <textarea rows="8" cols="5" class="form-control" id="productfeatures" name="productfeatures" placeholder="Enter Product Feature"></textarea>

                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <label class="col-sm-2 col-form-label">Image-1</label>
                                                            <div class="col-sm-10">
                                                                <input type="file" runat="server" class="form-control" name="productimage1" id="productimage1" />
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-2 col-form-label">Image-2</label>
                                                            <div class="col-sm-10">
                                                                <input type="file" runat="server" class="form-control" name="productimage2" id="productimage2" />
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-2 col-form-label">Image-3</label>
                                                            <div class="col-sm-10">
                                                                <input type="file" runat="server" class="form-control" name="productimage3" id="productimage3" />
                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <label runat="server" id="lblResult" class="col-sm-2 alert alert-success background-success" visible="False"></label>
                                                            <div class="col-sm-10">
                                                                <button type="button" runat="server"
                                                                    class="btn btn-primary m-b-0" id="btnSave" onserverclick="btnSave_OnServerClick">
                                                                    Save
                                                                </button>
                                                                <button type="button" runat="server" id="btnDelete" onserverclick="btnDelete_OnServerClick" class="btn waves-effect waves-light btn-danger btn-square">
                                                                    Delete
                                                                </button>
                                                                <button type="button" runat="server" id="btnUpdate" onserverclick="btnUpdate_OnServerClick" class="btn waves-effect waves-light btn-warning btn-square">
                                                                    Update
                                                                </button>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        
                                                                 

                                        </div>
                                        <div class="col-xl-4 col-md-6">
                                            <div class="card new-cust-card">
                                                <div class="card-header">
                                                    <h5>New Products</h5>
                                                    <div class="card-header-right">
                                                        <ul class="list-unstyled card-option">
                                                            <li class="first-opt"><i
                                                                class="feather icon-chevron-left open-card-option"></i>
                                                            </li>
                                                            <li>
                                                                <i class="feather icon-maximize full-card"></i>
                                                            </li>
                                                            <li>
                                                                <i class="feather icon-minus minimize-card"></i>
                                                            </li>
                                                            <li>
                                                                <i class="feather icon-refresh-cw reload-card"></i>
                                                            </li>
                                                            <li>
                                                                <i class="feather icon-trash close-card"></i>
                                                            </li>
                                                            <li>
                                                                <i class="feather icon-chevron-left open-card-option"></i>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <asp:Repeater ID="rptLatestProducts" runat="server"><ItemTemplate>
                                                <div class="card-block">
                                                    <div class="align-middle m-b-25">
                                                        <img src="../<%#Eval("ProductImage_2") %>" alt="user image"
                                                            class="img-40 align-top m-r-15">
                                                        <div class="d-inline-block">
                                                            <a href="#!">
                                                                <h6><%#Eval("ProductName") %></h6>
                                                            </a>
                                                            <p class="text-muted m-b-0"><%#Eval("AveragePrice") %></p>
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
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5>Product Feature Details</h5>
                                </div>
                                <div class="card-block">
                                    <div class="dt-responsive table-responsive">
                                        <table id="row-select"
                                            class="table table-striped table-bordered nowrap">
                                            <thead>
                                                <tr>
                                                    <th>Name</th>
                                                    <th>Feature</th>
                                                    <th>Value</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <asp:Repeater ID="rptProductFeatures" runat="server"><ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("ProductName") %></td>
                                                    <td><%#Eval("Feature") %></td>
                                                    <td><%#Eval("Value") %></td>
                                                </tr>
                                            </ItemTemplate></asp:Repeater>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-block">
                                    <div class="row">
                                        <div class="col-md-12 col-xl-6">

                                            <div class="card">
                                                <div class="card-header">
                                                    <h5>Product Feature Add</h5>
                                                    <span>Add class of <code>.form-control</code> with <code>&lt;input&gt;</code> tag</span>
                                                </div>
                                                <div class="card-block">
                                                    <div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-2 col-form-label">Name</label>
                                                            
                                                            <span class="col-sm-12 col-xl-4 m-b-30">
                                                                <select class="js-example-data-array col-sm-12" name="productselectname" id="productselectname">
                                                                    <asp:Repeater ID="rptProductName" runat="server"><ItemTemplate><option value="<%#Eval("ProductName") %>"><%#Eval("ProductName") %></option></ItemTemplate></asp:Repeater>
                                                                </select>
                                                            </span>
                                                            
                                                        </div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-2 col-form-label">Feature</label>

                                                            <span class="col-sm-12 col-xl-4 m-b-30">
                                                                <select class="js-example-data-array col-sm-12" name="productfeature" id="productfeature">
                                                                    <asp:Repeater ID="rptFeature" runat="server"><ItemTemplate><option value="<%#Eval("FeatureName") %>"><%#Eval("FeatureName") %></option></ItemTemplate></asp:Repeater>
                                                                </select>
                                                            </span>
                                                        </div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-2 col-form-label">Value </label>
                                                            <div class="col-sm-10">
                                                                <input type="text" class="form-control"
                                                                    name="featurevalue" id="featurevalue"
                                                                    placeholder="Enter Feature Value ">
                                                                <span class="messages"></span>
                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <label runat="server" id="lblFeature" class="col-sm-2 alert alert-success background-success" visible="False"></label>
                                                            <div class="col-sm-10">
                                                                <button type="button" id="btnFeatureSave" runat="server" OnServerClick="btnFeatureSave_OnServerClick"
                                                                    class="btn btn-primary m-b-0">
                                                                    Save
                                                                </button>
                                                                <button type="button" id="btnFeatureDelete" runat="server" OnServerClick="btnFeatureDelete_OnServerClick" class="btn waves-effect waves-light btn-danger btn-square">
                                                                    Delete
                                                                </button>
                                                                <button type="button" id="btnFeatureUpdate" runat="server" OnServerClick="btnFeatureUpdate_OnServerClick" class="btn waves-effect waves-light btn-warning btn-square">
                                                                    Update
                                                                </button>
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
            </div>
        </div>


        <div id="styleSelector">
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">

    <script type="1dc21dc544476ddffbc54af6-text/javascript" src="js/jquery.min.js"></script>
    <script type="1dc21dc544476ddffbc54af6-text/javascript" src="js/jquery-ui.min.js"></script>



    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src=https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css></script>
    <script src=https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css></script>
    <script src=https://cdn.datatables.net/select/1.3.1/css/select.bootstrap4.min.css></script>
    
    <script>
        $(document).ready(function () {

            $("#row-delete tbody").on('click', 'tr', function () {
               
                var rowData = $(this).children("td").map(function () {
                    return $(this).text();
                }).get();

               
                $("#productname").val(rowData[0]);
                $("#selectCategories").val(rowData[1]).trigger("change");
                $("#selectBrands").val(rowData[2]).trigger("change");
                $("#averageprice").val(rowData[3]);
                $("#productfeatures").val((rowData[4]).trim());
            });

            $("#row-select tbody").on('click', 'tr', function () {

                var rowData = $(this).children("td").map(function () {
                    return $(this).text();
                }).get();



                $("#productselectname").val(rowData[0]).trigger("change");
                $("#productfeature").val(rowData[1]).trigger("change");
                $("#featurevalue").val(rowData[2]);
                
            });

        });


    </script>



    <script type="88add89075ed2b878b934720-text/javascript" src="js/select2.full.min.js"></script>


    <script type="88add89075ed2b878b934720-text/javascript" src="js/jquery.quicksearch.js"></script>

    <script type="88add89075ed2b878b934720-text/javascript" src="js/select2-custom.js"></script>
    <script src="js/rocket-loader.min.js" data-cf-settings="88add89075ed2b878b934720-|49" defer=""></script>

    <script src="js/jquery.datatables.min.js" type="7ce0e70970bcaec788845106-text/javascript"></script>
    <script src="js/datatables.buttons.min.js" type="7ce0e70970bcaec788845106-text/javascript"></script>

    <script src="js/datatables.bootstrap4.min.js" type="7ce0e70970bcaec788845106-text/javascript"></script>
    <script src="js/datatables.responsive.min.js" type="7ce0e70970bcaec788845106-text/javascript"></script>

    <script src="js/data-table-custom.js" type="7ce0e70970bcaec788845106-text/javascript"></script>


    <script src="js/data-table-custom.js" type="1dc21dc544476ddffbc54af6-text/javascript"></script>
    <script src="js/pcoded.min.js" type="1dc21dc544476ddffbc54af6-text/javascript"></script>
    <script src="js/vertical-layout.min.js" type="1dc21dc544476ddffbc54af6-text/javascript"></script>
    <script src="js/jquery.mcustomscrollbar.concat.min.js" type="1dc21dc544476ddffbc54af6-text/javascript"></script>
    <script type="1dc21dc544476ddffbc54af6-text/javascript" src="js/script.js"></script>

    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13" type="1dc21dc544476ddffbc54af6-text/javascript"></script>
    <script type="1dc21dc544476ddffbc54af6-text/javascript">
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
    </script>

    <script src="js/rocket-loader.min.js" data-cf-settings="7ce0e70970bcaec788845106-|49" defer=""></script>




</asp:Content>
