<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_airlines.aspx.cs" Inherits="airlines" %>

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
             
                      <div class="  w3-dropdown-hover w3-green ">
                          <button class="w3-button">
                              <asp:Label ID="Label13" runat="server" Text="Label">Airlines</asp:Label>

                          </button>
                        <div class="w3-dropdown-content w3-bar-block w3-card-4">
                         <a href="add_airlines.aspx" class="w3-bar-item w3-button w3-hover-green">Add Airlines</a>
                         <a href="view_airlines.aspx" target="_blank" class="w3-bar-item w3-button w3-hover-green">View Airlines</a>
          </div>
          </div>

               <div class="w3-dropdown-hover">
                
               <button class="w3-button w3-hover-green">
                   <asp:Label ID="Label14" runat="server" Text="Label">Railways</asp:Label></button>
                      <div class="w3-dropdown-content w3-bar-block w3-card-4">
                         <a href="../trains/view_train Fares.aspx" target="_blank" class="w3-bar-item w3-button w3-hover-green">View Trains Fares</a>
                          <a href="../trains/train_fares.aspx" class="w3-bar-item w3-button w3-hover-green">Add Trains Fares</a>
                          <a href="../trains/train_reg.aspx" class="w3-bar-item w3-button w3-hover-green">Add Trains</a>
                          <a href="../trains/view trains.aspx" target="_blank" class="w3-bar-item w3-button w3-hover-green">View Trains </a>
                          
          </div>
          </div>
             
                <div class="w3-dropdown-hover">
                
               <button class="w3-button w3-hover-green">
                   <asp:Label ID="Label15" runat="server" Text="Label">Buses</asp:Label></button>
                      <div class="w3-dropdown-content w3-bar-block w3-card-4">
                         <a href="../buses/bus_view.aspx"  target="_blank" class="w3-bar-item w3-button w3-hover-green">View Buses</a>
                         <a href="../buses/bus_reg.aspx" class="w3-bar-item w3-button w3-hover-green">Add Buses</a>
                        
                          
          </div>
          </div> 

               <div class="w3-dropdown-hover">
                
               <button class="w3-button w3-hover-green">
                   <asp:Label ID="Label16" runat="server" Text="Label">Hotels</asp:Label></button>
                      <div class="w3-dropdown-content w3-bar-block w3-card-4" >
                         <a href="../hotels/view_hotels.aspx" target="_blank" class="w3-bar-item w3-button w3-hover-green">View Hotels</a>
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
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADMIN&nbsp;&nbsp; AIRLINES&nbsp; ADD PAGE<br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="From"></asp:Label>
&nbsp;
        <asp:DropDownList ID="from" runat="server">
            <asp:ListItem>Visakhapatnam</asp:ListItem>
            <asp:ListItem>Hyderabad</asp:ListItem>
            <asp:ListItem>Vijayawada</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="To"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="to" runat="server">
            <asp:ListItem>Vijayawada</asp:ListItem>
            <asp:ListItem>Hyderabad</asp:ListItem>
            <asp:ListItem>Visakhapatnam</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Type"></asp:Label>
&nbsp;
        <asp:DropDownList ID="type" runat="server">
            <asp:ListItem>Direct</asp:ListItem>
            <asp:ListItem>Single Stop</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Airlines"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="airline" runat="server">
            <asp:ListItem>Air India</asp:ListItem>
            <asp:ListItem>Indigo</asp:ListItem>
            <asp:ListItem>Air Asia</asp:ListItem>
            <asp:ListItem>Singapore Airlines</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="FlightNo"></asp:Label>
&nbsp;
        <asp:TextBox ID="fno" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        &nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="eco_Available"></asp:Label>
&nbsp;<asp:TextBox ID="eco_avail" runat="server" Width="87px">0</asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="business_Available"></asp:Label>
&nbsp;
        <asp:TextBox ID="bus_avail" runat="server" Width="59px">0</asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Text="eco_price"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="eco_price" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Text="bus_price"></asp:Label>
        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="bus_price" runat="server" ></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Departure"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="dept" runat="server" TextMode="Time"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Arrival"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="arr" runat="server" TextMode="Time"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="via"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="vi" runat="server" Width="177px">
                    <asp:ListItem></asp:ListItem>
            <asp:ListItem>Vijayawada</asp:ListItem>
            <asp:ListItem>Visakhapatnam</asp:ListItem>
            <asp:ListItem>Hyderabad</asp:ListItem>
            <asp:ListItem>Tirupati</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="CANCEL" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
