<html>
    <style>
        .signupform {
            color: black;
            text-align: right;
        }
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
            height:50px;
            background: green;
        }
        .banner img {
            float: left;
            width: 125px;
            height: 50px;
        }
        .banner button {
            position: relative;
            top: 18px;
            float: right;
            width: 100px;
        }
        .sidebarLeft {
            float: left;
            width: 200px;
            background: #ccc;
            height: 100%;
            padding-top: 80px;

        }
        .sidebarRight {
            float: right;
            width: 200px;
            background: #ccc;
            height: 100%;
            padding-top: 80px;
        }
        .content {
            border:1px solid #000;
            width:920px;
            height:100%;
            padding-left: 20px ;
            padding-top: 80px;
            overflow-y: scroll;
            overflow-x: hidden;
        }
        #search {
            width: 330px;
            -webkit-transition: width 0.4s ease-in-out;
            transition: width 0.4s ease-in-out;
        }

    </style>
    <script>
    </script>
    <head>
        <title>OurLives</title>
    </head>
    <body>
        <div class="header">
            <div class="banner">
                <img src="images/Untitled.jpg" alt="banner">
                <input type="text" class="search" name="search" value="" placeholder="Search..">
                <button type="button" id="signUp" onClick=location.href="signUp.jsp" >Sign Up</button>
                <button type="button" id="loginbtn" onClick=location.href="login.jsp" >Login</button>
            </div>
            <div class="menuContainer" align="center">
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="aboutUs.jsp">About Us</a></li>
                    <li><a href="tributes.jsp">Tributes</a></li>
                    <li><a href="joinTheMovement.jsp">Join the Movement</a></li>
                    <li><a href="tributeSearch.jsp">Tribute Search</a></li>
                    <li><a href="trendingNews.jsp">Trending News</a></li>
                    <li><a href="contactUs.jsp">Contact Us</a></li>
                </ul>
            </div>
        </div>
        <div>
            <div class="sidebarLeft">
                <footer style="padding-top: 600px">
                    <p>Copyright OurLives 2017</p>
                </footer> 
            </div>
            <div class="sidebarRight"></div>
        </div>
    </body>
</html>