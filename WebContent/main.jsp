<html>
    <head>
        <link rel="stylesheet" href="css/header.css">
        <style>
            body {
                margin: 0;
                padding:0;
                background: #e7e7e7;
            }
            .header {
                position: fixed;
                width: 100%;
            }

            .banner  {
                width:auto;
                height:75px;
                background: green;
            }
            .banner img {
                float: left;
                width: 300px;
                height: 75px;
                padding-left: 50px;
            }
            .banner button {
                position: relative;
                top: 18px;
                
                width: 50px;
            }
            form {
                float: right;
                width: 400px;
                padding-right: 10px;
                margin: 8px 0;
                box-sizing: border-box;
                border: 1px solid #ccc;
                -webkit-transition: 0.5s;
                transition: 0.5s;
                outline: none;
                background-color: gold;
            }
            form :focus {
                border: 1px solid #555;
            }
            .content {
                font-style: oblique;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <div class="banner">
                <img src="images/Untitled.jpg" alt="banner">
                <form class="login" method="post" action="Login">
                    <label>Email or Phone</label>
                    <input type="email" id="emailaddr" placeholder="Email">
                    <br>
                    <label>Password</label>
                    <input type="password" id="passw" placeholder=""Password>
                    <button type="submit"  style="text-align:center;">Login</button>
                </form>
            </div>
            <div class="content">
                <p> Sign Up </p>
                <br>
                <p> Join OurLives to celebrate and give tribute to the ones you care for. Take the opportunity to share your story or the story of others.</p>
            </div>
    </body>
</html>