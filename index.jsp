<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"     %>


<!DOCTYPE html>
<html>
    <head>
        <title>Sports Shop</title>
        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
        </style>
        <style><%@include file="../css/style.css"%></style>
    </head>
    <body>
        <h2>Patel Sporting Shop</h2>
        <table class="myCoolStyle">
            <tr>
                <th>Id</th>
                <th>Description</th>
                <th>Price</th>
                <th>Color</th>
                <th>Actions</th>
            </tr>
            <c:forEach var = "item" items = "${list}">
            <tr>
                <td>${item.id}</td>
                <td>${item.description}</td>
                <td>${item.price}</td>
                <td>${item.color}</td>
                <td>
                    <a href="/view/${item.id}">View</a>
                    <a href="/edit/${item.id}">Edit</a>
                    <a href="/delete/${item.id}"><img src="../../img/delete.jpg" alt="delete_imcolor" ></a>
                </td>
            </tr>
            </c:forEach>
        </table>
        <hr/>
        <h2>Add Products</h2>
        <form method="post" action="/save">
            <input type="hidden" name="id" value="">
            Description:<br>
            <input type="text" name="description">
            <br>
            Price:<br>
            <input type="text" name="price" >
            <br>
            Color:<br>
            <input type="text" name="color" >
            <br><br>
            <input type="submit" value="Submit">
        </form>
        <hr/><hr/>
        <h2>Product List</h2>
        <FORM ACTION="formAction.jsp" METHOD="POST">
            <SELECT NAME="select1" SIZE="5" MULTIPLE>
                <c:forEach var = "item" items = "${list}">
                    <OPTION>${item.description} ${item.price} ${item.color}</OPTION>
                </c:forEach>
            </SELECT>
            <BR>
            <%--<INPUT TYPE="SUBMIT" VALUE="Submit">--%>
        </FORM>
    </body>
</html>
