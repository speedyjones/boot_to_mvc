<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AJAX Request</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#ajaxButton").click(function () {
                $.ajax({
                    type: "GET",
                    url: "http://localhost:8081/api/main/helloTest",
                    dataType: "text",
                    success: function (response) {
                        $("#ajaxResponse").text(response); // Update content in the HTML element with id="ajaxResponse"
                    },
                    error: function (xhr, status, error) {
                        console.error("Error:", error);
                        // Handle error scenarios here
                    }
                });
            });
        });
    </script>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<h1>AJAX Request Example</h1>
<button id="ajaxButton">Make AJAX Request</button>
<div id="ajaxResponse"></div>
</body>
</html>