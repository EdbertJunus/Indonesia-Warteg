<%@ include file="global_function.jsp" %>
<%@ include file="header.jsp" %>
    <section class="content menu-detail">
        <h2>Kasir</h2>
        <div action="menu_detail.jsp" class="row">
            <div class="col-lg-6 item-list">
                <%
                    String foodName[] = request.getParameterValues("foodName");
                    String foodTotal[] = request.getParameterValues("foodTotal");
                    String foodPrice[] = request.getParameterValues("foodPrice");

                    ArrayList<Integer> foodIndex = new ArrayList<Integer>();  
                    ArrayList<String> foodOrderPrice = new ArrayList<String>();
                    
                    //Setting Index of Data
                    for(int i=0; i<foodTotal.length; i++){
                        if(!foodTotal[i].equals("")){
                            foodIndex.add(i);
                        }
                    }
                    
                    //Setting order food price according to Index
                    for(int i=0; i<foodIndex.size(); i++){
                        foodOrderPrice.add(foodPrice[foodIndex.get(i)]);
                    }
                    
                    String nama, price, total;
                    Integer id, grandTotal = 0;
                    for(int i=0; i<foodName.length; i++){
                        nama = foodName[i];
                        id = foodIndex.get(i) + 1;
                        price = foodOrderPrice.get(i);
                        total = foodTotal[id-1];
                        grandTotal = grandTotal + (Integer.parseInt(price) * Integer.parseInt(total));
                        if(Integer.parseInt(total) == 0) continue;
                %>
                    <jsp:include page="order_item.jsp">
                        <jsp:param name="nama" value="<%= nama%>" />
                        <jsp:param name="id" value="<%= id%>" />
                        <jsp:param name="price" value="<%= price%>" />
                        <jsp:param name="total" value="<%= total%>" />
                    </jsp:include>
                <%
                    }
                %>
            </div>
            <div class="col-lg-6 item-price">
                <div class="container">
                    <div class="row">
                        <label for="grandTotal" class="item-title">GrandTotal</label>
                        <%
                            out.println("<input type=\"text\" class=\"form-control\" name=\"grandTotal\" id=\"grandTotal\" value=\"Rp. "+changetoRupiahForm(grandTotal.toString())+"\" readonly />");
                        %>
                    </div>  
                    <div class="row">
                        <label for="paymentAmount" class="item-title">Cash</label>
                        <input type="text" name="paymentAmount" class="form-control" id="paymentAmount" placeholder="Input amount to pay" />
                        <p class="error-message" id="errorCash"></p>
                    </div>
                    <div class="d-flex justify-content-center justify-content-sm-end calculate-btn">
                        <button type="button" class="btn btn-primary" id="calculate">Calculate</button>
                    </div>    
                    <div class="row">
                        <label for="changeAmount" class=" item-title">Change</label>
                        <input type="text" name="changeAmount" class="form-control" id="changeAmount" readonly />
                    </div>
                </div>
            </div>
        </div>
        <div class="d-flex flex-column justify-content-center align-items-center download-btn">
            <button class="btn btn-primary w-25" id="download">Download as txt file</button>
        </div>
    </section>
<%@ include file="footer.html" %>