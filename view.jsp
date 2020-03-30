<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>View</title>
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
    </head>
    <body>
        <h2>Patel Sporting Shop</h2>
        <table>
            <tr>
                <th>Id</th>
                <td>${selectedItem.id}</td>
            </tr>
            <tr>
                <th>description</th>
                <td>${selectedItem.description}</td>
            </tr>
            <tr>
                <th>price</th>
                <td>${selectedItem.price}</td>
            </tr>
            <tr>
                <th>color</th>
                <td>${selectedItem.color}</td>
            </tr>
        </table>
        <a href="/">Back</a>
    </body>
</html>
