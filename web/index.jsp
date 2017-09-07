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
        <br/>+<br/>
        Second Nunber: <input type="text" name="SecondNumber">

        <br/><br/>

        <input type="submit" value="Calculate">

    </form>
    <p>Current time on server: <%= new java.util.Date()  %></p>
  </div>
  <div>
      <p>
          <%
          String favProgLang = "Java";
          Cookie[] storedCookies = request.getCookies();
          if(storedCookies != null){
              for(Cookie temp : storedCookies){
                  if("onSite.favoriteProgLanguage".equals(temp.getName())){
                      favProgLang = temp.getValue();
                      break;
                  }
              }
          }
          %>
          Your favorite programming language is <%= favProgLang %>.
          <br/>
        <form action="personalize-favorite-language.jsp">
          Choose your favorite programming language:
          <select name="favLanguage">
              <option>Java</option>
              <option>PHP</option>
              <option>C#</option>
              <option>C++</option>
              <option>C</option>
              <option>Ruby</option>
          </select>
            <br/><br/>
            <input type="submit" value="Submit">
        </form>


      </p>
  </div>

  </body>
</html>
