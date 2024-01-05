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
    public partial class report : System.Web.UI.Page
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            string str = "select  empname from employee where deptid='" + DropDownList1.SelectedItem.Value + "'";

            DataSet sd = obj.fn_dataset(str);
            GridView1.DataSource = sd;
            GridView1.DataBind();
            string sell = "select count(empid) from employee where deptid='" + DropDownList1.SelectedItem.Value + "'";
            string empn = obj.fn_scalar(sell);
            Label3.Visible = true;
            Label3.Text = empn;
            
        }
    }
}