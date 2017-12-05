<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/master/railways.master" CodeFile="farecard2.aspx.cs" Inherits="farecard2" %>


<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
        <link href="https://www.w3schools.com/w3css/4/w3.css" rel="stylesheet" />
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="App_Data/css/w3.css" rel="stylesheet" runat="server"/>
    <link href="fonts/fonts.min.css" rel="stylesheet" runat="server"/> 
</asp:Content>
<asp:Content ID="bodypart" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="w3-container w3-brown">
        <header>
            <h2>Fare Card</h2>
        </header>
    </div>
    <div class="w3-container" style=" float:left; width:28%; " >
   <br />
        <br />
      <asp:Label ID="Label1" runat="server"  CssClass="w3-text-brown w3-large"><b>From</b></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:DropDownList ID="From" runat="server" Height="41px" Width="244px"  >
            <asp:ListItem>Secunderabad</asp:ListItem>
            <asp:ListItem>Visakhapatnam</asp:ListItem>
            <asp:ListItem>Ongole</asp:ListItem>
            <asp:ListItem>Nellore</asp:ListItem>
            <asp:ListItem>Vijayawada</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" CssClass="w3-text-brown w3-large"><b>To</b></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="To" runat="server" Height="41px" Width="244px" >
            <asp:ListItem>Secunderabad</asp:ListItem>
            <asp:ListItem>Visakhapatnam</asp:ListItem>
            <asp:ListItem>Ongole</asp:ListItem>
            <asp:ListItem>Nellore</asp:ListItem>
            <asp:ListItem>Vijayawada</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" CssClass="w3-text-brown w3-large"><b>TrainNo</b></asp:Label>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TrainNo" runat="server" Height="41px" Width="244px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" CssClass="w3-text-brown w3-large"><b>Quota</b></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="quota" runat="server" Height="41px" Width="244px">
            <asp:ListItem>General</asp:ListItem>
            <asp:ListItem>Tatkal</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="w3-button w3-green" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="w3-button w3-red" OnClick="Button2_Click" />
</div>
    <br />
    <br />
     <div class="listpart " style="margin-left:27%;">
        <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" CellPadding="14"  AllowPaging="true" > 
             	<AlternatingRowStyle BackColor="white" /> 
           <columns>
            
                <asp:TemplateField HeaderText="Train No ">  
                   <ItemTemplate>
                       <asp:Label ID="TrainNo" runat="server" Text='<%#Bind("[Train No]") %>'></asp:Label>
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
                
               
               <asp:TemplateField HeaderText="Class">
                   <ItemTemplate>
                       <asp:Label ID="dept" runat="server" Text='<%#Bind("Class") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>


                <asp:TemplateField HeaderText="quota">
                   <ItemTemplate>
                       <asp:Label ID="arr" runat="server" Text='<%#Bind("Quota") %>'></asp:Label>
                        
                   </ItemTemplate>
               </asp:TemplateField>


               <asp:TemplateField HeaderText="Type">
                   <ItemTemplate>
                       <asp:Label ID="type" runat="server" Text='<%#Bind("Type") %>'></asp:Label>      
                 
                       </ItemTemplate>
               </asp:TemplateField>

               
               <asp:TemplateField HeaderText=" Total Fare">
                   <ItemTemplate>
                       <asp:Label ID="Fare" runat="server" Text='<%#Bind("[Total Fare]") %>'></asp:Label>      
                 
                       </ItemTemplate>
               </asp:TemplateField>
               

             
               
               

           </columns>
            
       </asp:GridView>
    </div>

</asp:Content>
