<%@ include file="header.jsp" %>
    <section class="content menu">
    <h2>Daftar Menu</h2>
    <form action="menu_detail.jsp" method="GET" name="menuForm" id="menu-form" class="containter-fluid">
        <div class="row">
            <jsp:include page="menu_card.jsp">
                <jsp:param name="foodName" value="Sate Ayam"/>
                <jsp:param name="foodPrice" value="50.000"/>
                <jsp:param name="foodImage" value="sateayam.jpg"/>
            </jsp:include>
            <jsp:include page="menu_card.jsp">
                <jsp:param name="foodName" value="Rendang"/>
                <jsp:param name="foodPrice" value="60.000"/>
                <jsp:param name="foodImage" value="rendang.jpeg"/>
            </jsp:include>
            <jsp:include page="menu_card.jsp">
                <jsp:param name="foodName" value="Nasi Goreng"/>
                <jsp:param name="foodPrice" value="25.000"/>
                <jsp:param name="foodImage" value="nasigoreng.jpg"/>
            </jsp:include>
            <jsp:include page="menu_card.jsp">
                <jsp:param name="foodName" value="Nasi Padang"/>
                <jsp:param name="foodPrice" value="35.000"/>
                <jsp:param name="foodImage" value="nasipadang.jpeg"/>
            </jsp:include>
            <jsp:include page="menu_card.jsp">
                <jsp:param name="foodName" value="Telur Dadar"/>
                <jsp:param name="foodPrice" value="5.000"/>
                <jsp:param name="foodImage" value="telurdadar.jpg"/>
            </jsp:include>
             <jsp:include page="menu_card.jsp">
                <jsp:param name="foodName" value="Tempe Bacem"/>
                <jsp:param name="foodPrice" value="5.000"/>
                <jsp:param name="foodImage" value="tempebacem.jpg"/>
            </jsp:include>
            <jsp:include page="menu_card.jsp">
                <jsp:param name="foodName" value="Perkedel Jagung"/>
                <jsp:param name="foodPrice" value="5.000"/>
                <jsp:param name="foodImage" value="perkedeljagung.jpg"/>
            </jsp:include>
            <jsp:include page="menu_card.jsp">
                <jsp:param name="foodName" value="Ayam Rendang"/>
                <jsp:param name="foodPrice" value="15.000"/>
                <jsp:param name="foodImage" value="rendangayam.jpg"/>
            </jsp:include>
            <jsp:include page="menu_card.jsp">
                <jsp:param name="foodName" value="Sambal Belacan"/>
                <jsp:param name="foodPrice" value="5.000"/>
                <jsp:param name="foodImage" value="sambalbelacan.jpg"/>
            </jsp:include>
            <jsp:include page="menu_card.jsp">
                <jsp:param name="foodName" value="Ikan Asam Manis"/>
                <jsp:param name="foodPrice" value="15.000"/>
                <jsp:param name="foodImage" value="ikanasammanis.jpg"/>
            </jsp:include>
            <jsp:include page="menu_card.jsp">
                <jsp:param name="foodName" value="Sayur Bayam"/>
                <jsp:param name="foodPrice" value="5.000"/>
                <jsp:param name="foodImage" value="sayurbayam.jpg"/>
            </jsp:include>
            <jsp:include page="menu_card.jsp">
                <jsp:param name="foodName" value="Gado-gado"/>
                <jsp:param name="foodPrice" value="10.000"/>
                <jsp:param name="foodImage" value="gadogado.jpg"/>
            </jsp:include>
        </div>
        <button class="btn btn-success btn-pesan" id="order" type="submit" value="Pesan">Pesan</button>
    </form>
    </section>
<%@ include file="footer.html" %>
