<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>SkyJet Airlines</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', sans-serif;
        }

        body {
            background: #f5f7fa;
        }

        header {
            background: linear-gradient(90deg, #004e92, #000428);
            color: white;
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h1 {
            font-size: 24px;
        }

        nav a {
            color: white;
            margin-left: 20px;
            text-decoration: none;
        }

        .hero {
            height: 80vh;
            background: url('https://images.unsplash.com/photo-1504196606672-aef5c9cefc92') no-repeat center/cover;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .search-box {
            background: rgba(255,255,255,0.95);
            padding: 25px;
            border-radius: 12px;
            width: 80%;
            max-width: 900px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.2);
        }

        .search-box h2 {
            margin-bottom: 15px;
            color: #333;
        }

        .form-row {
            display: flex;
            gap: 10px;
            margin-bottom: 10px;
        }

        .form-row input, .form-row select {
            flex: 1;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: #004e92;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
        }

        .btn:hover {
            background: #003366;
        }

        .offers {
            padding: 40px;
            text-align: center;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .card {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.1);
        }

        footer {
            background: #000428;
            color: white;
            text-align: center;
            padding: 15px;
        }
    </style>
</head>

<body>

<header>
    <h1>✈️ SkyJet Airlines</h1>
    <nav>
        <a href="#">Home</a>
        <a href="#">Flights</a>
        <a href="#">Check-In</a>
        <a href="#">Support</a>
    </nav>
</header>

<section class="hero">
    <div class="search-box">
        <h2>Book Your Flight</h2>

        <form action="searchFlights" method="post">
            <div class="form-row">
                <input type="text" name="from" placeholder="From (City)">
                <input type="text" name="to" placeholder="To (City)">
            </div>

            <div class="form-row">
                <input type="date" name="departure">
                <input type="date" name="return">
            </div>

            <div class="form-row">
                <select name="passengers">
                    <option>1 Passenger</option>
                    <option>2 Passengers</option>
                    <option>3 Passengers</option>
                </select>

                <select name="class">
                    <option>Economy</option>
                    <option>Business</option>
                    <option>First Class</option>
                </select>
            </div>

            <button class="btn">Search Flights</button>
        </form>

        <p style="margin-top:10px; color:#666;">
            Logged in as: <%= (request.getRemoteUser() != null) ? request.getRemoteUser() : "Guest" %>
        </p>
    </div>
</section>

<section class="offers">
    <h2>🔥 Trending Deals</h2>

    <div class="cards">
        <div class="card">
            <h3>Delhi → Dubai</h3>
            <p>Starting ₹18,999</p>
        </div>

        <div class="card">
            <h3>Mumbai → Singapore</h3>
            <p>Starting ₹22,499</p>
        </div>

        <div class="card">
            <h3>Bangalore → London</h3>
            <p>Starting ₹45,999</p>
        </div>
    </div>
</section>

<footer>
    <p>© <%= java.time.Year.now() %> SkyJet Airlines | All Rights Reserved</p>
</footer>

</body>
</html>
