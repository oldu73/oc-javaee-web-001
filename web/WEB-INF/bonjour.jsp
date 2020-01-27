<%@ page import="java.io.PrintWriter" %>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

    <p>Test caractère bizarre: à, et é ben ça ne va pas mieux?? Si! Si si je te dis, mais ça va pas  la tête</p>

    <p>
        <%
            String variable = (String) request.getAttribute("variable");
            response.getWriter().println(variable);
        %>
    </p>

    <p>
        <%
            for (int i = 0; i < 20; i++) {
                response.getWriter().println("Une nouvelle ligne : " + i + "</br>");
            }
            response.getWriter().println("</br>");
        %>
    </p>

    <p>
        <%
            String heure = (String) request.getAttribute("heure");
            if ("jour".equals(heure)) {
                response.getWriter().println("Bonjour!</br>");
            }
            else {
                response.getWriter().println("Bonsoir!</br>");
            }
        %>
    </p>

</body>
</html>