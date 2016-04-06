<%--
  Created by IntelliJ IDEA.
  User: mpejcinovic
  Date: 6.4.2016.
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="java.util.*" %>
<html>

  <head>
    <title>
      Echo JSP
    </title>
  </head>

<body>
    <h1>
        Incoming HTTP Request
    </h1>

    <table border="0" cellpadding="3" cellspacing="0" width="100%">

    <%

        Enumeration eNames = request.getHeaderNames();

        while (eNames.hasMoreElements()) {

        String name = (String) eNames.nextElement();

        String value = normalize(request.getHeader(name));

         %>

        <tr>
            <td>
                <%= name %>
                    </td>
                        <td>
                            <%= value %>
                        </td>
                    </tr>

                    <%

                    }

                    %>

    </table>

</body>

</html>

<%!
    private String normalize(String value) {
    StringBuffer line = new StringBuffer();

    for (int i = 0; i < value.length(); i++) {

    char c = value.charAt(i);

    line.append(c);

    if (c == ';') {

    line.append("<br>");

    }

    }

    return line.toString();

    }
%>