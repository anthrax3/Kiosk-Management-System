<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bus_booking.aspx.cs" Inherits="user_buses_bus_booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FF3300;
        }
        .auto-style2 {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
 <form id="form1" runat="server">
    <div class="details" style=" width:70%; margin-left:8%; " >
        <header>
            <h3 style="background-color:dodgerblue; height:35px;"  class="auto-style2">Journey  Details</h3>
        </header>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp; &nbsp; From&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
        <asp:Label ID="from" runat="server" Text="Label"></asp:Label>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;To&nbsp;&nbsp;&nbsp; :&nbsp;
        <asp:Label ID="to" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Service No&nbsp;&nbsp; :&nbsp;&nbsp;
        <asp:Label ID="tno" runat="server" Text="Label"></asp:Label>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp; Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
        <asp:Label ID="type" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dept Time :&nbsp;
        <asp:Label ID="dept" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Arri Time&nbsp; :&nbsp;&nbsp; <asp:Label ID="arri" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>

     <div class="passenger" style=" width:70%; margin-left:8%; ">
        <header>
            <h3 style="background-color:dodgerblue; height:35px;"  class="auto-style2">Passenger  Details</h3>
        </header>
         <asp:Table ID="Table1"  runat="server"  CellPadding="6" CellSpacing="10"  BackColor="LightBlue" GridLines="Both" CssClass="auto-style3" Width="968px"  >
             
             <asp:TableHeaderRow ID="header" runat="server" ForeColor="Snow" BackColor="LightBlue" Font-Bold="true">
                   <asp:TableHeaderCell>S.No.</asp:TableHeaderCell>
                
                 <asp:TableHeaderCell>Name</asp:TableHeaderCell>
                <asp:TableHeaderCell>Age</asp:TableHeaderCell>
                  <asp:TableHeaderCell>Gender</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Senior Citizens</asp:TableHeaderCell>
                 <asp:TableHeaderCell>Seat No</asp:TableHeaderCell>
                 </asp:TableHeaderRow>
             
             
             <asp:TableRow ID="row1" runat="server">
                 
                 <asp:TableCell>1</asp:TableCell>
                 
                 <asp:TableCell>
                     <asp:TextBox ID="name" runat="server"></asp:TextBox>
                 </asp:TableCell>
                 
                 <asp:TableCell>
                     <asp:TextBox ID="age" runat="server"></asp:TextBox>
                 </asp:TableCell>
                  
                 <asp:TableCell>
                      <asp:DropDownList ID="gender" runat="server">
                          <asp:ListItem>Male</asp:ListItem>
                          <asp:ListItem>Female</asp:ListItem>
                      </asp:DropDownList>
                 </asp:TableCell>

                  <asp:TableCell>
                      <asp:CheckBox ID="senior" runat="server" />
                    </asp:TableCell>

                      <asp:TableCell>
                          <asp:TextBox ID="seatno" runat="server"></asp:TextBox>
                    </asp:TableCell>


                 </asp:TableRow>



               <asp:TableRow ID="TableRow2" runat="server">
                 
                 <asp:TableCell>2</asp:TableCell>
                 
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </asp:TableCell>
                 
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </asp:TableCell>
                  
                 <asp:TableCell>
                      <asp:DropDownList ID="DropDownList1" runat="server">
                          <asp:ListItem>Male</asp:ListItem>
                          <asp:ListItem>Female</asp:ListItem>
                      </asp:DropDownList>
                 </asp:TableCell>

                  <asp:TableCell>
                      <asp:CheckBox ID="CheckBox2" runat="server" />
                    </asp:TableCell>
                 
               <asp:TableCell>
                          <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </asp:TableCell>
               
               </asp:TableRow>

             
             
             <asp:TableRow ID="TableRow3" runat="server">
                 
                 <asp:TableCell>3</asp:TableCell>
                 
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                 </asp:TableCell>
                 
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                 </asp:TableCell>
                  
                 <asp:TableCell>
                      <asp:DropDownList ID="DropDownList2" runat="server">
                          <asp:ListItem>Male</asp:ListItem>
                          <asp:ListItem>Female</asp:ListItem>
                      </asp:DropDownList>
                 </asp:TableCell>

  
                   <asp:TableCell>
                      <asp:CheckBox ID="CheckBox3" runat="server" />
                    </asp:TableCell>

                  <asp:TableCell>
                          <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </asp:TableCell>
               
                    </asp:TableRow>
            
           
             <asp:TableRow ID="TableRow1" runat="server">
                 
                 <asp:TableCell>4</asp:TableCell>
                 
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                 </asp:TableCell>
                 
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                 </asp:TableCell>
                  
                 <asp:TableCell>
                      <asp:DropDownList ID="DropDownList3" runat="server">
                          <asp:ListItem>Male</asp:ListItem>
                          <asp:ListItem>Female</asp:ListItem>
                      </asp:DropDownList>
                 </asp:TableCell>

                  <asp:TableCell>
                      <asp:CheckBox ID="CheckBox4" runat="server" />
                    </asp:TableCell>

                  <asp:TableCell>
                          <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                    </asp:TableCell>
             
                 </asp:TableRow>

               <asp:TableRow ID="TableRow4" runat="server">
                 
                 <asp:TableCell>5</asp:TableCell>
                 
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                 </asp:TableCell>
                 
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                 </asp:TableCell>
                  
                 <asp:TableCell>
                      <asp:DropDownList ID="DropDownList4" runat="server">
                          <asp:ListItem>Male</asp:ListItem>
                          <asp:ListItem>Female</asp:ListItem>
                      </asp:DropDownList>
                 </asp:TableCell>

                  <asp:TableCell>
                      <asp:CheckBox ID="CheckBox5" runat="server" />
                    </asp:TableCell>
                
                    <asp:TableCell>
                          <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                    </asp:TableCell>
               
                   </asp:TableRow>
            

               <asp:TableRow ID="TableRow5" runat="server">
                 
                 <asp:TableCell>6</asp:TableCell>
                 
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                 </asp:TableCell>
                 
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                 </asp:TableCell>
                  
                 <asp:TableCell>
                      <asp:DropDownList ID="DropDownList5" runat="server">
                          <asp:ListItem>Male</asp:ListItem>
                          <asp:ListItem>Female</asp:ListItem>
                      </asp:DropDownList>
                 </asp:TableCell>

                  <asp:TableCell>
                      <asp:CheckBox ID="CheckBox6" runat="server" />
                    </asp:TableCell>
             
                    <asp:TableCell>
                          <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                    </asp:TableCell>
               
                    </asp:TableRow>
      </asp:Table>
         </div>

     <br />
     <br />
     <div>

   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ## Senior Citizens need to bring thei valid Id Proof</span>

          <h4>&nbsp;Contact Information</h4>
            <asp:Label ID="MobileNo" runat="server" Text="Mobile "></asp:Label>&nbsp;&nbsp; 
            <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
             <br />
             <br />
            <asp:Label ID="email" runat="server" Text="Email"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="emailid" runat="server" Width="247px"></asp:TextBox>
             <br />
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2"><span class="auto-style1">##Your Ticket will be sent to above Mobile No and email ID</span><br />
             <br />
             <br />
             </span> </div>

     <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" Text="  I agree to the Cancellation and Refund Policy" /><br /><br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="Button3" runat="server" Height="60px" Text="Proceed To Book" Width="419px" BackColor="#3399FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button3_Click" />

</form>
</body>
</html>
