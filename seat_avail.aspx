<%@ Page Language="C#" MasterPageFile="~/master/Flights.master" AutoEventWireup="true" CodeFile="seat_avail.aspx.cs" Inherits="user_Airlines_Default" %>



<asp:Content ID="bodypart" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="w3-container w3-brown">
        <header>
            <h2>Seat Availability</h2>
        </header>
    </div> 
    <div class="w3-container" style="width:28%; float:left">

        &nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="from" runat="server" CssClass="w3-text-brown w3-large"><b>From</b></asp:Label>
     

        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="from1" runat="server" Width="244px" Height="41px">
            <asp:ListItem>Hyderabad</asp:ListItem>
            <asp:ListItem>Visakhapatnam</asp:ListItem>
            <asp:ListItem>Chennai</asp:ListItem>
            <asp:ListItem>Vijayawada</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />

        <asp:Label ID="Label1" runat="server" CssClass="w3-text-brown w3-large"><b>To</b></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="to1" runat="server" Width="244px" Height="41px">
            <asp:ListItem>Hyderabad</asp:ListItem>
            <asp:ListItem>Chennai</asp:ListItem>
            <asp:ListItem>Visakapatnam</asp:ListItem>
            <asp:ListItem>Vijayawada</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />

        <asp:Label ID="Label2" runat="server" CssClass="w3-text-brown w3-large"><b>Doj</b></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="doj" runat="server" TextMode="Date" Width="244px" Height="41px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />

        <asp:Label ID="Label4" runat="server" CssClass="w3-text-brown w3-large"><b>Type</b></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="type" runat="server" Width="244px" Height="41px">
            <asp:ListItem>Direct</asp:ListItem>
            <asp:ListItem>Single Stop</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" CssClass="w3-button w3-green" OnClick="Button1_Click" Text="Search"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="w3-button w3-red" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
</div>
    <br />
     <div class="listpart" style="margin-left:27%; ">
        <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="14"  AllowPaging="true" > 
             	<AlternatingRowStyle BackColor="White" /> 
           <columns>
            
                <asp:TemplateField HeaderText="Airlines">  
                   <ItemTemplate>
                       <asp:Label ID="airlines" runat="server" Text='<%#Bind("Airlines") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               
               <asp:TemplateField HeaderText="FlightNo">
                   <ItemTemplate>
                       <asp:Label ID="fno" runat="server" Text='<%#Bind("FlightNo") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>

               <asp:TemplateField HeaderText="From">
                   <ItemTemplate>
                       <asp:Label ID="From" runat="server" Text='<%#Bind("[From]") %>'></asp:Label>
                   </ItemTemplate>
                 </asp:TemplateField>


               <asp:TemplateField HeaderText="To">
                   <ItemTemplate>
                       <asp:Label ID="to" runat="server" Text='<%#Bind("[To]") %>'></asp:Label>
                   </ItemTemplate>
                 </asp:TemplateField>
                
               <asp:TemplateField HeaderText="Via">
                       <ItemTemplate>
                       <asp:Label ID="via" runat="server" Text='<%#Bind("via") %>'></asp:Label>      
                 </ItemTemplate>
               </asp:TemplateField>
               
               <asp:TemplateField HeaderText="Dept">
                   <ItemTemplate>
                       <asp:Label ID="dept" runat="server" Text='<%#Bind("dept") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>


                <asp:TemplateField HeaderText="Arri">
                   <ItemTemplate>
                       <asp:Label ID="arr" runat="server" Text='<%#Bind("arri") %>'></asp:Label>
                        
                   </ItemTemplate>
               </asp:TemplateField>


               <asp:TemplateField HeaderText="Type">
                   <ItemTemplate>
                       <asp:Label ID="type" runat="server" Text='<%#Bind("Type") %>'></asp:Label>      
                 
                       </ItemTemplate>
               </asp:TemplateField>
               

                <asp:TemplateField HeaderText="Economy">
                     <ItemTemplate>
                       <asp:Label ID="economy" runat="server" Text='<%#Bind("Economy_price") %>'></asp:Label>
                      <br />
                         <asp:Label ID="eco_avail" runat="server" ForeColor="Blue" Text='<%#Bind("eco_avai") %>'>AVAILABLE--</asp:Label>
                         </ItemTemplate>
                    </asp:TemplateField>

                   

        

               
                <asp:TemplateField HeaderText="Business">
                       <ItemTemplate>
                       <asp:Label ID="business" runat="server" Text='<%#Bind("Business_price") %>'></asp:Label>
                           <br />
                           <asp:Label ID="bus_avail" ForeColor="Blue" runat="server" Text='<%#Bind("bus_avai") %>'>AVAILABLE--</asp:Label>
                 </ItemTemplate>
               </asp:TemplateField>

         

               <asp:TemplateField HeaderText="Book">
                   <ItemTemplate>
                       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# string.Format("~/user/Airlines/airline_booking.aspx?From={0}&To={1}&FlightNo={2}&Dept={3}&Arri={4}&Type={5}&Via={6}&Airlines={7}",
HttpUtility.UrlEncode(Eval("From").ToString()), HttpUtility.UrlEncode(Eval("To").ToString()), HttpUtility.UrlEncode(Eval("FlightNo").ToString()), HttpUtility.UrlEncode(Eval("Dept").ToString()), HttpUtility.UrlEncode(Eval("Arri").ToString()), HttpUtility.UrlEncode(Eval("Type").ToString()), HttpUtility.UrlEncode(Eval("Via").ToString()), HttpUtility.UrlEncode(Eval("Airlines").ToString()))%>'>Book</asp:HyperLink>
                 </ItemTemplate>
               </asp:TemplateField>
               

           </columns>
       </asp:GridView>
    </div>
</asp:Content>



