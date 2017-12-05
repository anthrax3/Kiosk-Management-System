<%@ Page Language="C#" AutoEventWireup="true" CodeFile="train_reg.aspx.cs" Inherits="_Default" %>

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
                 
             
            <div class="  w3-dropdown-hover w3-hover-green">
                
               <button class="w3-button w3-hover-green">
                   <asp:Label ID="Label13" runat="server" Text="Label">Airlines</asp:Label></button>
                      <div class="w3-dropdown-content w3-bar-block w3-card-4">
                         <a href="../Airlines/add_airlines.aspx" class="w3-bar-item w3-button w3-hover-green">Add Airlines</a>
                         <a href="../Airlines/view_airlines.aspx" class="w3-bar-item w3-button w3-hover-green">View Airlines</a>
          </div>
          </div>

               <div class="w3-dropdown-hover">
                
               <button class="w3-button w3-green">
                   <asp:Label ID="Label14" runat="server" Text="Label">Railways</asp:Label></button>
                      <div class="w3-dropdown-content w3-bar-block w3-card-4">
                         <a href="view_train Fares.aspx" class="w3-bar-item w3-hover-green w3-button">View Trains Fares</a>
                          <a href="view trains.aspx" class="w3-bar-item w3-hover-green w3-button">View Trains </a>
                          <a href="train_fares.aspx" class="w3-bar-item w3-hover-green w3-button">Add Trains Fares</a>
                          <a href="train_reg.aspx" class="w3-bar-item w3-hover-green w3-button">Add Trains</a>
                          
                          
          </div>
          </div>
             
                <div class="w3-dropdown-hover w3-hover-green">
                
               <button class="w3-button w3- w3-hover-green">
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
                <a href="../../logout.aspx" class="w3-bar-item w3-button w3-hover-green w3-right">Logout</a>
                <a href="../../change_pass.aspx" class="=w3-bar-item w3-button w3-right w3-hover-green">Change Password</a>

               <div class=" w3-right">
                
 <button class="w3-button">
        <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></button>
    
    </div>
 
              </div>
        
        
        
        <div>
    
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TRAIN DETAILS
        <br />
        <br />
    
        <br />
        <br />
&nbsp;<asp:Label ID="Label1" runat="server" Text="From"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="from" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Secunderabad</asp:ListItem>
            <asp:ListItem>Visakhapatnam</asp:ListItem>
            <asp:ListItem>Vijayawada</asp:ListItem>
            <asp:ListItem>Ongole</asp:ListItem>
            <asp:ListItem>Nellore</asp:ListItem>
            <asp:ListItem>Chennai</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="To"></asp:Label>
&nbsp;
        <asp:DropDownList ID="to" runat="server">
           
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Secunderabad</asp:ListItem>
            
            <asp:ListItem>Visakhapatnam</asp:ListItem>
            <asp:ListItem>Vijayawada</asp:ListItem>
            <asp:ListItem>Ongole</asp:ListItem>
            <asp:ListItem>Nellore</asp:ListItem>
            <asp:ListItem>Chennai</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Departure"></asp:Label>
&nbsp;
        <asp:TextBox ID="dept" runat="server" TextMode="Time"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Arrival"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="arr" runat="server" TextMode="Time"></asp:TextBox>
        <br />
        &nbsp;<br />
        <br />
        &nbsp;<asp:Label ID="Label3" runat="server" Text="TrainNo"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="trno" runat="server" ForeColor="#CC9900"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Doj&nbsp;
        <asp:TextBox ID="doj" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label5" runat="server" Text="Type"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="Type" runat="server" Width="190px">
            <asp:ListItem>SuperFast</asp:ListItem>
            <asp:ListItem>Express</asp:ListItem>
            <asp:ListItem>Passenger</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label19" runat="server" Text="Quota"></asp:Label>
&nbsp;
&nbsp;
        <asp:DropDownList ID="Quota" runat="server" Width="188px">
           
            <asp:ListItem>General</asp:ListItem>
            <asp:ListItem>Tatkal</asp:ListItem>
        
        </asp:DropDownList>
        <br />
        <br />
        &nbsp;
        <br />
        <asp:Label ID="Label4" runat="server" Text="avail_SL"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="SL" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="avail_3A"></asp:Label>
&nbsp;
        <asp:TextBox ID="A3" runat="server"></asp:TextBox>
        &nbsp;
        &nbsp;
        <asp:Label ID="Label9" runat="server" Text="avail_2A"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="A2" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
        <br />
        <br />
        <br />
&nbsp; <asp:Label ID="Label10" runat="server" Text="avail_1A"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="A1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp; <asp:Label ID="Label11" runat="server" Text="avail_CC"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="CC" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label12" runat="server" Text="avail_2S"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="S2" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="UPLOAD" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="CANCEL" OnClick="Button2_Click" />
    
    </div>
    </form>
</body>
</html>
