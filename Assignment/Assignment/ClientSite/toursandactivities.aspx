<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSite/mainLayout.Master" AutoEventWireup="true" CodeBehind="toursandactivities.aspx.cs" Inherits="Assignment.ClientSite.toursandactivities" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p class="p2">Book Your<br />
            Tours & Activities</p>
        <div class="row">
            <div class="col-sm-3">
                <div class='row-cards'>
                    <div class="card" style="width: 18rem; height: 28rem;">
                        <img class="card-img-top" src="images/whale.JPG" height="200">
                        <div class="card-body">
                            <h5 class="card-title">Whale Watching</h5><br />
                            <p class="card-text">
                                West - 3 Hours<hr>
                                From 75$<hr>
                            </p>
                            <a class="btn btn-custom1" href="#" role="button">Book Now</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="card" style="width: 18rem; height: 28rem;">
                    <img class="card-img-top" src="images/dolphinswim.JPG" height="200">
                    <div class="card-body">
                        <h5 class="card-title">Swim with Dolphins</h5>
                        <br />
                        <p class="card-text">
                            West - Full day private trip<hr />
                            From 450$<hr />
                        </p>
                        <a class="btn btn-custom1" href="#" role="button">Book Now</a>
                    </div>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="card" style="width: 18rem; height: 28rem;">
                    <img class="card-img-top" src="images/seaplane.JPG" height="200">
                    <div class="card-body">
                        <h5 class="card-title">Sea plane</h5>
                        <br>
                        <p class="card-text">
                            North - Half day<hr />
                            From 300$<hr />
                        </p>
                        <a class="btn btn-custom1" href="#" role="button">Book Now</a>
                    </div>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="card" style="width: 18rem; height: 28rem;">
                    <img class="card-img-top" src="images/ileauxcerfs.JPG" height="200">
                    <div class="card-body">
                        <h5 class="card-title">Ile aux Cerfs - Private Boats</h5><br />
                        <p class="card-text">
                            East - Full day<hr />
                            From 55$<hr />
                        </p>
                        <a class="btn btn-custom1" href="#" role="button">Book Now</a>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
