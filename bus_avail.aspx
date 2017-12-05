<%@ Page Language="C#" MasterPageFile="~/master/buses.master" AutoEventWireup="true" CodeFile="bus_avail.aspx.cs" Inherits="buses" %>


     
    <asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="w3-container w3-brown">
        <header>
            <h2>Seat Availability</h2>
        </header>
    </div> 
        <div class="w3-container" style=" float:left; width:28%" >
           <br />
            <br />
             
             
             <asp:Label ID="Label1" runat="server" CssClass="w3-text-brown w3-large"><b>From</b></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:DropDownList ID="from" runat="server" Height="41px" Width="244px">

                 
                                 <asp:ListItem>Hyderabad</asp:ListItem>
                                 <asp:ListItem>Hyderabad</asp:ListItem>
                                 <asp:ListItem>Visakhapatnam</asp:ListItem>
                                 <asp:ListItem>Vijayawada</asp:ListItem>
                                 <asp:ListItem>Ongole</asp:ListItem>
                                 <asp:ListItem>Nellore</asp:ListItem>
                                 <asp:ListItem>Chennai</asp:ListItem>
                 </asp:DropDownList>

        <br />
        <br />
             <br />
             
            <asp:Label ID="Label2" runat="server" CssClass="w3-text-brown w3-large"><b>To</b></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:DropDownList ID="to" runat="server" Height="41px" Width="244px" >
            <asp:ListItem>Hyderabad</asp:ListItem>
            <asp:ListItem>Visakhapatnam</asp:ListItem>
            <asp:ListItem>Vijayawada</asp:ListItem>
            <asp:ListItem>Ongole</asp:ListItem>
            <asp:ListItem>Nellore</asp:ListItem>
            <asp:ListItem>Chennai</asp:ListItem>
      </asp:DropDownList>
       <br />
        <br />
             <br />
      <asp:Label ID="Label3" runat="server" CssClass="w3-text-brown w3-large"><b>Doj</b></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"  TextMode="Date" Height="41px" Width="244px"></asp:TextBox>
             <br />
             <br />
             <br />
             <br />

               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

               <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="w3-button w3-green" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="w3-button w3-red" />
     </div>  
        <br />
        <br />
         <div class="listpart" style="margin-left:27%;">
        <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="14"  AllowPaging="true" > 
             	<AlternatingRowStyle BackColor="White" /> 
           <columns>
            
                <asp:TemplateField HeaderText="ServiceNo">  
                   <ItemTemplate>
                       <asp:Label ID="serno" runat="server" Text='<%#Bind("ServiceNo") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               
               <asp:TemplateField HeaderText="From">
                   <ItemTemplate>
                       <asp:Label ID="from" runat="server" Text='<%#Bind("[From]") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>

           
               <asp:TemplateField HeaderText="To">
                   <ItemTemplate>
                       <asp:Label ID="to" runat="server" Text='<%#Bind("[To]") %>'></asp:Label>
                   </ItemTemplate>
                 </asp:TemplateField>
                
               
               <asp:TemplateField HeaderText="Departure">
                   <ItemTemplate>
                       <asp:Label ID="dept" runat="server" Text='<%#Bind("Departure") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>


                <asp:TemplateField HeaderText="Arrival">
                   <ItemTemplate>
                       <asp:Label ID="arr" runat="server" Text='<%#Bind("Arrival") %>'></asp:Label>
                        
                   </ItemTemplate>
               </asp:TemplateField>


               <asp:TemplateField HeaderText="Type">
                   <ItemTemplate>
                       <asp:Label ID="type" runat="server" Text='<%#Bind("type") %>'></asp:Label>      
                 
                       </ItemTemplate>
               </asp:TemplateField>
               

                <asp:TemplateField HeaderText="Available">
                   <ItemTemplate>
                       <asp:Label ID="fare" runat="server" Text='<%#Bind("Fare") %>'></asp:Label>      
                 </ItemTemplate>
               </asp:TemplateField>

               
               <asp:TemplateField HeaderText="Booking">
                   <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# string.Format("~/user/buses/bus_booking.aspx?From={0}&To={1}&ServiceNo={2}&Departure={3}&Arrival={4}&Type={5}",
HttpUtility.UrlEncode(Eval("From").ToString()), HttpUtility.UrlEncode(Eval("To").ToString()), HttpUtility.UrlEncode(Eval("ServiceNo").ToString()), HttpUtility.UrlEncode(Eval("Departure").ToString()), HttpUtility.UrlEncode(Eval("Arrival").ToString()), HttpUtility.UrlEncode(Eval("Type").ToString()))%>'  >Book</asp:HyperLink>
                 </ItemTemplate>
               </asp:TemplateField>

           </columns>
       </asp:GridView>
    

        &nbsp;<br />
&nbsp;

    </div>

    
    </asp:content>

