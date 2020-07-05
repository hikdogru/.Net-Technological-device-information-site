using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tech.WebClass;

namespace Tech.DataAccessLayer
{
    interface IUserDal
    {
        string Login(string email, string password);
        List<User> GetUsers();
        List<User> NewUsers(int piece);
        int GetUserId(string username);
        void UserAdd(User user);
        void UserDelete(User user);
        void UserUpdate(User user);

    }
}
