﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="eLibraryManagement.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/generaluser.png"
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
                                </center>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                         <div class="row">
                            <div class="col">
                                <label>Member ID</label>
                               <div class="form-group" textmode="Password">
                                   <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" 
                                       placeholder="Member ID"></asp:TextBox>

                               </div>

                                 <label>Password</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" 
                                       placeholder="Password" TextMode="Password"></asp:TextBox>

                               </div>
                                <div>
    <div class="form-group">
        <asp:Button type="button" class="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" />
    </div>
</div>
                                 <div class="form-group">
                                     <a href="usersignup.aspx"> 
                                         <input type="button" class="btn btn-info btn-block btn-lg" id="Button1"  value="Sign Up" />

                                     </a>
                                    
                                      
                                    

                                </div>
                        </div>

                    </div>
                </div>
            </div>
                <a href="homepage.aspx" ><< Back to home</a><br /><br />
        </div>
    </div>
        </div>
        
</asp:Content>
