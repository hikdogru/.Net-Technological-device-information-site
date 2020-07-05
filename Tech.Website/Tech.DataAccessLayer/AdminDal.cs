using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tech.WebClass;

namespace Tech.DataAccessLayer
{
    public class AdminDal : IAdminDal
    {
        public List<Admin> GetAdmins()
        {
            using (TechContext context = new TechContext())
            {
                var adminList = context.Admins.ToList();
                return adminList;
            }
        }

        public List<Admin> GetNewAdmins()
        {
            using (TechContext context = new TechContext())
            {
                var newAdminList = (from i in context.Admins orderby i.Id descending select i).Take(4).ToList();
                return newAdminList;
            }
        }

        public int GetId(string username)
        {
            int Id = 0;
            using (TechContext context = new TechContext())
            {
                var adminId = context.Admins.Where(p => p.Username == username);
                foreach (var admin in adminId)
                {
                    Id += admin.Id;
                }

                return Id;
            }
        }

        public string ControlAdmin(string username, string email)
        {
            using (TechContext context = new TechContext())
            {
                var usernameControl = context.Admins.Where(p => p.Username == username).ToList();
                var emailControl = context.Admins.Where(p => p.Email == email).ToList();
                if (usernameControl.Count > 0)
                {
                    return "0";
                }

                else if (emailControl.Count > 0)
                {
                    return "1";
                }

                return "-1";
            }
        }

        public void Add(Admin admin)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(admin);
                entity.State = EntityState.Added;
                context.SaveChanges();
            }
        }

        public void Delete(Admin admin)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(admin);
                entity.State = EntityState.Deleted;
                context.SaveChanges();
            }
        }

        public void Update(Admin admin)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(admin);
                entity.State = EntityState.Modified;
                context.SaveChanges();
            }
        }
    }
}
