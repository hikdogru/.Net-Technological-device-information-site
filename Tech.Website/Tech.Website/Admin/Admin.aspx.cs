using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Tech.DataAccessLayer;

namespace Tech.Website.Admin
{
    public partial class Admin1 : System.Web.UI.Page
    {
        AdminDal _adminDal = new AdminDal();
        private string _imagePath = @"MyWebSite\assets\img\admin\";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadAdmins();
            }
        }


        private void LoadAdmins()
        {
            var adminList = _adminDal.GetAdmins();
            rptAdmins.DataSource = adminList;
            rptAdmins.DataBind();
            
            var newAdmins = _adminDal.GetNewAdmins();
            rptNewAdmins.DataSource = newAdmins;
            rptNewAdmins.DataBind();

        }

        protected void btnSave_OnServerClick(object sender, EventArgs e)
        {
            string name = Request.Form["name"];
            string username = Request.Form["username"];
            string surname = Request.Form["surname"];
            string password = Request.Form["password"];
            string email = Request.Form["email"];
            if (_adminDal.ControlAdmin(username, email) != "0")
            {
                lbl.Visible = true;
                lbl.Text = "This username has been used before!";
            }

            else if (_adminDal.ControlAdmin(username, email) != "1")
            {
                lbl.Visible = true;
                lbl.Text = "This email has been used before!";
            }

            else
            {
                _adminDal.Add(new WebClass.Admin
                {
                    Name = name,
                    Surname = surname,
                    Username = username,
                    Password = password,
                    Email = email,
                    Image = _imagePath + myFile.Value,

                });
                lbl.Visible = true;
            lbl.Text = "Admin added!";
            LoadAdmins();
            }
        }


        protected void btnDelete_OnServerClick(object sender, EventArgs e)
        {
            string username = Request.Form["username"];
            int Id = _adminDal.GetId(username);
            _adminDal.Delete(new WebClass.Admin
            {
                Id = Id
            });

            lbl.Visible = true;
            lbl.Text = "Admin deleted!";
            LoadAdmins();
        }


        protected void btnUpdate_OnServerClick(object sender, EventArgs e)
        {
            string name = Request.Form["name"];
            string username = Request.Form["username"];
            string surname = Request.Form["surname"];
            string password = Request.Form["password"];
            string email = Request.Form["email"];
            int Id = _adminDal.GetId(username);
            _adminDal.Update(new WebClass.Admin
            {
                Id = Id,
                Name = name,
                Surname = surname,
                Username = username,
                Password = password,
                Email = email,
                Image = _imagePath + myFile.Value,

            });

            lbl.Visible = true;
            lbl.Text = "Admin updated!";
            LoadAdmins();
        }
    }
}