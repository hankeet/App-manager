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
        public string login(string name,string pwd)
        {
            if (name == "abc" && pwd == "123")
            { 
            return "http://www.baidu.com";
              }
            return "ss";
        }
    }
}
