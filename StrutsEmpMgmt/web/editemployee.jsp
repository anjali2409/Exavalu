
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page import="com.exavalu.empweb.entities.Role"%>
<%@page import="com.exavalu.empweb.entities.Department"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.exavalu.empweb.entities.Employee"%>--%>
<c:if test="${Loggedin==null}">
    <c:redirect url="landingPage.jsp"/>
</c:if>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Edit Employee Struts</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" >
        <link href="css/sign-in.css" rel="stylesheet">
        <link href="css/product.css" rel="stylesheet">
        <!-- Custom styles for this template -->
    </head>

    <body class="text-center d-block p-0">

        <jsp:include page="menu.jsp"></jsp:include>
            <main class="form-signin w-100 m-auto">



            <c:set var="emp" value="${EmployeeToEdit}"/>

            <form action="SaveEmployee" method="get">

                <img class="mb-4" src="https://www.mulesoft.com/sites/default/files/2020-12/Exavalu%20Logo.png" alt="" width="" height="75">
                <h2 class="h5 mb-3 fw-normal">Please edit employee data</h2>
                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput" name="employeeId" value="${emp.employeeId}">
                    <label for="floatingInput">Employee Id</label>
                </div>

                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput"  name="firstName" value="${emp.firstName}">
                    <label for="floatingInput">first Name</label>
                </div>
                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput"  name="lastName" value="${emp.lastName}">
                    <label for="floatingInput">Last Name</label>
                </div>
                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput"  name="address"value="${emp.address}">
                    <label for="floatingInput">Address</label>
                </div>
                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput"  name="gender"value="${emp.gender}">
                    <label for="floatingInput">Gender</label>
                </div>
                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput"  name="age"value="${emp.age}">
                    <label for="floatingInput">Age</label>
                </div>
                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput"  name="basicSalary"value="${emp.basicSalary}">
                    <label for="floatingInput">Basic Salary</label>
                </div>
                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput"  name="phone"value="${emp.phone}">
                    <label for="floatingInput">phone</label>
                </div>
                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput"  name="carAllowance"value="${emp.carAllowance}">
                    <label for="floatingInput">car Allowance</label>
                </div>
                <div class="form-floating">

                    <select name="departmentId" class="form-select" id="departmetnId">
                        <option value="0" disabled>select a department</option>

                        <c:forEach items="${DepListEditPage}" var="dep">

                            <option value="${dep.departmentId}" <c:if test="${emp.departmentId == dep.departmentId}">selected</c:if>>
                                ${dep.departmentName}
                            </option>

                        </c:forEach>

                    </select>
                    <label for="departmetnId">Department</label>
                </div>

                <div class="form-floating">

                    <select name="roleId" class="form-select" id="roleId">

                        <option value="0" disabled>select a Role</option>

                        <c:forEach items="${RoleListEditPage}" var="role">
                            <option value="${role.roleId}" <c:if test="${emp.roleId == role.roleId}">selected</c:if>>
                                ${role.roleName}
                            </option>
                        </c:forEach>

                    </select>

                    <label for="roleId">Role</label>

                </div>

                <button class="w-100 btn btn-lg btn-primary mt-2" type="submit">update</button>

            </form>
        </main>
    </body>
</html>
