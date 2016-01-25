using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class chart_DeptEmployeeCount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ArrayList depts = new ArrayList();
        var obj = new { Name = "HR", Count = 10, Exp = 3 };
        depts.Add(obj);

        obj = new { Name = "Sales", Count = 20, Exp = 8 };
        depts.Add(obj);

        obj = new { Name = "Production", Count = 25 , Exp = 5};
        depts.Add(obj);

        obj = new { Name = "Accounts", Count = 12, Exp = 4 };
        depts.Add(obj);


        System.Web.Script.Serialization.JavaScriptSerializer js =
               new System.Web.Script.Serialization.JavaScriptSerializer();

        Response.ContentType = "application/json";
        Response.Write(js.Serialize(depts));

    }
}
