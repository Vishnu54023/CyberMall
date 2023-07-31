                            
 <!--New code-->
 
 <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>login form</title>
        <%@include file="components/common_css_js.jsp" %>

        <link rel="icon" href="img/login.jpg">
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@1,200&display=swap" rel="stylesheet">

        <style>
            * {
                padding: 0;
                margin: 0;
                box-sizing: border-box;
                font-family: 'Josefin Sans', sans-serif;
            }
            .login-form{
                margin-top: -10px;
                color: white;
                text-decoration: none;
            }
            .main {
                width: 100%;
                height: 100vh;
                background-color: #230209;
                position: relative;
            }
            .main .box {
                background-color: #212326;
                width: 31%;
                height: 322px;
                color: white;
                position: absolute;
                left: 50%;
                top: 50%;
                transform: translate(-50%, -50%);
                border-radius: 8px;
                padding: 30px;
                transition: 0.8s;
                cursor: pointer;
            }
            @media (min-width: 1024px) and (max-width: 1224px) {
                .main .box {
                    width: 40%;
                }
            }
            @media (min-width: 768px) and (max-width: 1023px) {
                .main .box {
                    width: 45%;
                }
            }
            @media (min-width: 480px) and (max-width: 768px) {
                .main .box {
                    width: 65%;
                }
            }
            @media (max-width: 480px) {
                .main .box {
                    width: 90%;
                }
            }
            .main .box h2 {
                text-align: center;
                margin-bottom: 30px;
                font-size: 2.1rem;
            }
            .main .box .box-container {
                margin: 41px 5px;
                position: relative;
            }
            .main .box .box-container label {
                position: absolute;
                top: 0;
                left: 5px;
                font-size: 1.2rem;
                transition: 0.8s;
            }
            .main .box .box-container input:focus ~ label,
            .main .box .box-container input:valid ~ label {
                position: absolute;
                top: -25px;
                left: 0;
            }
            .main .box .box-container input {
                width: 100%;
                border: none;
                background: transparent;
                outline: none;
                border-bottom: 1px solid white;
                color: white;
                letter-spacing: 1px;
                font-size: 1.2rem;
            }
            .main .box input[type="submit"] {
                font-size: 1.2rem;
                background-color: #3498db;
                padding: 8px 15px;
                margin: -4px 0px;
                color: white;
                border-radius: 8px;
                font-weight: bold;
                transition: 0.5s;
                border: 1px solid #3498db;
                cursor: pointer;
            }
            .main .box input[type="submit"]:hover {
                color: #dbe0e5;
            }
            .main .box:hover {
                box-shadow: 0 0 250px 15px black;
            }

        </style>

    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
        <div class="main">
            
                
            <div style="text-align: center; font-size: 28px;">
            <%@include file="components/message.jsp" %>
            </div>
            <div class="box">
                <h2>Login Form</h2>
                <form action="LoginServlet">
                    <div class="box-container">
                        <input name="email" type="text" name="username" autocomplete="off" required>
                        <label for="">username</label>
                    </div>
                    <div class="box-container">
                        <input name="password" type="password" name="password" required>
                        <label for="">password</label>
                    </div>
                    <a href="register.jsp" class="login-form text-center d-block mb-2">if not registered !! click here</a>

                    <div class="container text-center">
                        <button type="submit" class="btn btn-primary border-0" style="background:#19427e;">Submit</button>
                        <button type="reset" class="btn btn-primary border-0" style="background:#1c5139;">Reset</button>
                    </div>
                    <!--<input type="submit" name="btn" id="" value="Submit">-->
                </form>

            </div>
        </div>

    </body>
</html>