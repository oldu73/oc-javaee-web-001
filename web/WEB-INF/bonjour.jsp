<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bonjour</title>
</head>
<body>

    <jsp:include page="menu.jsp"></jsp:include>

    <p>Test caractère bizarre: à, et é ben ça ne va pas mieux?? Si! Si si je te dis, mais ça va pas  la tête</p>

    <p>
        <%
            String variable = (String) request.getAttribute("variable");
            response.getWriter().println(variable);
        %>
    </p>

    <p>
        <%
            String name = (String) request.getAttribute("name");
            response.getWriter().println("nom : " + name);
        %>
    </p>

    <p>
        <%
            String age = (String) request.getAttribute("age");
            response.getWriter().println("age : " + age);
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

<%--    Expression language--%>

    <p>Calcul1 ${10%3}</p>
    <p>nom: ${name}</p>
    <p>nom: ${age}</p>
    <p>${age < 44 ? 'plus petit' : 'plus grand'}</p>

    <p>nom1 ${noms[0]}</p>
    <p>nom2 ${noms[1]}</p>
    <p>nom3 ${noms[2]}</p>

    <p>auteur.prenom : ${auteur.prenom}</p>
    <p>auteur.nom : ${auteur.nom}</p>
    <p>auteur statut : ${auteur.actif ? 'actif' : 'inactif'}</p>

    <p></p>

</body>
</html>
