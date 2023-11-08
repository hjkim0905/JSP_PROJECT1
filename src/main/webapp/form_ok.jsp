<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String birthday = request.getParameter("birthday");
    String address1 = request.getParameter("address1");
    String address2 = request.getParameter("address2");
    String email = request.getParameter("email");
    String telecom = request.getParameter("telecom");
    String phoneNumber = request.getParameter("phoneNumber");
    String[] isCheckValues = request.getParameterValues("isCheck");
    String introduce = request.getParameter("introduce");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>입력하신 항목은 다음과 같습니다.</h1>

Name : <%=name%> <br />
Gender : <%=gender%> <br />
Birthday : <%=birthday%> <br />
Address : <%=address1%> <br />
Detailed Address : <%=address2%> <br />
Email : <%=email%> <br />
Telecom : <%=telecom%> <br />
Phone Number : <%=phoneNumber%> <br />
isCheck : <%
    if (isCheckValues != null) {
        for (String language : isCheckValues) {
%>
            <%=language%>
<%
        }
    }
%> <br />
introduce : <%=introduce%> <br />
</body>
</html>
