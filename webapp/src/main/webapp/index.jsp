<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Singapore Airlines</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* Reset */
        * { margin:0; padding:0; box-sizing:border-box; font-family: 'Segoe UI', sans-serif; }

        body { background: #f8f9fa; color: #333; }

        header {
            background: #005983;
            color: #fff;
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h1 { font-size: 24px; }
        nav a { color: #fff; margin-left: 20px; text-decoration: none; transition: 0.3s; }
        nav a:hover { color: #ffd700; }

        .hero {
            height: 80vh;
            background: url('https://images.unsplash.com/photo-1516841273335-e39b37888114?auto=format&fit=crop&w=1950&q=80') no-repeat center/cover;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .search-box {
            background: rgba(255,255,255,0.95);
            padding: 30px;
            border-radius: 12px;
            width: 80%;
            max-width: 900px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.2);
        }

        .search-box h2 { margin-bottom: 20px; color: #005983; }

        .form-row { display: flex; gap: 10px; margin-bottom: 15px; }
        .form-row input, .form-row select {
            flex: 1;
            padding: 12px;
            border-radius: 8px;
            border: 1px solid #ccc;
        }

        .btn {
            width: 100%;
            padding: 14px;
            background: #005983;
            color: #fff;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            transition: 0.3s;
        }

        .btn:hover { background: #003f59; }

        .offers {
            padding: 50px 20px;
            text-align: center;
            background: #f1f1f1;
        }

        .offers h2 { margin-bottom: 30px; color: #005983; }
        .cards { display: grid; grid-template-columns: repeat(auto-fit, minmax(250px,1fr)); gap: 20px; }

        .card {
            background: #fff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            transition: 0.3s;
        }
        .card:hover { transform: translateY(-5px); }

        footer {
            background: #005983;
            color: #fff;
            text-align: center;
            padding: 15px;
        }
    </style>
</head>

<body>

<header>
    <h1>Singapore Airlines ✈️</h1>
    <nav>
        <a href="#">Home</a>
        <a href="#">Book</a>
        <a href="#">Check-In</a>
        <a href="#">Offers</a>
        <a href="#">Contact</a>
    </nav>
</header>

<section class="hero">
    <div class="search-box">
        <h2>Book Your Flight</h2>
        <form action="searchFlights" method="post">
            <div class="form-row">
                <input type="text" name="from" placeholder="From (City)" required>
                <input type="text" name="to" placeholder="To (City)" required>
            </div>
            <div class="form-row">
                <input type="date" name="departure" required>
                <input type="date" name="return">
            </div>
            <div class="form-row">
                <select name="passengers">
                    <option value="1">1 Passenger</option>
                    <option value="2">2 Passengers</option>
                    <option value="3">3 Passengers</option>
                    <option value="4">4 Passengers</option>
                </select>
                <select name="class">
                    <option value="Economy">Economy</option>
                    <option value="Business">Business</option>
                    <option value="First">First Class</option>
                </select>
            </div>
            <button class="btn">Search Flights</button>
        </form>
        <p style="margin-top:10px; color:#666;">Logged in as: <%= request.getRemoteUser() != null ? request.getRemoteUser() : "Guest" %></p>
    </div>
</section>

<section class="offers">
    <h2>🔥 Trending Deals</h2>
    <div class="cards">
        <div class="card">
            <h3>Singapore → Tokyo</h3>
            <p>Starting from SGD 450</p>
        </div>
        <div class="card">
            <h3>Singapore → Sydney</h3>
            <p>Starting from SGD 700</p>
        </div>
        <div class="card">
            <h3>Singapore → London</h3>
            <p>Starting from SGD 1,200</p>
        </div>
    </div>
</section>

<footer>
    <p>© <%= java.time.Year.now() %> Singapore Airlines | All Rights Reserved</p>
</footer>

</body>
</html>
