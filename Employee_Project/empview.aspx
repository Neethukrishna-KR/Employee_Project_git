<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="empview.aspx.cs" Inherits="Employee_Project.empview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 280px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="empid" Height="238px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Width="565px" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="empname" HeaderText="Emp_Name" >
                        <HeaderStyle ForeColor="Aqua" />
                        <ItemStyle ForeColor="#CCFF33" />
                    </asp:BoundField>
                    <asp:BoundField DataField="empjob" HeaderText="Emp_Job" >
                        <HeaderStyle ForeColor="Aqua" />
                        <ItemStyle ForeColor="#CCFF33" />
                    </asp:BoundField>
                    <asp:BoundField DataField="deptname" HeaderText="Emp_Department">
                    <HeaderStyle ForeColor="Aqua" />
                        <ItemStyle ForeColor="#CCFF33" />
                    </asp:BoundField>
                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" >
                    <HeaderStyle ForeColor="Aqua" />
                    <ItemStyle ForeColor="#CCFF33" />
                    </asp:CommandField>
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" >
                    <HeaderStyle ForeColor="Aqua" />
                    <ItemStyle ForeColor="#CCFF33" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
        </td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" class="btn btn-info" PostBackUrl="~/web.aspx" Text="Go Back To Home" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
