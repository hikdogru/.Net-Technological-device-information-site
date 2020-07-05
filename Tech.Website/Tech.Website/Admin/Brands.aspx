<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Brands.aspx.cs" Inherits="Tech.Website.Admin.Brands" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/datatables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="css/buttons.datatables.min.css">
    <link rel="stylesheet" type="text/css" href="css/responsive.bootstrap4.min.css">

    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/pages.css">


    <link rel="stylesheet" href="css/select2.min.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <div class="page-header card">
        <div class="row align-items-end">
            <div class="col-lg-8">
                <div class="page-header-title">
                    <i class="feather icon-feather bg-c-blue"></i>
                    <div class="d-inline">
                        <h5>Brands</h5>
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
                            <a href="#!">Brands</a>
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
     <h5>Brands</h5>
    </div>
    <div class="card-block">
     <div class="dt-responsive table-responsive">
      <table id="row-select"
             class="table table-striped table-bordered nowrap">
       <thead>

       <tr>
        <th>Name</th>
        <th>Logo</th>
       </tr>
       </thead>
       <tbody>
       <asp:Repeater runat="server" ID="rptBrand"><ItemTemplate>
       <tr>
        <td><%#Eval("BrandName") %></td>
        <td> <img src="../<%#Eval("Logo") %>" alt="Brand Logo" style="width: 100px;"/> </td>
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
         <h5>Brand Add</h5>
         <span>Add class of <code>.form-control</code> with <code>&lt;input&gt;</code> tag</span>
        </div>
        <div class="card-block">
         <form id="main">
          <div class="form-group row">
           <label class="col-sm-2 col-form-label">Name</label>
           <div class="col-sm-10">
            <input type="text" class="form-control"
                   name="brandname" id="brandname"
                   placeholder="Enter Brand Name">
            <span class="messages"></span>
           </div>
          </div>


          <div class="form-group row">
           <label class="col-sm-2 col-form-label">Logo</label>
           <div class="col-sm-10">
               <input type="file" runat="server" id="brandLogo" class="form-control"/>
           </div>
          </div>
          <div class="form-group row">
              <label runat="server" id="lblBrand" class="col-sm-2 alert alert-success background-success" visible="False"></label>
           <div class="col-sm-10">
            <button type="button" id="btnSave" runat="server" OnServerClick="btnSave_OnServerClick"
                    class="btn btn-primary m-b-0">
             Save
            </button>
            <button type="button" id="btnDelete" runat="server" OnServerClick="btnDelete_OnServerClick" class="btn waves-effect waves-light btn-danger btn-square">
             Delete
            </button>
            <button type="button" id="btnUpdate" runat="server" OnServerClick="btnUpdate_OnServerClick" class="btn waves-effect waves-light btn-warning btn-square">
             Update
            </button>
           </div>

          </div>
         </form>
        </div>
       </div>


      </div>
      <div class="col-xl-4 col-md-6">
       <div class="card new-cust-card">
        <div class="card-header">
         <h5>New Brands</h5>
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
        <div class="card-block">
            <asp:Repeater runat="server" ID="rptNewBrands"><ItemTemplate>
         <div class="align-middle m-b-25">
          <img src="../<%#Eval("Logo") %>" alt="user image"
               class="img-40 align-top m-r-15" style="width: 80px;">
          <div class="d-inline-block">
           <a href="#!"><h6><%#Eval("BrandName") %></h6></a>
           <span class="status active"></span>
            
          </div>
         </div></ItemTemplate></asp:Repeater>
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

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="script" runat="server">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script>
    $(document).ready(function () {


        $("#row-select tbody").on('click', 'tr', function () {

            var rowData = $(this).children("td").map(function () {
                return $(this).text();
            }).get();

            
            $("#brandname").val(rowData[0]);
            

        });


    });
    </script>
    

    <script src="js/rocket-loader.min.js" data-cf-settings="88add89075ed2b878b934720-|49" defer=""></script>

    <script src="js/jquery.datatables.min.js" type="7ce0e70970bcaec788845106-text/javascript"></script>
    <script src="js/datatables.buttons.min.js" type="7ce0e70970bcaec788845106-text/javascript"></script>

    <script src="js/datatables.bootstrap4.min.js" type="7ce0e70970bcaec788845106-text/javascript"></script>
    <script src="js/datatables.responsive.min.js" type="7ce0e70970bcaec788845106-text/javascript"></script>

    <script src="js/data-table-custom.js" type="7ce0e70970bcaec788845106-text/javascript"></script>


    <script src="js/rocket-loader.min.js" data-cf-settings="7ce0e70970bcaec788845106-|49" defer=""></script>
</asp:Content>
