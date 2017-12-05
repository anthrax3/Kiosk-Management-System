<%@ Page Language="C#" AutoEventWireup="true" CodeFile="airline_booking.aspx.cs" Inherits="user_Airlines_ticket_booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="details" style=" width:70%; margin-left:8%; " >
        <header>
            <h3 style="background-color:dodgerblue; height:35px;"  class="auto-style1">Journey  Details</h3>
        </header>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp; &nbsp;Airlines&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="airlines" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Flight No&nbsp;&nbsp; :&nbsp;&nbsp;
        <asp:Label ID="tno" runat="server" Text="Label"></asp:Label>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Type&nbsp;&nbsp; :&nbsp;&nbsp;
        <asp:Label ID="type" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp; From&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
        <asp:Label ID="from" runat="server" Text="Label"></asp:Label>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To&nbsp;&nbsp;&nbsp; :&nbsp;
        <asp:Label ID="to" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Via
    
    &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;
        <asp:Label ID="via" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
&nbsp;&nbsp;&nbsp; Dept Time :&nbsp;
        <asp:Label ID="dept" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Arri Time&nbsp; :&nbsp;&nbsp;<asp:Label ID="arri" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style1">&nbsp; </span>

        </div>

         <div class="passenger" style=" width:70%; margin-left:8%; ">
        <header>
            <h3 style="background-color:dodgerblue; height:35px;"  class="auto-style1">Passenger  Details</h3>
        </header>
         <asp:Table ID="Table1"  runat="server"  CellPadding="6" CellSpacing="10"  BackColor="LightBlue" GridLines="Both" CssClass="auto-style3" Width="968px"  >
             
             <asp:TableHeaderRow ID="header" runat="server" ForeColor="Snow" BackColor="LightBlue" Font-Bold="true">
                   <asp:TableHeaderCell>S.No.</asp:TableHeaderCell>
                
                 <asp:TableHeaderCell>FirstName & MiddleName</asp:TableHeaderCell>
                 <asp:TableHeaderCell>LastName</asp:TableHeaderCell>
                <asp:TableHeaderCell>Age</asp:TableHeaderCell>
                  <asp:TableHeaderCell>Gender</asp:TableHeaderCell>
                            </asp:TableHeaderRow>
           

               <asp:TableRow ID="row1" runat="server">
                   
                   <asp:TableCell>1</asp:TableCell>
                   
                 <asp:TableCell>
                     <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                 </asp:TableCell>

                    <asp:TableCell>
                     <asp:TextBox ID="lname" runat="server"></asp:TextBox>
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

                   </asp:TableRow>

                 <asp:TableRow ID="TableRow1" runat="server">
                   
                   <asp:TableCell>2</asp:TableCell>
                   
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </asp:TableCell>

                    <asp:TableCell>
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </asp:TableCell>

                    <asp:TableCell>
                     <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                 </asp:TableCell>

                   <asp:TableCell>
                       <asp:DropDownList ID="DropDownList1" runat="server">
                          <asp:ListItem>Male</asp:ListItem>
                           <asp:ListItem>Female</asp:ListItem>
                       </asp:DropDownList>
                   </asp:TableCell>

                   </asp:TableRow>

                 <asp:TableRow ID="TableRow2" runat="server">
                   
                   <asp:TableCell>3</asp:TableCell>
                   
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                 </asp:TableCell>

                    <asp:TableCell>
                     <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                 </asp:TableCell>

                    <asp:TableCell>
                     <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                 </asp:TableCell>

                   <asp:TableCell>
                       <asp:DropDownList ID="DropDownList2" runat="server">
                          <asp:ListItem>Male</asp:ListItem>
                           <asp:ListItem>Female</asp:ListItem>
                       </asp:DropDownList>
                   </asp:TableCell>

                   </asp:TableRow>

                 <asp:TableRow ID="TableRow3" runat="server">
                   
                   <asp:TableCell>4</asp:TableCell>
                   
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                 </asp:TableCell>

                    <asp:TableCell>
                     <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                 </asp:TableCell>

                    <asp:TableCell>
                     <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                 </asp:TableCell>

                   <asp:TableCell>
                       <asp:DropDownList ID="DropDownList3" runat="server">
                          <asp:ListItem>Male</asp:ListItem>
                           <asp:ListItem>Female</asp:ListItem>
                       </asp:DropDownList>
                   </asp:TableCell>

                   </asp:TableRow>

                 <asp:TableRow ID="TableRow4" runat="server">
                   
                   <asp:TableCell>5</asp:TableCell>
                   
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                 </asp:TableCell>

                    <asp:TableCell>
                     <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                 </asp:TableCell>

                    <asp:TableCell>
                     <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                 </asp:TableCell>

                   <asp:TableCell>
                       <asp:DropDownList ID="DropDownList4" runat="server">
                          <asp:ListItem>Male</asp:ListItem>
                           <asp:ListItem>Female</asp:ListItem>
                       </asp:DropDownList>
                   </asp:TableCell>

                   </asp:TableRow>

                 <asp:TableRow ID="TableRow5" runat="server">
                   
                   <asp:TableCell>6</asp:TableCell>
                   
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                 </asp:TableCell>

                    <asp:TableCell>
                     <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                 </asp:TableCell>

                    <asp:TableCell>
                     <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                 </asp:TableCell>

                   <asp:TableCell>
                       <asp:DropDownList ID="DropDownList5" runat="server">
                          <asp:ListItem>Male</asp:ListItem>
                           <asp:ListItem>Female</asp:ListItem>
                       </asp:DropDownList>
                   </asp:TableCell>

                   </asp:TableRow>
             </asp:Table>


             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


             <asp:Button ID="Button1" runat="server" Height="60px" Text="Proceed To Book" Width="419px" BackColor="#3399FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click"  />




            
                
             <br />




            
                
             </div>
    </form>
</body>
</html>
