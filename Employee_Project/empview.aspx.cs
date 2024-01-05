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
    public partial class empview : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid_bind();
            }

        }
        public void grid_bind()
        {
            string str = "select  dept.deptname, employee.* from dept join employee on employee.deptid=dept.deptid";

            DataSet ds = obj.fn_dataset(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            grid_bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            grid_bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox textname = (TextBox)GridView1.Rows[i].Cells[0].Controls[0];
            TextBox textjob= (TextBox)GridView1.Rows[i].Cells[1].Controls[0];
            string str = "update employee set empname='" + textname.Text + "',empjob='" + textjob.Text + "' where empid="+id+"";
            int j = obj.fn_nonquery(str);
            GridView1.EditIndex = -1;
            grid_bind();
           
            


        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from employee where empid=" + id + "";
            int j = obj.fn_nonquery(del);
            grid_bind();
        }
    }
}