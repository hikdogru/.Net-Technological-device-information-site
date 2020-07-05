<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Tech.Website.Admin.Admin1" %>
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
                    <i class="feather icon-home bg-c-blue"></i>
                    <div class="d-inline">
                        <h5>Admin</h5>
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
                        <li class="breadcrumb-item"><a href="#!">Admin</a> </li>
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

 <div class="col-md-12">
  <div class="card table-card">
   <div class="card-header">
    <h5>Admin Overview</h5>
    <div class="card-header-right">
     <ul class="list-unstyled card-option">
      <li class="first-opt"><i class="feather icon-chevron-left open-card-option"></i></li>
      <li><i class="feather icon-maximize full-card"></i></li>
      <li><i class="feather icon-minus minimize-card"></i></li>
      <li><i class="feather icon-refresh-cw reload-card"></i></li>
      <li><i class="feather icon-trash close-card"></i></li>
      <li><i class="feather icon-chevron-left open-card-option"></i></li>
     </ul>
    </div>
   </div>
   <div class="card-block">
    <div class="table-responsive">
     <table class="table table-hover m-b-0" id="row-delete">
      <thead>
      
      <tr>
       <th>Admin</th>
       <th>Name</th>
       <th>Surname</th>
       <th>Username</th>
       <th>Password</th>
       <th>Email</th>
       <th>Actions</th>
      </tr>
          
      </thead>
      <tbody>
      <asp:Repeater ID="rptAdmins" runat="server">
      <ItemTemplate>
      <tr>
       <td>
        <div class="d-inline-block align-middle">
         <img src="../<%#Eval("Image") %>" alt="user image" class="img-radius img-40 align-top m-r-15">
        </div>
       </td>
       <td><%#Eval("Name") %></td>
       <td><%#Eval("Surname") %></td>
       <td><%#Eval("Username") %></td>
       <td style="-webkit-text-security: disc;">
        <%#Eval("Password") %>
       </td>
       <td><%#Eval("Email") %></td>
       <td><a href="#!"><i class="icon feather icon-edit f-w-600 f-16 m-r-15 text-c-green"></i></a><a href="#!"><i class="feather icon-trash-2 f-w-600 f-16 text-c-red"></i></a></td>
      </tr>
          </ItemTemplate>
      </asp:Repeater>
      </tbody>
     </table>
    </div>
   </div>
  </div>
 </div>
 <div class="col-md-12 col-xl-6">

  <div class="card">
   <div class="card-header">
    <h5>Admin Add</h5>
    <span>Add class of <code>.form-control</code> with <code>&lt;input&gt;</code> tag</span>
   </div>
   <div class="card-block">
    <div id="main">
     <div class="form-group row">
      <label class="col-sm-2 col-form-label">Name</label>
      <div class="col-sm-10">
          <input type="text"  class="form-control" name="name" id="name" placeholder="Enter Name"/>
       <span class="messages"></span>
      </div>
     </div>
     <div class="form-group row">
      <label class="col-sm-2 col-form-label">Surname</label>
      <div class="col-sm-10">
          <input type="text"  class="form-control" name="surname" id="surname" placeholder="Enter Surname"/>
       <span class="messages"></span>
      </div>
     </div>
     <div class="form-group row">
      <label class="col-sm-2 col-form-label">Username</label>
      <div class="col-sm-10">
          <input type="text" class="form-control" name="username" id="username" placeholder="Enter Username"/>
       <span class="messages"></span>
      </div>
     </div>
     <div class="form-group row">

      <label class="col-sm-2 col-form-label">Password</label>
      <div class="col-sm-10">
          <input type="password"  class="form-control" id="password" name="password" placeholder="Enter Password"/>
       <span class="messages"></span>
      </div>
     </div>
     <div class="form-group row">
      <label class="col-sm-2 col-form-label">Email</label>
      <div class="col-sm-10">
          <input type="email"  class="form-control" id="email" name="email" placeholder="Enter e-mail address"/>
       <span class="messages"></span>
      </div>
     </div>
        <div class="form-group row">
            
            <label class="col-sm-2 col-form-label">Image</label>
            <div class="col-sm-10">
                <input type="file" runat="server" id="myFile" name="myFile" class="form-control"/>
            </div>
            
        </div>
        
     <div class="form-group row">
      <asp:Label runat="server" ID="lbl" class="col-sm-2 alert alert-success background-success" Visible="False"></asp:Label>
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
        
       
   </div>
  </div>
     

 </div>
     </div>
    

 <div class="col-xl-4 col-md-6">
  <div class="card new-cust-card">
   <div class="card-header">
    <h5>New Admins</h5>
    <div class="card-header-right">
     <ul class="list-unstyled card-option">
      <li class="first-opt"><i class="feather icon-chevron-left open-card-option"></i></li>
      <li><i class="feather icon-maximize full-card"></i></li>
      <li><i class="feather icon-minus minimize-card"></i></li>
      <li><i class="feather icon-refresh-cw reload-card"></i></li>
      <li><i class="feather icon-trash close-card"></i></li>
      <li><i class="feather icon-chevron-left open-card-option"></i></li>
     </ul>
    </div>
   </div>
      <asp:Repeater ID="rptNewAdmins" runat="server">
          <ItemTemplate>
   <div class="card-block">
    <div class="align-middle m-b-25">
     <img src="../<%#Eval("Image") %>" alt="user image" class="img-radius img-40 align-top m-r-15">
     <div class="d-inline-block">
      <a href="#!"><h6><%#Eval("Name") %> &nbsp;<%#Eval("Surname") %></h6></a>
      <span class="status active"></span>
     </div>
    </div>
   </div>
          </ItemTemplate>
      </asp:Repeater>
  </div>
 </div>

</div>

</div>
</div>
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

            $("#row-delete tbody").on('click',
                'tr',
                function() {

                    var rowData = $(this).children("td").map(function() {
                        return $(this).text();
                    }).get();


                    $("#name").val(rowData[1]);
                    $("#surname").val(rowData[2]);
                    $("#username").val(rowData[3]);
                    $("#password").val(rowData[4]);
                    $("#email").val((rowData[5]));
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
