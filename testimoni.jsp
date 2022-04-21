<%@ include file="header.jsp" %>
<section class="content testimoni">
  <h2>Testimoni</h2>
  <div class="d-flex flex-column-reverse flex-sm-row justify-content-center">
    <div class="container-fluid testimoni-form-container">
      <form
        action="testimoni.jsp"
        method="GET"
        name="testimoniForm"
        id="testimoni-form"
        class="testimoni-form"
      >
        <div class="testimoni-item">
          <label for="emailTestimoni">Email</label>
          <input
            class="form-control"
            type="email"
            name="emailTestimoni"
            id="emailTestimoni"
          />
        </div>
        <div class="testimoni-item">
          <label for="testimoniText">Testimoni</label>
          <textarea
            class="form-control"
            name="testimoniText"
            id="testimoniText"
            cols="30"
            rows="10"
          ></textarea>
        </div>
          <p class="error-message" id="errorTestimoni"></p>
        <button class="btn btn-success btn-testimoni" id="submitTestimoni" type="submit" value="Testimoni">Submit</button>
      </form>
    </div>
    <div class="container-fluid testimoni-item-container">
        <%
            String savePath =  application.getRealPath("/") + "database\\" ;
            Integer numberOfItem = 0;
            ArrayList<String> newContentTrim = new ArrayList<String>();
            String line, content = "";
            File savePathFile = new File(savePath + "testimoni.txt");

            if(savePathFile.isFile()){
              BufferedReader file = new BufferedReader(new FileReader(savePath + "testimoni.txt"));
              
              while( (line = file.readLine()) != null){ 
                  content += line + '\n';
              }
            }

            if(savePathFile.isFile() == false || content.length() == 0){
              %>
                <p>No Testimonies Currently</p>
              <%
            }else{
              String newContent[] = content.split("[\n]");

              for(int i=0; i<newContent.length; i++){
                  if((newContent[i].replaceAll("[\r]","").length() == 0) == false){
                      newContentTrim.add(newContent[i]);
                  }   
              }
              
              for(int i=0; i<newContentTrim.size(); i++){
                  
                  if((i+1) %2 == 0){
                    numberOfItem++;
                    %>
                      <jsp:include page="testimoni_item.jsp">
                        <jsp:param name="index" value="<%= numberOfItem%>"/>
                        <jsp:param name="email" value="<%= newContentTrim.get(i-1)%>"/>
                        <jsp:param name="testimoni" value="<%= newContentTrim.get(i)%>"/>
                      </jsp:include>
                    <%
                  }
              }
            }
            
            String inputEmail[] = request.getParameterValues("emailTestimoni");
            String inputTestimoni[] = request.getParameterValues("testimoniText");
            //If Button is Clicked
            if(inputEmail != null && inputTestimoni != null){
                String email = inputEmail[0];
                String testimoni = inputTestimoni[0];
                
                %>
                  <jsp:include page="testimoni_item.jsp">
                    <jsp:param name="index" value="<%= numberOfItem+1%>"/>
                    <jsp:param name="email" value="<%= email%>"/>
                    <jsp:param name="testimoni" value="<%= testimoni%>"/>
                  </jsp:include>
                <%

                File testimoniFile = new File(savePath + "testimoni.txt");
                boolean fileCreated = testimoniFile.createNewFile();
                
                Writer writer = new BufferedWriter(new FileWriter(testimoniFile));
                writer.write(content + "\n\nEmail: " + email + "\nTestimoni: " +testimoni);
                writer.flush();
                writer.close();
                response.sendRedirect("testimoni.jsp");
            }
            
        %>
    </div>
  </div>
</section>
<%@ include file="footer.html" %>
