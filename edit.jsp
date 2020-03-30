<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit</title>
    </head>
    <body>
        <h2>Sporting Good</h2>
        <hr/>
        <form method="post" action="/save">
            <input type="hidden" name="id" value="${selectedItem.id}">
            <br>description:<br>
            <input type="text" name="description" value="${selectedItem.description}">
            <br>price:<br>
            <input type="text" name="price" value="${selectedItem.price}">
            <br>color:<br>
            <input type="text" name="color" value="${selectedItem.color}">
            <br><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
