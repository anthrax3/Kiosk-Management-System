<%@ Page Language="C#" MasterPageFile="~/master/homepage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="_Default" %>

<asp:Content ID="headpart" ContentPlaceHolderID="head" runat="server">
   <title><%:Page.Title%>REGISTRATION Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="App_Data/css/w3.css" rel="stylesheet" runat="server"/>
    <link href="fonts/fonts.min.css" rel="stylesheet" runat="server"/> 
    <link href="https://www.w3schools.com/w3css/4/w3.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            margin-bottom: 23;
        }
    </style>

</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <br />
  <div class="w3-container">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;<asp:Label ID="Label1" runat="server" Text="&lt;b&gt;Firstname&lt;/b&gt;" CssClass="w3-large w3-text-brown" style="font-size: large !important"></asp:Label>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="fn" runat="server" CssClass="auto-style1" Height="41px" Width="244px"></asp:TextBox>
            &nbsp; &nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" CssClass="w3-large w3-text-brown" style="font-size: large !important" Text="&lt;b&gt;Lastname&lt;/b&gt;"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ln" runat="server" CssClass="auto-style1" Height="41px" Width="244px"></asp:TextBox>
            &nbsp; &nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
&nbsp;
            <br />
&nbsp;<asp:Label ID="Label2" runat="server" Text="&lt;b&gt;Email ID&lt;/b&gt;" CssClass="w3-large w3-text-brown" style="font-size: large !important"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
            <asp:TextBox ID="email" runat="server" CssClass="auto-style1" Height="41px" Width="244px"></asp:TextBox>
       
          <asp:RequiredFieldValidator ID="emailReq"
              runat="server"
              ControlToValidate="email"
              Type="String"
              ErrorMessage="Username required!"
              Operator="DataTypeCheck"
              SetFocusOnError="True" Display="Dynamic" ForeColor="#FF3300" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="&lt;b&gt; Mobile&lt;/b&gt;" CssClass="w3-large w3-text-brown" style="font-size: large !important"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="mob" runat="server" CssClass="auto-style1" Height="41px" Width="244px"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
&nbsp; <asp:Label ID="Label4" runat="server" Text="&lt;b&gt; Password&lt;/b&gt;" CssClass="w3-large w3-text-brown" style="font-size: large !important"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="pass" runat="server" CssClass="auto-style1" Height="41px" Width="244px" TextMode="Password"></asp:TextBox>
       <asp:RequiredFieldValidator ID="passReq"
              runat="server"
              ControlToValidate="pass"
              Type="String"
              ErrorMessage="Password is required!"
              Operator="DataTypeCheck"
              SetFocusOnError="True" Display="Dynamic" ForeColor="#FF3300" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label5" runat="server" Text="&lt;b&gt;Confirm Password&lt;/b&gt;" CssClass="w3-large w3-text-brown" style="font-size: large !important"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="repass" runat="server" CssClass="auto-style1" Height="41px" Width="244px" TextMode="Password"></asp:TextBox>
      <asp:RequiredFieldValidator ID="repassReq"
              runat="server"
              ControlToValidate="repass"
              Type="String"
              ErrorMessage="Password is required!"
              Operator="DataTypeCheck"
              SetFocusOnError="True" Display="Dynamic" ForeColor="#FF3300" />

      <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
              runat="server"
              ControlToValidate="repass"
          ControlToCompare="pass"
             
              ErrorMessage="Password not matched!"
             
              SetFocusOnError="True" Display="Dynamic" ForeColor="#FF3300" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
            <br />
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="w3-button w3-green" OnClick="Button1_Click" Width="214px" />
            &nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel"  CssClass="w3-button w3-red" OnClick="Button2_Click" Width="214px"/>
            <br />
            <br />
            <br />
            <br />
            <br />
&nbsp; <br />
            <br />
            <br />
            <br />
&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />





        </div>
      



</asp:Content>
   
