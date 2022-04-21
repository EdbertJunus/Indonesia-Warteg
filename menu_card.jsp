<div class="col-xl-3 col d-flex justify-content-center">
  <div class="card" style="width: 18rem">
    <%
      String foodImage = request.getParameterValues("foodImage")[0];
    %>
    <img class="card-img-top" src="assets/<%= foodImage%>" alt="Card image cap" />
    <div class="card-body">
      <h5 class="card-title food-name">
      <% 
        String foodName = request.getParameterValues("foodName")[0];
        String foodId = foodName.replaceAll("\\s", "");

        out.println("<input type=\"checkbox\" name=\"foodName\" id="+foodId+" value=\""+foodName+"\"/>");
        out.println("<label for="+foodId+">"+foodName+"</label>");
      %>
      </h5>
      <p class="card-text price">Rp.${param.foodPrice}/Porsi</p>
      <%
        String price = request.getParameterValues("foodPrice")[0].replace(".","");
        
        out.println("<input type=\"hidden\" name=\"foodPrice\" id=\""+foodId+"Price\" value="+price+">");
        out.println("<input type=\"number\" class=\"form-control\" name=\"foodTotal\" id=\"numberOf"+foodId+"\" min=\"1\" max=\"999\" placeholder=\"Jumlah\">");
      %>
    </div>
  </div>
</div>
