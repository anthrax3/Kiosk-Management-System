<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/master/railways.master" CodeFile="seat_avail2.aspx.cs" Inherits="user_railways_seat_avail2" %>
<asp:Content ID="myContent" ContentPlaceHolderID="head" runat="server">
    <title> TRAIN BOOKING</title>
    <link rel="stylesheet" type="text/css" href="../../css/styles.css">
    <style type="text/css">
        .auto-style1 {
            padding: 0.01em 16px;
            float: left;
            width: 28%;
        }
    </style>
</asp:Content>


<asp:Content ID="bodypart" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="w3-container w3-brown">
        <header>
            <h2>Seat Availability</h2>
        </header>
    </div>
   <div class="auto-style1" >
        <br />
        <br />
       <asp:Label ID="Label1" runat="server" CssClass="w3-text-brown w3-large"><b>From</b></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="from" runat="server" Height="41px" Width="244px">
           <asp:ListItem>From</asp:ListItem>
           <asp:ListItem>Secunderabad</asp:ListItem>
            <asp:ListItem>Visakhapatnam</asp:ListItem>
            <asp:ListItem>Vijayawada</asp:ListItem>
            <asp:ListItem>Ongole</asp:ListItem>
            <asp:ListItem>Nellore</asp:ListItem>
           
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
      <asp:Label ID="Label2" runat="server" CssClass="w3-text-brown w3-large"><b>To</b></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:DropDownList ID="to" runat="server" Height="41px" Width="244px" >
          <asp:ListItem>To</asp:ListItem>  
          <asp:ListItem>Secunderabad</asp:ListItem>
            <asp:ListItem>Visakhapatnam</asp:ListItem>
            <asp:ListItem>Vijayawada</asp:ListItem>
            <asp:ListItem>Ongole</asp:ListItem>
            <asp:ListItem>Nellore</asp:ListItem>
                 </asp:DropDownList>
      <br />
      <br />
        <br />
      <asp:Label ID="Label3" runat="server" CssClass="w3-text-brown w3-large"><b>Doj</b></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"  onclick="showDate();"    TextMode="Date" Height="41px" Width="244px" ></asp:TextBox>
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="&lt;b&gt;Quota&lt;/b&gt;" CssClass="w3-text-brown w3-large"></asp:Label>
        &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="41px" Width="244px">
            <asp:ListItem>General</asp:ListItem>
            <asp:ListItem>Tatkal</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="w3-button w3-green" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button2" runat="server" CssClass="w3-button w3-red" Text="Cancel" />
     </div>  
    <br />
    <br />
    <div class="listpart">
        <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="10"  AllowPaging="true" OnSelectedIndexChanged="grid1_SelectedIndexChanged" > 
             	<AlternatingRowStyle BackColor="White" /> 
           <columns>
            
                <asp:TemplateField HeaderText="TrainNo">  
                   <ItemTemplate>
                       <asp:Label ID="TrainNo" runat="server" Text='<%#Bind("TrainNo") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
                
               <asp:TemplateField HeaderText="Doj">
                   <ItemTemplate>
                       <asp:Label ID="arr" runat="server" Text='<%#Bind("Doj") %>'></asp:Label>
                        
                   </ItemTemplate>
               </asp:TemplateField>
               
               <asp:TemplateField HeaderText="From">
                   <ItemTemplate>
                       <asp:Label ID="from" runat="server" Text='<%#Bind("[from]") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>

           
               <asp:TemplateField HeaderText="To">
                   <ItemTemplate>
                       <asp:Label ID="to" runat="server" Text='<%#Bind("[To]") %>'></asp:Label>
                   </ItemTemplate>
                 </asp:TemplateField>
                
               
               <asp:TemplateField HeaderText="Dept">
                   <ItemTemplate>
                       <asp:Label ID="dept" runat="server" Text='<%#Bind("Dept") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>


                <asp:TemplateField HeaderText="Arri">
                   <ItemTemplate>
                       <asp:Label ID="arr" runat="server" Text='<%#Bind("Arri") %>'></asp:Label>
                        
                   </ItemTemplate>
               </asp:TemplateField>


               <asp:TemplateField HeaderText="Type">
                   <ItemTemplate>
                       <asp:Label ID="type" runat="server" Text='<%#Bind("Type") %>'></asp:Label>      
                 
                       </ItemTemplate>
               </asp:TemplateField>
               

                <asp:TemplateField HeaderText="SL  3A  2A  1A  2S  CC ">
                   <ItemTemplate>
                       <asp:Label ID="sl" runat="server" Text='<%#Bind("avail_SL") %>'></asp:Label>   
                       <asp:Label ID="a3" runat="server" Text='<%#Bind("avail_3A") %>'></asp:Label>
                       <asp:Label ID="a2" runat="server" Text='<%#Bind("avail_2A") %>'></asp:Label>
                       <asp:Label ID="a1" runat="server" Text='<%#Bind("avail_1A") %>'></asp:Label>
                       <asp:Label ID="cc" runat="server" Text='<%#Bind("avail_CC") %>'></asp:Label>
                       <asp:Label ID="s2" runat="server" Text='<%#Bind("avail_2S") %>'></asp:Label>
                      
                 </ItemTemplate>
               </asp:TemplateField>

               <asp:TemplateField HeaderText="Booking">
                   <ItemTemplate>
                       
                     
                       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# string.Format("~/user/railways/tickets_book.aspx?From={0}&To={1}&TrainNo={2}&Dept={3}&Arri={4}&Type={5}",
HttpUtility.UrlEncode(Eval("From").ToString()), HttpUtility.UrlEncode(Eval("To").ToString()), HttpUtility.UrlEncode(Eval("TrainNo").ToString()), HttpUtility.UrlEncode(Eval("Dept").ToString()), HttpUtility.UrlEncode(Eval("Arri").ToString()), HttpUtility.UrlEncode(Eval("Type").ToString()))%>'  >Book</asp:HyperLink>
                 </ItemTemplate>
               </asp:TemplateField>
               

           </columns>
       </asp:GridView>
    

        &nbsp;<br />
&nbsp;

    </div>


      
    
</asp:content>
