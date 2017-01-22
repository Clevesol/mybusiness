<%-- 
    Document   : newjsp
    Created on : Jan 21, 2017, 1:20:08 PM
    Author     : Selvadurai Handeeban <s.handeeban@gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


    </head>
    <body>
        <h1>Hello World!</h1>

        <button class="btn btn-primary" id="invoice">Click</button>

        
        <div id="result"></div>

        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
        <!-- App -->
        <script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/app.plugin.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/charts/easypiechart/jquery.easy-pie-chart.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/charts/sparkline/jquery.sparkline.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/charts/flot/jquery.flot.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/charts/flot/jquery.flot.tooltip.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/charts/flot/jquery.flot.resize.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/charts/flot/jquery.flot.grow.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/charts/flot/demo.js"></script>

        <script src="${pageContext.request.contextPath}/resources/js/calendar/bootstrap_calendar.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/calendar/demo.js"></script>

        <script src="${pageContext.request.contextPath}/resources/js/sortable/jquery.sortable.js"></script>

        <script type="text/javascript">

            $('#invoice').click(function (e) {
                
                $('#result').html("<h1>Loading</h1>");
               
               var url = "Invoice";
               
               $.ajax(url, {
            dataType: 'html',
            async: false,
            type: 'GET'
          }).done(function (response) {

            data = response;
            $('#result').html(data);
            console.log(data.getElementById('a'));
            //$(document).append(data);
               
               
            });
        });
        </script>
    </body>


</html>
