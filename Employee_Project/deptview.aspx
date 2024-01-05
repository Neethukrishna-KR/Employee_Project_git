<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="deptview.aspx.cs" Inherits="Employee_Project.deptview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 606px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="586px" DataKeyNames="deptid" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Height="192px">
                <Columns>
                    <asp:BoundField DataField="deptname" HeaderText="Dept_Name" >
                    <HeaderStyle ForeColor="Aqua" />
                    <ItemStyle ForeColor="#CCFF33" />
                    </asp:BoundField>
                    <asp:BoundField DataField="depthead" HeaderText="Dept_Head" >
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
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" class="btn btn-info" PostBackUrl="~/web.aspx" Text="Go Back To Home" />
        </td>
        <td>
            &nbsp;</td>
        <td></td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
