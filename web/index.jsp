<%--
  Simple WebApp for testing and learning
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Simple Web Application</title>
  </head>
  <body>
  <div>
    <%
      for(int i = 0; i <=5; ++i){
        out.println("Simple WebApp <br/>");
      }
    %>
  </div>
  <div>
    <p>Let's make some calculations</p>
    <form action="SimpleCalculations.jsp">

        First Number: <input type="text" name="FirstNumber">

        Second Nunber: <input type="text" name="SecondNumber">

        <br/><br/>

        <input type="submit" value="Submit">

    </form>
    <p>Current time on server: <%= new java.util.Date()  %></p>
  </div>

  </body>
</html>
