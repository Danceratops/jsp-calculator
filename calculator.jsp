<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="style.css" />
    <title>JSP Calculator</title>
</head>
<body>
    <form class="calculator" method="POST" action="calculator.jsp">
        <input type="text" name="n1" class="input">
        <select name="op" class="input">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
            <option value="%">%</option>
        </select>
        <input type="text" name="n2" class="input">
        <button class="equals" type="submit" name="submit" value="calculator">=</button>
    </form>
    <h3>
    <% 
        try {
            if(request.getParameter("n1") != null) {
                int a, b;
                String c;
                a = Integer.parseInt(request.getParameter("n1"));
                b = Integer.parseInt(request.getParameter("n2"));
                c = request.getParameter("op");

                if(c.equals("+")) {
                    out.println(a + b);
                } else if (c.equals("-")) {
                    out.println(a - b);
                } else if (c.equals("*")) {
                    out.println(a * b);
                } else if (c.equals("%")) {
                    out.println(a % b);
                } else if (c.equals("/")) {
                    out.println(a / b);
                } else {
                    out.println("No such operand exists.");
                }
            }
        } catch (Exception ex) {}
    %>
    <h3>
</body>
</html>