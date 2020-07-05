using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tech.WebClass;

namespace Tech.DataAccessLayer
{
    public class UserDal:IUserDal
    {
        public string Login(string username, string password)
        {
            using (TechContext context = new TechContext())
            {
                var userList = context.Users.Where(p => p.UserName == username & p.Password == password).ToList();
                if (userList.Count>0)
                {
                    return "Giriş başarılı";
                }

                else
                {
                    return "Giriş başarısız";
                }
            }
        }

        public List<User> GetUsers()
        {
            using (TechContext context = new TechContext())
            {
                var userList = context.Users.ToList();
                return userList;
            }
        }

        public List<User> NewUsers(int piece)
        {
            using (TechContext context = new TechContext())
            {
                var newUserList = context.Users.Where(p => p.Id > 1000).Take(piece).ToList();
                return newUserList;
            }
        }

        public int GetUserId(string username)
        {
            int Id = 0;
            using (TechContext context = new TechContext())
            {
                var userId = (from i in context.Users
                    where i.UserName == username
                    select i.Id);

                foreach (var i in userId)
                {
                    Id += i;
                }

                return Id;
            }
        }

        public void UserAdd(User user)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(user);
                entity.State = EntityState.Added;
                context.SaveChanges();
            }
        }

        public void UserDelete(User user)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(user);
                entity.State = EntityState.Deleted;
                context.SaveChanges();
            }
        }

        public void UserUpdate(User user)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(user);
                entity.State = EntityState.Modified;
                context.SaveChanges();
            }
        }
    }
}
