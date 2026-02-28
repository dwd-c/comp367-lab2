<html>
<body>
<h2>Welcome to COMP367!</h2>
<%
    java.time.LocalTime now = java.time.LocalTime.now();
    String greeting;
    if (now.getHour() < 12) {
        greeting = "Good morning, Christian, Welcome to COMP367";
    } else {
        greeting = "Good afternoon, Christian, Welcome to COMP367";
    }
%>
<h1><%= greeting %></h1>
</body>
</html>
