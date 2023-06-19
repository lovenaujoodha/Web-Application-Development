<%@ Page Title="" Language="C#" MasterPageFile="~/GuestSite/mainLayout.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Assignment.GuestSite.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/StyleSheet.css" rel="stylesheet" type="text/CSS" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <video height="705" autoplay muted loop plays-inline="" style="position: relative; right: 0; top: 0; min-width:100%; z-index: -100; object-fit: cover;">
      <source src="videos/mauritius1.mp4" type="video/mp4"> </video>
  <a href="toursandactivities.aspx" class="btn buttom-left">EXPLORE</a>
  <a href="#" class="btn buttom-centered">INSPIRE</a>
  <a href="accomodation.aspx" class="btn buttom-right">EXPERRIENCE</a><br /><br /><br />

    <section>
        <p class="p1">your destination</p>
        <p class="p2">
            Book Your<br />
            Accomodation
        </p>
        <div class="row">
            <div class="col-sm-3">
                <div class='row-cards'>
                    <div class="card" style="width: 18rem; height: 28rem;">
                        <img class="card-img-top" src="images/hotel1.jpg" height="200">
                        <div class="card-body">
                            <h5 class="card-title">Mauricia Beachcomber & Spa</h5>
                            <p class="card-text">
                                North<hr>
                                From 75$<hr>
                            </p>
                            <a class="btn btn-custom1" href="#" role="button">Book Now</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="card" style="width: 18rem; height: 28rem;">
                    <img class="card-img-top" src="images/hotel3.jpg" height="200">
                    <div class="card-body">
                        <h5 class="card-title">Sugar Beach Mauritius</h5>
                        <br />
                        <p class="card-text">
                            West<hr />
                            From 85$<hr />
                        </p>
                        <a class="btn btn-custom1" href="#" role="button">Book Now</a>
                    </div>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="card" style="width: 18rem; height: 28rem;">
                    <img class="card-img-top" src="images/hotel4.jpg" height="200">
                    <div class="card-body">
                        <h5 class="card-title">Tamassa Bel Ombre </h5>
                        <br>
                        <p class="card-text">
                            South<hr />
                            From 90$<hr />
                        </p>
                        <a class="btn btn-custom1" href="#" role="button">Book Now</a>
                    </div>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="card" style="width: 18rem; height: 28rem;">
                    <img class="card-img-top" src="images/hotel5.jpeg" height="200">
                    <div class="card-body">
                        <h5 class="card-title">Sankhara Private Beach Luxury Villas</h5>
                        <p class="card-text">
                            East<hr />
                            From 55$<hr />
                        </p>
                        <a class="btn btn-custom1" href="#" role="button">Book Now</a>
                    </div>
                </div>
            </div>
        </div>
        <center><a class="btn btn-custom2" href="accomodation.aspx">VIEW ALL</a></center><br /><br /><br />
    </section>

    <section>
        <p class="p1">experience</p>
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
        <center><a class="btn btn-custom2" href="toursandactivities.aspx">VIEW ALL</a></center><br /><br /><br />
    </section>
</asp:Content>
