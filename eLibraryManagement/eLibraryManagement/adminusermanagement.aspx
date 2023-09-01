<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminusermanagement.aspx.cs" Inherits="eLibraryManagement.adminusermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Member Details</h4>
                           
                        </center>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>Member ID</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                             <asp:Button class="btn btn-primary" ID="Button2" runat="server" Text="Go"  />
                                </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Member Name" ></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-5">
                        <label>Account status</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox CssClass="form-control mr-1" ID="TextBox3"  runat="server" placeholder="Account Status" ReadOnly="true"></asp:TextBox>
                                
                                <asp:LinkButton class="btn btn-success mr-1" ID="LinkButton1" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server"><i class="far fa-pause-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger mr-1" ID="LinkButton3" runat="server"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                

                                </div>
                        </div>
                     </div>

                  </div>
                 
                   <div class="row">
                     <div class="col-md-3">
                        <label>DOB</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="ID" TextMode="Date"></asp:TextBox>
                             
                                </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Member Name" TextMode="Phone" ></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-5">
                        <label>Email ID</label>
                        <div class="form-group">
                            
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Email ID" TextMode="Email" ></asp:TextBox>
                                
                                

                                
                        </div>
                     </div>

                  </div>
                 
                 <div class="row">
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="State" TextMode="SingleLine"></asp:TextBox>
                             
                                </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="City" TextMode="SingleLine" ></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-4">
                        <label>Pin Code</label>
                        <div class="form-group">
                            
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Pin Code" TextMode="Number" ></asp:TextBox>
                                
                                

                                
                        </div>
                     </div>

                  </div>
                 <div class="row">
                     <div class="col">
                        <label>Full Postal Address</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Product Description" TextMode="MultiLine"></asp:TextBox>
                             
                                </div>
                        </div>
                     </div>
                     
                    

                  </div>
                 
                  <div class="row">
                     <div class="col">
                        
                           
                              <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button1" runat="server" Text="Delete User Permanently"  />
                           
                        
                  </div>
                     
                     
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
         <%--<div class="col-md-6">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/books1.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Issued Books</h4>
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="your books info"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" ></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>--%>
      </div>
            <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                 
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Member List</h4>
                          
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" ></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
   </div>
          </div>
</asp:Content>
