using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tech.WebClass;

namespace Tech.DataAccessLayer
{
    interface IAdminDal
    {
        List<Admin> GetAdmins();
        List<Admin> GetNewAdmins();
        int GetId(string username);
        string ControlAdmin(string username, string email);
        void Add(Admin admin);
        void Delete(Admin admin);
        void Update(Admin admin);
    }
}
