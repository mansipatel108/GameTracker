<%@ Page Title="Game Tracker" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="GameTracker.Game" %>
<%--
File Name: Game.aspx
Author Name: Mansi Patel(200303640) & Shweta Chavda(200326347)
Website Name: http://aspnet-project1.azurewebsites.net/Default.aspx
Description: From this page user can create a tracker for their favourite game's team
 @date: June 8, 2016
 @version: 0.0.1  --%>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <section id="services" class="services">
        <div class="services">
            <div class="row text-center">
                <div class="col-lg-10 col-lg-offset-1">
                    <h1> Tracker...</h1>
                    <div class="row"> 
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="image">
                                    <img src="Assets/Images/baseball1.jpg" width="200" height="200" class="img-thumbnail" />
                                  </span>
                                 <h4>
                                    <strong>BaseBall</strong>
                                </h4>
                                <div>
                                  <a class="btn btn-info btn-group-lg" id="BaseBallButton" href="Login.aspx"><i class="fa fa-hand-pointer-o"></i> View</a>
                                </div>
                               </div>
                        </div>                    
                         <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="image">
                                    <img src="Assets/Images/basket.jpg" width="200" height="200" class="img-thumbnail" />                                        
                                  </span>
                                 <h4>
                                    <strong>BasketBall </strong>
                                </h4>
                                <div>
                                    <a class="btn btn-info btn-group-lg" id="BasketBallButton" href="Login.aspx"><i class="fa fa-hand-pointer-o"></i> View</a>
                                </div>
                                 </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                              <span class="image">
                                  <img src="Assets/Images/hockey1.jpg" width="200" height="200" class="img-thumbnail" />     
                                  </span>
                                <h4>
                                    <strong>Hockey</strong>
                                </h4>
                                <div>
                                   <a class="btn btn-info btn-group-lg" id="HockeyButton" href="Login.aspx"><i class="fa fa-hand-pointer-o"></i> View</a>
                                </div>
                              </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                            <span class="image">
                                <img src="Assets/Images/soccer1.jpg" width="200" height="200" class="img-thumbnail" />
                                  
                                  </span>
                                <h4>
                                    <strong>Soccer</strong>
                                </h4>
                                <div>
                                   <a class="btn btn-info btn-group-lg" id=SoccerButton" href="Login.aspx"><i class="fa fa-hand-pointer-o"></i> View</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>

    <br /><br /><br /><br /><br /><br />
</asp:Content>

