<html>
    <head>
        <%@ include file="header.jsp" %>
        <link rel="stylesheet" href="css/header.css">
        <style>
            td input[type=text] {
                width: 100%;
                padding: 8px 10px;
                margin: 8px 0;
                box-sizing: border-box;
                border: 3px solid #ccc;
                -webkit-transition: 0.5s;
                transition: 0.5s;
                outline: none;
                background-color: gold;
            }
            td input[type=text]:focus {
                border: 3px solid #555;
            }
            textarea {
                resize: none;
            }
        </style>
    </head>
    <body>
        <div class="content">
            <h1>Contact Us</h1>
            <form action="ContactUs">
                <table width="450px">
                    <tr>
                        <td valign="top">
                            <label for="first_name">First Name: </label>
                        </td>
                        <td valign="top">
                            <input  type="text" name="first_name" maxlength="50" size="30">
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <label for="last_name">Last Name: </label>
                        </td>
                        <td valign="top">
                            <input  type="text" name="last_name" maxlength="50" size="30">
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <label for="email">Email Address: </label>
                        </td>
                        <td valign="top">
                            <input  type="text" name="email" maxlength="80" size="30">
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <label for="telephone">Telephone Number: </label>
                        </td>
                        <td valign="top">
                            <input  type="text" name="telephone" maxlength="30" size="30">
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <label for="comments">Comments: </label>
                        </td>
                        <td valign="top">
                            <textarea  name="comments" maxlength="1000" cols="25" rows="6"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:center">
                            <input type="submit" value="Submit">
                        </td>
                    </tr>
                </table>
            </form>
            <div>
                <h1>
                    Contact Information
                </h1>
                <h2>
                    Telephone: 999-999-8888
                </h2>
            </div>
        </div>
    </body>
</html>

