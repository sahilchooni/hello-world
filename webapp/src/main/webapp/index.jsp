<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My WebApp</title>
    <style>
        /* Reset some default styles */
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }

        body {
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #333;
        }

        .container {
            background-color: #fff;
            padding: 40px 60px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            text-align: center;
            max-width: 600px;
        }

        h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            color: #333;
        }

        p {
            font-size: 1.1rem;
            margin-bottom: 25px;
            color: #555;
        }

        a.button {
            text-decoration: none;
            background-color: #6C63FF;
            color: #fff;
            padding: 12px 28px;
            border-radius: 6px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        a.button:hover {
            background-color: #5753c9;
            transform: translateY(-2px);
        }

        footer {
            margin-top: 30px;
            font-size: 0.9rem;
            color: #999;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to My WebApp!</h1>
        <p>Hello <strong><%= request.getParameter("user") != null ? request.getParameter("user") : "Guest" %></strong>, thank you for visiting our website.</p>
        <a class="button" href="about.jsp">Learn More</a>
        <footer>
            &copy; <%= java.time.Year.now() %> My WebApp. All rights reserved.
        </footer>
    </div>
</body>
</html>
