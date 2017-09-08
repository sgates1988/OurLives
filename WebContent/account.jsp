<html>
    <head>
        <%@ include file="headerMem.jsp" %>
        <title>My Account</title>
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <style>
            body {
                margin: 0;
                padding: 0;
            }
            .acctInfo {
                width: 250px;
            } 
            form input[type=text] {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                box-sizing: border-box;
                border: 3px solid #ccc;
                -webkit-transition: 0.5s;
                transition: 0.5s;
                outline: none;
                background: gold;
            }
            form input[type=text]:focus {
                border: 3px solid #555;
            }
        </style>
    </head>
    <body>
        <div class="content">
        <div class="acctInfo">
            <h1>Account Information</h1>
            <form class="form">
                <label for="memNm">Name: </label>
                <input type="text" id="memNm" name="memNm">
                <label for="memAddr">Address: </label>
                <input type="text" id="memAddr" name="Addr">
                <label for="memCity">City: </label>
                <input type="text" id="memCity" name="memCity">
                <label for="memState">State: </label>
                <input type="text" id="memState" name="memState">
                <label for="memZip">Zip: </label>
                <input type="text" id="memZip" name="memZip">
                <button type="button" id="edtMem">Edit</button>
                <button type="button" id="saveMem">Save</button>
        </div>
        <div>
            <h1>Tribute Pages</h1>
        </div>
    </div>
    </body>
</html>
