using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tech.DataAccessLayer;
using Tech.WebClass;

namespace Tech.Website.Admin
{
    public partial class Users : System.Web.UI.Page
    {
        UserDal _userDal = new UserDal();
        private string _imagePath = @"MyWebSite\assets\img\users\";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUsers();
                
            }


        }

        private void LoadUsers()
        {
            var userList = _userDal.GetUsers();
            var newuserList = _userDal.NewUsers(2);

            rptUsers.DataSource = userList;
            rptUsers.DataBind();

            rptNewUsers.DataSource = newuserList;
            rptNewUsers.DataBind();


        }

        protected void btnSave_OnServerClick(object sender, EventArgs e)
        {
            string username = Request.Form["username"];
            string email = Request.Form["email"];
            string password = Request.Form["password"];

            _userDal.UserAdd(new User
            {
                UserName = username,
                Password = password,
                Email = email,
                Image = _imagePath + userimage.Value
            });

            LoadUsers();
            lblUser.Visible = true;
            lblUser.InnerText = "User added!";


        }

        protected void btnDelete_OnServerClick(object sender, EventArgs e)
        {
            string username = Request.Form["username"];
            int id = _userDal.GetUserId(username);
            _userDal.UserDelete(new User
            {
                Id = id,
            });

            LoadUsers();
            lblUser.Visible = true;
            lblUser.InnerText = "User deleted!";
            
        }

        protected void btnUpdate_OnServerClick(object sender, EventArgs e)
        {
            string username = Request.Form["username"];
            int id = _userDal.GetUserId(username);
            string email = Request.Form["email"];
            string password = Request.Form["password"];

            _userDal.UserUpdate(new User
            {
                Id = id,
                UserName = username,
                Password = password,
                Email = email,
                Image = _imagePath + userimage.Value
            });

            LoadUsers();
            lblUser.Visible = true;
            lblUser.InnerText = "User updated!";

        }
    }
}