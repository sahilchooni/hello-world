<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<%
    // Simulate AI response for demonstration
    String userInput = request.getParameter("query");
    String aiResponse = "";
    if(userInput != null && !userInput.trim().isEmpty()){
        String[] responses = {
            "Interesting question! Let me think...",
            "Here's what I found for you.",
            "AI suggests considering multiple options.",
            "Fascinating! You might want to explore further.",
            "I can help you with that!"
        };
        aiResponse = responses[new Random().nextInt(responses.length)];
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>AI Assistant WebApp</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            background: linear-gradient(to right, #667eea, #764ba2);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #fff;
        }
        .container {
            background: rgba(255, 255, 255, 0.05);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 15px 25px rgba(0,0,0,0.3);
            max-width: 600px;
            width: 90%;
            text-align: center;
            backdrop-filter: blur(10px);
        }
        h1 {
            margin-bottom: 20px;
            font-size: 2.5rem;
        }
        input[type="text"] {
            padding: 12px;
            width: 80%;
            border-radius: 8px;
            border: none;
            margin-bottom: 20px;
            font-size: 1rem;
        }
        button {
            padding: 12px 25px;
            border-radius: 8px;
            border: none;
            background-color: #ff6a00;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        button:hover {
            background-color: #e55d00;
            transform: translateY(-2px);
        }
        .response {
            margin-top: 25px;
            background: rgba(255,255,255,0.1);
            padding: 20px;
            border-radius: 12px;
            font-size: 1.1rem;
        }
        footer {
            margin-top: 30px;
            font-size: 0.9rem;
            color: #ddd;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>AI Assistant WebApp</h1>
        <form method="get" action="">
            <input type="text" name="query" placeholder="Ask me anything..." value="<%= userInput != null ? userInput : "" %>" required>
            <button type="submit">Ask AI</button>
        </form>

        <% if(aiResponse != null && !aiResponse.isEmpty()) { %>
            <div class="response">
                <strong>AI Response:</strong> <%= aiResponse %>
            </div>
        <% } %>

        <footer>
            &copy; <%= java.time.Year.now() %> AI WebApp. All rights reserved.
        </footer>
    </div>
</body>
</html>
