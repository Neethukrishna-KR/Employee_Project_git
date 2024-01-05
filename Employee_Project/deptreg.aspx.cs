using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Employee_Project
{
    public partial class deptreg : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "insert into dept values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
            int j = obj.fn_nonquery(str);
            if (j != 0)
            {
                Label3.Visible = true;
                Label3.Text = "inserted";
            }
        }
    }
}