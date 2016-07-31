<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> 客户关系管理系统</title>
</head>


<frameset rows="70,*" cols="*" frameborder="NO" border="0" framespacing="0">

    <frame src="../common/top.jsp" name="top"scrolling="NO" noresize>

    <frameset  id="mainframe" rows="*" cols="200,9,*" framespacing="0" frameborder="NO" border="0" bordercolor="#404040">
        <frame src="../common/left.jsp" name="left"scrolling="NO" noresize>
        <frame scrolling=NO  noresize="true" name="toogle" marginwidth="0" marginheight="0" src="../common/toogle.jsp">
        <frame src="../common/right.jsp" name="main"scrolling="yes" >
    </frameset>
</frameset>


<noframes>
    <body>
    </body>
</noframes>

</html>
