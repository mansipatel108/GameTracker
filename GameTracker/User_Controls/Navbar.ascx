<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navbar.ascx.cs" Inherits="GameTracker.User_Controls.Navbar" %>
<%--
File Name: Navbar.ascx
Author Name: Mansi Patel(200303640) & Shweta Chavda(200326347)
Website Name: http://aspnet-project1.azurewebsites.net/Default.aspx
Description:  This page controls the Navbar for the website
  @date: June 8, 2016
  @version: 0.0.1  --%>

 <nav class="navbar navbar-inverse">
  <div class="container-fluid ">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
       <a class="navbar-brand" href="Default.aspx"><i class="fa fa-gamepad fa-lg"></i> GameTracker</a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">    
      <ul class="nav navbar-nav navbar-right">
                <li id="home" runat="server"><a href="Default.aspx"><i class="fa fa-home fa-lg"></i> Home</a></li>
                <li id="about" runat="server"><a href="About.aspx"><i class="fa fa-info-circle"></i> About Us</a></li>
                 <li id="game" runat="server"><a href="Game.aspx"><i class="fa fa-puzzle-piece"></i> Game Tracker</a></li>
                <li id="login" runat="server"><a href="Login.aspx"><i class="fa fa-sign-in fa-lg"></i> Login</a></li>
                <li id="contact" runat="server"><a href="Contact.aspx"><i class="fa fa-phone fa-lg"></i> Contact</a></li>
                
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
