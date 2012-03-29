﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SMReport.master" AutoEventWireup="true" CodeBehind="SMViewEmployee.aspx.cs" Inherits="Trial.SMViewEmployee" %>
<asp:Content ID="Content2" ContentPlaceHolderID="RightContent" runat="server">
    <div class="reports">
     <asp:Label ID="Label2" runat="server" Text="Commission Rate: "></asp:Label>
&nbsp;<asp:Label ID="Label5" runat="server"></asp:Label>
        <br />
     <asp:Label ID="Label3" runat="server" Text="Total Unit Managers Sales: Php"></asp:Label>
&nbsp;<asp:Label ID="Label7" runat="server"></asp:Label>
     <br />
     <asp:Label ID="Label4" runat="server" Text="Commission: Php"></asp:Label>
&nbsp;<asp:Label ID="Label6" runat="server"></asp:Label>
     <br />
     <br />
     </div>
    
     <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" 
       AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="149px" style="width:100%;" CellPadding="4" ForeColor="#333333" 
       GridLines="None" DataMember="DefaultView" 
       onselectedindexchanged="GridView1_SelectedIndexChanged"
       OnRowCommand="GridView1_RowCommand"  
       Width="656px">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:BoundField DataField="employee_no" HeaderText="Employee No" InsertVisible="False" ReadOnly="True" SortExpression="employee_no" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"/>
             <asp:BoundField DataField="l_name" HeaderText="Last Name" SortExpression="l_name" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center"/>
             <asp:BoundField DataField="f_name" HeaderText="First Name" SortExpression="f_name" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center"/>
             <asp:BoundField DataField="m_name" HeaderText="Middle Name" SortExpression="m_name" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center"/>
             <asp:TemplateField HeaderText="Sales" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Center">
                  <ItemTemplate>
                  <asp:Label ID="Label1" runat="server"></asp:Label>
                  </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText=" ">
                 <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" ButtonType="Button" Text="View" CommandArgument='<%# Eval("employee_no") %>' CommandName="View"/>
                 </ItemTemplate>
               </asp:TemplateField>
         </Columns>
         <EditRowStyle BackColor="#7C6F57" />
         <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#E3EAEB" />
         <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#F8FAFA" />
         <SortedAscendingHeaderStyle BackColor="#246B61" />
         <SortedDescendingCellStyle BackColor="#D4DFE1" />
         <SortedDescendingHeaderStyle BackColor="#15524A" />
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:OFFICIAL-DB %>"  
         
         
    SelectCommand="SELECT EMPLOYEEPROFILE.employee_no, EMPLOYEEPROFILE.l_name, EMPLOYEEPROFILE.f_name, EMPLOYEEPROFILE.m_name FROM EMPLOYEEPROFILE INNER JOIN LOCATION ON EMPLOYEEPROFILE.location = LOCATION.Location_No WHERE (EMPLOYEEPROFILE.position = 2) AND (LOCATION.Location_Name = @locName)">
         <SelectParameters>
              <asp:SessionParameter Name="locName" SessionField="locName" Type="string" />
         </SelectParameters>
     </asp:SqlDataSource>
    
     </asp:Content>