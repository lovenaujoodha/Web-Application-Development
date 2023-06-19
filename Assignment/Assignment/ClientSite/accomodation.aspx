<%@ Page Title="" Language="C#" MasterPageFile="~/ClientSite/mainLayout.Master" AutoEventWireup="true" CodeBehind="accomodation.aspx.cs" Inherits="Assignment.ClientSite.accomodation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

    <asp:DataList ID="dtListProducts" runat="server" CellPadding="4" ForeColor="#333333" RepeatColumns="2">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <ItemTemplate>
            <table style="width: 220px;" cellspacing="2" cellpadding="2">
                <tr>
                    <td><b>Product Name:</b> <%#Eval("Name")%></td>
                </tr>
                <tr>
                    <td><b>Description:</b> <%#Eval("Description")%></td>
                </tr>
                                <tr>
                    <td><b>Normal Price:</b> <%#Eval("NormalPrice")%></td>
                </tr>
                <tr>
                    <td>
                        <img src="../<%#Eval("ImageURL")%>" /></td>
                </tr>
                <tr>
                    <td>
                         <asp:HyperLink ID="lnkAddToCart" runat="server" NavigateUrl='<%# Eval("id") %>' Text='Add to cart' />
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="lnkBuyNow" runat="server" NavigateUrl='<%# Eval("id") %>' Text='Buy Now' />

                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
</asp:Content>
