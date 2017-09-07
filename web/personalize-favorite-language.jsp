<html>
<head>
    <title>Confirmation</title>
    <%
        String favProgLang = request.getParameter("favLanguage");

        Cookie storedCookies = new Cookie("onSite.favoriteProgLanguage", favProgLang);

        storedCookies.setMaxAge(60*60*24*365);  // 1 year

        response.addCookie(storedCookies);
    %>
</head>
<body>
    <div>
        Your favorite programming language is set to ${param.favLanguage}

        <br/>

        <a href="index.jsp">Back to main page</a>
    </div>

</body>
</html>