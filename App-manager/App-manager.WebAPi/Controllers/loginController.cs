using App_manager.BLL;
using App_manager.DAO;
using App_manager.IBLL;
using App_manager.IDAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace App_manager.WebAPi.Controllers
{
    public class loginController : ApiController
    {
        IXueShengXinXiService xuesheng = new XueShengXinXiService();
        [HttpGet]
        public string login(string name,string pwd)
        {
            var userinfo = xuesheng.Get(u => u.name == name && u.pass == pwd).FirstOrDefault();
            if (userinfo == null)
            {
                return "用户名账号密码错误";
            }
            return "ok";
        }
    }
}
