<%@ Page Language="C#" AutoEventWireup="true" CodeFile="train_fares.aspx.cs"  Inherits="user_railways_fare_calculator" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta name="viewport" content="width=device-width, initial-scale=1"/>
<link href="../../w3.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
         <div class="w3-container w3-teal">
          <header>
            <h2>Kiosk Management System</h2>
        </header>
    </div>

        <br />

          <div class="w3-bar w3-indigo w3-large" style="height: 42px">
               
             <div class="w3-left w3-bar-item">
                          <button class="w3-button">
                              <asp:Label ID="Label18" runat="server" Text=""></asp:Label></button>

                      </div>       
                
             <div class=" w3-bar-item w3-dropdown-hover w3-hover-green">  
                   <asp:Label ID="Label2" runat="server" Text="Label">Airlines</asp:Label>
                      <div class="w3-dropdown-content w3-bar-block w3-card-4">
                         <a href="../Airlines/add_airlines.aspx" class="w3-bar-item w3-button w3-hover-green">Add Airlines</a>
                         <a href="../Airlines/view_airlines.aspx" class="w3-bar-item w3-button w3-hover-green">View Airlines</a>
          </div>
          </div>

               <div class="w3-dropdown-hover">
                
               <button class="w3-button w3-green">
                   <asp:Label ID="Label14" runat="server" Text="Label">Railways</asp:Label></button>
                      <div class="w3-dropdown-content w3-bar-block w3-card-4">
                         <a href="view_train Fares.aspx" class="w3-bar-item w3-button w3-hover-green">View Trains Fares</a>
                          <a href="view trains.aspx" class="w3-bar-item w3-button w3-hover-green">View Trains </a>
                          <a href="train_fares.aspx" class="w3-bar-item w3-button w3-hover-green">Add Trains Fares</a>
                          <a href="train_reg.aspx" class="w3-bar-item w3-button w3-hover-green">Add Trains</a>
                          
                          
          </div>
          </div>
             
                <div class="w3-dropdown-hover">
                
               <button class="w3-button w3-hover-green">
                   <asp:Label ID="Label15" runat="server" Text="Label">Buses</asp:Label></button>
                      <div class="w3-dropdown-content w3-bar-block w3-card-4">
                         <a href="../buses/bus_view.aspx"  class="w3-bar-item w3-button w3-hover-green">View Buses</a>
                         <a href="../buses/bus_reg.aspx" class="w3-bar-item w3-button w3-hover-green">Add Buses</a>
                        
                          
          </div>
          </div> 

               <div class="w3-dropdown-hover w3-hover-green">
                
               <button class="w3-button w3-hover-green">
                   <asp:Label ID="Label16" runat="server" Text="Label">Hotels</asp:Label></button>
                      <div class="w3-dropdown-content w3-bar-block w3-card-4">
                         <a href="../hotels/view_hotels.aspx" class="w3-bar-item w3-button w3-hover-green">View Hotels</a>
                         <a href="../hotels/add_ hotels.aspx" class="w3-bar-item w3-button w3-hover-green">Add Hotels</a>
                        
                          
          </div>
          </div> 
                
               
                <a href="../../homepage.aspx" class="w3-bar-item w3-button w3-hover-green w3-right">Home</a> 
                <a href="../../logout.aspx" class="w3-bar-item w3-button w3-right w3-hover-green">Logout</a>
                <a href="../../change_pass.aspx" class="=w3-bar-item w3-button w3-right w3-hover-green">Change Password</a>
 
              <div class=" w3-right">
                
 <button class="w3-button">
        <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></button>
    
    </div>
  </div>
       

    
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <div>
    
        &nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h2 class="auto-style1"><strong>Fare Calculator</strong></h2>
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Text="From"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="from" runat="server" Width="137px">
            <asp:ListItem>Secunderabad</asp:ListItem>
            <asp:ListItem>Visakhapatnam</asp:ListItem>
            <asp:ListItem>Nellore</asp:ListItem>
            <asp:ListItem>Ongole</asp:ListItem>
            <asp:ListItem>Vijayawada</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Text="To"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="to" runat="server" Width="140px">
             <asp:ListItem>Secunderabad</asp:ListItem>
            <asp:ListItem>Visakhapatnam</asp:ListItem>
            <asp:ListItem>Nellore</asp:ListItem>
            <asp:ListItem>Ongole</asp:ListItem>
            <asp:ListItem>Vijayawada</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Class"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="class1" runat="server" Width="147px"  >
            <asp:ListItem>2S</asp:ListItem>
            <asp:ListItem>SL</asp:ListItem>
            <asp:ListItem>3A</asp:ListItem>
            <asp:ListItem>2A</asp:ListItem>
            <asp:ListItem>1A</asp:ListItem>
            <asp:ListItem>CC</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="Label13" runat="server" Text="Quota"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="quota" runat="server" Width="134px">
            <asp:ListItem>General</asp:ListItem>
            <asp:ListItem>Tatkal</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        &nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Base Fare"></asp:Label>
&nbsp;
        <asp:TextBox ID="base1" runat="server" Width="87px" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label7" runat="server" Text="Train No" ></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="trainno" runat="server" Width="99px" >0</asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="Label10" runat="server" Text="Type"></asp:Label>
        &nbsp; <asp:DropDownList ID="type" runat="server">
            <asp:ListItem>Superfast</asp:ListItem>
            <asp:ListItem>Express</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Super Fast Charges"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="superfast" runat="server" Width="108px">0</asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Reservation Charges"></asp:Label>
&nbsp;
        <asp:TextBox ID="reservation" runat="server" Width="99px" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Tatkal Charges" ></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="tatkal" runat="server" Width="55px">0</asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="ADD" />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
        <asp:Label ID="Label8" runat="server" Text="Total "></asp:Label>
        </strong>&nbsp;&nbsp;
        <asp:TextBox ID="grand" runat="server" ForeColor="#996633" >Grand Total</asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="submit" runat="server" OnClick="Button1_Click" Text="Submit" Width="105px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="cancel" runat="server" Text="Cancel" Width="111px" />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    
    </div>
    </form>
</body>
</html>
