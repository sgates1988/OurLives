<html>
    <head>
        <link rel="stylesheet" href="css/header.css">
        <%@ include file="header.jsp" %>
        <style>
            button.accordion {
                background-color: #eee;
                color: #444;
                cursor: pointer;
                padding: 18px;
                width: 500px;
                border: none;
                text-align: left;
                outline: none;
                font-size: 15px;
                transition: 0.4s;
            }

            button.accordion.active, button.accordion:hover {
                background-color: #ddd; 
            }

            div.panel {
                padding: 0 18px;
                display: none;
                background-color: white;
            }
            button.accordion:after {
                content: '\02795'; /* Unicode character for "plus" sign (+) */
                font-size: 13px;
                color: #777;
                float: right;
                margin-left: 5px;
            }

            button.accordion.active:after {
                content: "\2796"; /* Unicode character for "minus" sign (-) */
            }
        </style>
    </head>
    <body>
        <div class="content">
            <div>
                <h2>About Us</h2>
                <button class="accordion">Who is Our Lives?</button>
                <div class="panel">
                    <p>Our Lives is the place where everyone's lives can be shared and remembered.
                        Our lives give the living and the deceased the ability to tell their story
                </div>
                <br>

                <button class="accordion">Does OurLives support #BlackLivesMatter?</button>
                <div class="panel">
                    <p>Yes. but that is not the only charity we support.
                </div>
            </div>
        </div>
        <script>
            var acc = document.getElementsByClassName("accordion");
            var i;

            for (i = 0; i < acc.length; i++) {
                acc[i].onclick = function () {
                    this.classList.toggle("active");
                    var panel = this.nextElementSibling;
                    if (panel.style.display === "block") {
                        panel.style.display = "none";
                    } else {
                        panel.style.display = "block";
                    }
                };
            }

        </script>
    </body>
</html>

