<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bus_reg.aspx.cs" Inherits="admin_buses_bus_reg" %>

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
              
              
             
                
                <div class="  w3-dropdown-hover w3-hover-green ">
                    <button class="w3-button w3-hover-green">
                   <asp:Label ID="Label1" runat="server" Text="Label">Airlines</asp:Label></button>
                      <div class="w3-dropdown-content w3-bar-block w3-card-4">
                         <a href="../Airlines/add_airlines.aspx" class="w3-bar-item w3-button w3-hover-green">Add Airlines</a>
                         <a href="../Airlines/view_airlines.aspx" class="w3-bar-item w3-button w3-hover-green">View Airlines</a>
          </div>
          </div>

               <div class="w3-dropdown-hover w3-hover-green">
                
               <button class="w3-button w3-hover-green">
                   <asp:Label ID="Label2" runat="server" Text="Label">Railways</asp:Label></button>
                      <div class="w3-dropdown-content w3-bar-block w3-card-4">
                         <a href="../trains/view_train Fares.aspx" class="w3-bar-item w3-button w3-hover-green">View Trains Fares</a>
                          <a href="../trains/train_fares.aspx" class="w3-bar-item w3-button w3-hover-green">Add Trains Fares</a>
                          <a href="../trains/train_reg.aspx" class="w3-bar-item w3-button w3-hover-green">Add Trains</a>
                          <a href="../trains/view trains.aspx" class="w3-bar-item w3-button w3-hover-green">View Trains </a>
                          
          </div>
          </div>
             
                <div class="w3-dropdown-hover">
                
               <button class="w3-button w3-green">
                   <asp:Label ID="Label3" runat="server" Text="Label">Buses</asp:Label></button>
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
                <a href="../../logout.aspx" class="w3-bar-item w3-button w3-hover-green w3-right">Logout</a>
                <a href="../../change_pass.aspx" class="=w3-bar-item w3-button w3-hover-green w3-right">Change Password</a>

                 <div class=" w3-right">
                
 <button class="w3-button">
        <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></button>
    
    </div>
 
 
              </div>
        
        
        
        
        <div>
    
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADMIN&nbsp;&nbsp;&nbsp; BUSES&nbsp;&nbsp;&nbsp; ADD&nbsp;&nbsp;&nbsp;&nbsp; PAGE<br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="From"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="from" runat="server" Width="139px">
            <asp:ListItem>Hyderabad</asp:ListItem>
            <asp:ListItem>Vijayawada</asp:ListItem>
            <asp:ListItem>Ongole</asp:ListItem>
            <asp:ListItem>Nellore</asp:ListItem>
            <asp:ListItem>Visakhapatnam</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="To"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="to" runat="server" Width="139px">
            <asp:ListItem>Hyderabad</asp:ListItem>
            <asp:ListItem>Vijayawada</asp:ListItem>
            <asp:ListItem>Ongole</asp:ListItem>
            <asp:ListItem>Nellore</asp:ListItem>
            <asp:ListItem>Visakhapatnam</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="ServiceNo"></asp:Label>
&nbsp;
        <asp:TextBox ID="sn" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Text="Departure"></asp:Label>
&nbsp;
        <asp:TextBox ID="dept" runat="server" TextMode="Time"></asp:TextBox>
        <br />
&nbsp;
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Type"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="type" runat="server">
            <asp:ListItem>A/C sleeper</asp:ListItem>
            <asp:ListItem>A/c Semi Sleeper</asp:ListItem>
            <asp:ListItem>Non A/c Sleeper</asp:ListItem>
            <asp:ListItem>Non A/c Semi Sleeper</asp:ListItem>
            <asp:ListItem>A/C Semi Sleeper</asp:ListItem>
            <asp:ListItem>Non A/C Semi Sleeper</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="Available"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="avail" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Text="Occupied"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="occ" runat="server"></asp:TextBox>
        &nbsp;
        <asp:Label ID="Label13" runat="server" Text="Arrival"></asp:Label>
&nbsp;
        <asp:TextBox ID="arr" runat="server" TextMode="Time"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label14" runat="server" Text="Distance"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="distance" runat="server" ForeColor="#996633">Km</asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label15" runat="server" Text="Fare"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="fare" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="SUBMIT" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="CANCEL" />
    
    </div>
    </form>
</body>
</html>
