<html>
<head>
    <script type="text/javascript">
        function loadXMLDoc() {
        }
    </script>
</head>
<body>
<h2>Hello World!!!!</h2>
<%=request.getSession()%>


<div id="myDiv"><h3>Let AJAX change this text</h3></div>
<button type="button" onclick="loadXMLDoc()">Change Content</button>

</body>
</html>