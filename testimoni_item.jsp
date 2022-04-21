<div class="card testimoni-card">
  <div class="card-body">
    <h5 class="card-title">
        <%
            String index = request.getParameterValues("index")[0];
            out.println(index);
        %>
    </h5>
    <h5 class="card-subtitle">Email</h5>
    <p class="card-text">
        <%
            String email = request.getParameterValues("email")[0].replace("Email: ", "");
            out.println(email);
        %>
    </p>
    <h5 class="card-subtitle">Testimoni</h5>
    <p class="card-text testimoni-text">
        <%
            String testimoni = request.getParameterValues("testimoni")[0].replace("Testimoni: ", "");
            out.println(testimoni);
        %>
    </p>
  </div>
</div>

