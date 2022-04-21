<%@ include file="global_function.jsp" %>
<div class="container order-item" >
  <div class="row justify-content-center justify-content-sm-end">
    <div class="col-12 col-sm-6 item-title">Kode</div>
    <div class="col-12 col-sm-6 d-flex d-sm-block">
        <%
            String id = request.getParameterValues("id")[0];
            out.println("<input type=\"text\" class=\"form-control\" name=\"orderIndex\" value=\"M00"+id+"\" readonly/>");
        %>
    </div>
  </div>
  <div class="row justify-content-center justify-content-sm-end">
    <div class="col-12 col-sm-6 item-title">Nama Makanan</div>
    <div class="col-12 col-sm-6 d-flex d-sm-block">
        <%
            String name = request.getParameterValues("nama")[0];
            out.println("<input type=\"text\" class=\"form-control\" name=\"orderName\" value=\""+name+"\" readonly/>");
        %>
    </div>
  </div>
  <div class="row justify-content-center justify-content-sm-end">
    <div class="col-12 col-sm-6 item-title">Jumlah</div>
    <div class="col-12 col-sm-6 d-flex d-sm-block">
        <%
            String jumlah = request.getParameterValues("total")[0];
            out.println("<input type=\"text\" class=\"form-control\" name=\"orderJumlah\" value=\""+jumlah+"\" readonly/>");
        %>
    </div>
  </div>
  <div class="row justify-content-center justify-content-sm-end">
    <div class="col-12 col-sm-6 item-title">Harga Porsi</div>
    <div class="col-12 col-sm-6 d-flex d-sm-block">
        <%
            String price = request.getParameterValues("price")[0];
            out.println("<input type=\"text\" class=\"form-control\" name=\"orderPrice\"  value=\"Rp. "+changetoRupiahForm(price)+"\" readonly/>");
        %>
    </div>
  </div>
  <div class="row justify-content-center justify-content-sm-end">
    <div class="col-12 col-sm-6 item-title">Total</div>
    <div class="col-12 col-sm-6 d-flex d-sm-block">
        <%
            Integer total = Integer.parseInt(price) * Integer.parseInt(jumlah);
             out.println("<input type=\"text\" class=\"form-control\" name=\"orderTotal\" value=\"Rp. "+changetoRupiahForm(total.toString())+"\" readonly/>");
        %>
    </div>
  </div>
</div>
