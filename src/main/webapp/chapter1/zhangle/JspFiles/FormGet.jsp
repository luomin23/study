<%--
  Created by IntelliJ IDEA.
  User: del
  Date: 2017/8/15
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" pageEncoding="GBK" %>
<html>
<head>
    <title>get</title>
</head>
<body>
    <h2>如果不选中复选框使用getParameterValues()方法会出现500错误</h2>
    <form action="../../../get" method="get">
    <table>
        <tr>
            <td>姓名:</td>
            <td><input type="text" name="name" value="姓名" /></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input type="password" name="password" /></td>
        </tr>
        <tr>
            <td rowspan="3" align="top">爱好:</td>
            <td><input type="checkbox" name="check"  />看书</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="check" />写字</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="check" />听音乐</td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="提交" /></td>
        </tr>
    </table>


    </form>
</body>
</html>
