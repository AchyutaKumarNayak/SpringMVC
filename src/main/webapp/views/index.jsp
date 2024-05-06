<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <style type="text/css">
   .error{
      color: red
    }
  </style>
</head>
<body>
    <h3>User Registration Form</h3>
    <form:form action="register" modelAttribute="user" method="POST">
      <table>
       <tr>
        <td>User Name:</td>
        <td>
          <form:input path="userName"/>
          <form:errors path="userName" cssClass="error"/>
          
        </td>
       </tr>
       <tr>
        <td>Password:</td>
        <td>
          <form:password path="userPwd"/>
          <form:errors path="userPwd" cssClass="error"/>
        </td>
       </tr>
        <tr>
        <td>Phone No:</td>
        <td>
          <form:input path="phnNo"/>
          <form:errors path="phnNo" cssClass="error"/>
        </td>
       </tr>
        <tr>
        <td>Email:</td>
        <td>
          <form:input path="userEmail"/>
          <form:errors path="userEmail" cssClass="error"/>
        </td>
       </tr>
        <tr>
        <td>Age:</td>
        <td>
          <form:input path="age"/>
          <form:errors path="age" cssClass="error"/>
        </td>
       </tr>
       <tr>
            <td><button type="submit">Save</button></td>
       </tr>
      </table>
    </form:form>

</body>
</html>