﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HRView.master" AutoEventWireup="true" CodeBehind="HRViewEmployeeProfile.aspx.cs" Inherits="Trial.HRViewEmployeeProfile" %>
<asp:Content ID="Content2" ContentPlaceHolderID="RightContent" runat="server">
    <div class="profileHRView">
            <div class = "profileRight">
                <p > <strong>Employee No.:&nbsp;&nbsp;&nbsp; </strong><asp:Label ID="Label1" runat="server"></asp:Label></p>
                <br />
                <p> <strong>Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:Label ID="Label2" runat="server"></asp:Label></p>
                <p> <strong>Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:Label ID="Label3" runat="server"></asp:Label></p>    
                <p> <strong>Contact No.:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:Label ID="Label4" runat="server"></asp:Label></p>
                <p> <strong>Birthdate:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:Label ID="Label6" runat="server"></asp:Label></p>
                <p> <strong>SSS:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:Label ID="Label8" runat="server"></asp:Label></p>
                <br />
                <p> <strong>Position:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:Label ID="Label10" runat="server"></asp:Label></p>
                <p> <strong>Location:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:Label ID="Label13" runat="server"></asp:Label></p>
                <p> <strong>Date Hired:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:Label ID="Label12" runat="server"></asp:Label></p>
            </div>
            <div class = "profileLeft">
                <p > <strong>E-mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:Label ID="Label5" runat="server"></asp:Label></p>
                <p > <strong>Gender:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label7" runat="server"></asp:Label></p>
                <p > <strong>TIN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:Label ID="Label9" runat="server"></asp:Label></p>
            </div>
            <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Edit Profile" CssClass="editButton"  />
            <p> <asp:Label ID="Label14" runat="server" ForeColor="Red"></asp:Label></p>
        </div>
</asp:Content>
