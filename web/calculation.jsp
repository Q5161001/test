<%-- 
    Document   : index
    Created on : 2018/04/13, 14:00:08
    Author     : 5161001
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
        if(request.getAttribute("operator") != null){
            int result = 0;
            int num1 = (Integer)request.getAttribute("num1");
            int num2 = (Integer)request.getAttribute("num2");
            String operator = (String)request.getAttribute("operator");
            if (operator.equals("＋")){
                result = num1 + num2;
            }else if(operator.equals("－")){
                result = num1 - num2;
            }else if(operator.equals("×")){
                result = num1 * num2;
            }else if(operator.equals("÷")){
                if(num2 != 0) result = num1 / num2;
            }
            out.println("計算結果:" + result);
        }
        %>
    </head>
   <body>
        <div>Hello！！</div>
        <table>
        <form method="post" action="Calculation">
            <input type="text" name="num1" value="0" size="5"/>
                <select name="operator">
                    <option>＋</option>
                    <option>－</option>
                    <option>×</option>
                    <option>÷</option>
                </select>
            <input type="text" name="num2" value="0" size="5"/></p>
            <input type="submit" value="計算"/></p>
        </form>
        </table>
    </body>
</html>
