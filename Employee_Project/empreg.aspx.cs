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
    public partial class empreg : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select deptid,deptname from dept ";
                DataSet ds = obj.fn_dataset(sel);
                DropDownList1.DataTextField = "deptname";
                DropDownList1.DataValueField = "deptid";
                DropDownList1.DataSource = ds;
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "-select-");
                
            }

        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "insert into employee values(" + DropDownList1.SelectedItem.Value + ",'" + TextBox1.Text + "','"+TextBox2.Text+"')";

            int j = obj.fn_nonquery(str);
            if (j != 0)
            {
                Label4.Visible = true;
                Label4.Text = "inserted";
            }

        }
    }
}