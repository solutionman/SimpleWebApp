<html>
<head>
    <title>The result</title>
</head>
<body>

    The result of calculations:
    <%
        String firstNumber = request.getParameter("FirstNumber");
        String secondNumber = request.getParameter("SecondNumber");
        int firstNumberInt = Integer.parseInt(firstNumber);
        int secondNuberInt = Integer.parseInt(secondNumber);
        int result = firstNumberInt + secondNuberInt;
        out.println(result);
    %>


</body>
</html>