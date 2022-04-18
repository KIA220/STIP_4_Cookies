<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Site</title>
<style>
        * {
            margin: 0;
            padding: 0;
        }

        @font-face {
            font-family: TitaniumWeb;
            src: local("TitaniumWeb"), url(TitilliumWeb-ExtraLight.ttf);
        }

        * {
            font-family: TitaniumWeb;
        }

        div {
            width: 100%;
            height: 100px;
            background-color: transparent;
            z-index: 1;
        }

        #header {
            width: 100%;
            height: 150px;
            background-color: rgb(233, 233, 233);
            border-bottom: solid;
        }

        #body {
            width: 100%;
            height: 700px;
            background-color: rgb(235, 235, 235);
            border-bottom: solid;
        }

        #footer {
            width: 100%;
            height: 90px;
            background-color: rgb(237, 237, 255);
        }

        #reg_form {
            width: 100%;
            height: 65vh;
            background-color: rgba(251, 184, 184, 0.00);
            z-index: 0;
            position: absolute;
            margin-top: 155px;
            display: none;
        }
        #signin_form {
            width: 100%;
            height: 65vh;
            background-color: rgba(251, 184, 184, 0.00);
            z-index: 0;
            position: absolute;
            margin-top: 155px;
            display: none;
        }

        #btn_reg {
            float: right;
            background-color: #3D94F6;
            border-radius: 20px;
            border: solid #337FED 0;
            font-family: TitaniumWeb;
            color: #ffffff;
            font-size: 18px;
            font-weight: 100;
            padding: 8px;
            text-decoration: none;
            margin: 10px 10px 10px 10px;
            cursor: pointer;
            text-align: center;
        }
		#btn_signin {
            float: right;
            background-color: #3D94F6;
            border-radius: 20px;
            border: solid #337FED 0;
            font-family: TitaniumWeb;
            color: #ffffff;
            font-size: 18px;
            font-weight: 100;
            padding: 8px;
            text-decoration: none;
            margin: 10px 10px 10px 10px;
            cursor: pointer;
            text-align: center;
        }
         #btn_reg:hover {
            border: solid #337FED 0;
            background: #1E62D0;
            text-decoration: none;
            border-radius: 20px;
        }
        #btn_signin:hover {
            border: solid #337FED 0;
            background: #1E62D0;
            text-decoration: none;
            border-radius: 20px;
        }

        #btn_reg_close {
            float: right;
            background-color: #3D94F6;
            border-radius: 20px;
            border: solid #337FED 0;
            font-family: TitaniumWeb;
            color: #ffffff;
            font-size: 18px;
            font-weight: 100;
            padding: 5px 15px 5px 15px;
            text-decoration: none;
            margin: 10px 10px 10px 10px;
            cursor: pointer;
            text-align: center;
        }
        #btn_signin_close {
            float: right;
            background-color: #3D94F6;
            border-radius: 20px;
            border: solid #337FED 0;
            font-family: TitaniumWeb;
            color: #ffffff;
            font-size: 18px;
            font-weight: 100;
            padding: 5px 15px 5px 15px;
            text-decoration: none;
            margin: 10px 10px 10px 10px;
            cursor: pointer;
            text-align: center;
        }

        #btn_reg_close:hover {
            border: solid #337FED 0;
            background: #1E62D0;
            text-decoration: none;
            border-radius: 20px;
        }
        #btn_signin_close:hover {
            border: solid #337FED 0;
            background: #1E62D0;
            text-decoration: none;
            border-radius: 20px;
        }

        #btn_reg_ok {
            float: right;
            background-color: #3D94F6;
            width: 60px;
            height: 40px;
            border-radius: 20px;
            border: solid #337FED 0;
            font-family: TitaniumWeb;
            color: #ffffff;
            font-size: 18px;
            font-weight: 100;
            padding: 5px 10px 5px 10px;
            text-decoration: none;
            margin: 10px 10px 10px 10px;
            cursor: pointer;
            text-align: center;
        }
        #btn_signin_ok {
            float: right;
            background-color: #3D94F6;
            width: 60px;
            height: 40px;
            border-radius: 20px;
            border: solid #337FED 0;
            font-family: TitaniumWeb;
            color: #ffffff;
            font-size: 18px;
            font-weight: 100;
            padding: 5px 10px 5px 10px;
            text-decoration: none;
            margin: 10px 10px 10px 10px;
            cursor: pointer;
            text-align: center;
        }

        #btn_reg_ok:hover {
            border: solid #337FED 0;
            background: #1E62D0;
            text-decoration: none;
            border-radius: 20px;
        }
        #btn_signin_ok:hover {
            border: solid #337FED 0;
            background: #1E62D0;
            text-decoration: none;
            border-radius: 20px;
        }
		input[type=reset]{
			width: 80px;
			float: left;
            background-color: #3D94F6;
            border-radius: 20px;
            border: solid #337FED 0;
            font-family: TitaniumWeb;
            color: #ffffff;
            font-size: 18px;
            font-weight: 100;
            text-decoration: none;
            margin: 10px 10px 10px 0px;
            cursor: pointer;
            text-align: center;
		}
		input[type=reset]:hover{
		border: solid #337FED 0;
            background: #1E62D0;
            text-decoration: none;
            border-radius: 20px;
		}
        #reg_cont {
            width: 80%;
            margin: 0 auto;
            height: 100%;
            background-color: rgb(228, 228, 228);
        }
        #signin_cont {
            width: 80%;
            margin: 0 auto;
            height: 100%;
            background-color: rgb(228, 228, 228);
        }
		#signin_cont_in {
            width: 100%;
            margin: 0 auto;
            height: 100%;
            background-color: rgb(228, 228, 228);
            display: grid;
            grid-template-rows: auto;
            grid-template-columns: 1fr;
            grid-gap: 0vw;
            justify-items: center;
        }
        #reg_cont_in {
            width: 100%;
            margin: 0 auto;
            height: 100%;
            background-color: rgb(228, 228, 228);
            display: grid;
            grid-template-rows: auto;
            grid-template-columns: 1fr;
            grid-gap: 0vw;
            justify-items: center;
        }

        input {
            height: 50px;
            width: 350px;
        }

        form {
            height: auto;
            width: 350px;
        }
        input[name=StudentCheck]{
        	height: 20px;
            width: 20px;
            vertical-align: middle;
        }
        input[name=Exch]{
        	height: 20px;
            width: 20px;
            vertical-align: middle;
        }
        input[name=Single]{
        	height: 20px;
            width: 20px;
            vertical-align: middle;
        }
        input[name=StudentCheckIT]{
        	height: 20px;
            width: 20px;
            vertical-align: middle;
        }
        input[name=StudentCheckWork]{
        	height: 20px;
            width: 20px;
            vertical-align: middle;
        }

    </style>
</head>
<body>
    <div id="reg_form">
        <div id="reg_cont">
            <button id="btn_reg_close" onclick="close_reg_form()">X</button>
            <div id="reg_cont_in">
                <form method="post" name="myForm" action="ServletIndexPage" onsubmit="return validate()">
                    <input type="text" name="Email" placeholder="E-Mail" />
                    <input name="Password" type="password" placeholder="Password" />
                    <input name="passwCheck" type="password" placeholder="Repeat Password" />
                    <input type="text" name="Phone" placeholder="Type your phone" />
                    <p><select size="3"  name="Region">
    				<option disabled>Select Region</option>
    				<option value="1">RU</option>
    				<option selected value="2">GB</option>
    				<option value="3">CH</option>
    				<option value="4">US</option>
   					</select></p>
   					<label>Are you a student?</label><br>  
  					<input type="radio"  id="da"  name="Exch" value="Yes" checked>
  					<label for="Yes">Yes</label>
  					<input type="radio"  id="net" name="Exch" value="No">
  					<label for="No">No</label></br>
   					<label>Exchange student?
	  				<input type="checkbox" name="StudentCheck" value="1">
	  				Yes
	  				</label><br>
	  				<label>Single?
	  				<input type="checkbox" name="Single" value="1">
	  				Yes
	  				</label><br>
	  				<label>Student in IT?
	  				<input type="checkbox" name="StudentCheckIT" value="1">
	  				Yes
	  				</label><br>
	  				<label>Working student?
	  				<input type="checkbox" name="StudentCheckWork" value="1">
	  				Yes
	  				</label><br>
					<textarea name="Bio" placeholder="A few word about yourself" ></textarea>
                    <p id="check123"></p>
                    <input name="capch" placeholder="Solve" />
                    <div>
                    	<input type="reset" style="height: 40px; "/>
                        <button id="btn_reg_ok" type="submit" onclick="">OK</button>
                    </div>
                </form>
            </div>
            
        </div>
    </div>
    <div id="signin_form">
    	<div id="signin_cont">
            <button id="btn_signin_close" onclick="close_signin_form()">X</button>
            <div id="signin_cont_in">
                <form method="post" name="myForm2" action="ServletIndexPageDefault" onsubmit="return validate()">
                <input type="text" name="Email" placeholder="E-Mail" />
                    <input name="Password" type="password" placeholder="Password" />
                    <input name="passwCheck" type="password" placeholder="Repeat Password" />
                    
                <div>
                    	<input type="reset" style="height: 40px; "/>
                        <button id="btn_signin_ok" type="submit" onclick="">OK</button>
                </div>
                </form>
            </div>
            
        </div>
    </div>
    <script>
        let myElement = document.querySelector("#reg_form");
        function open_reg_form() {
            //myElement.style.opacity = 1;
            myElement.style.display = "inherit";
        }
        function close_reg_form() {
            //myElement.style.opacity = 0;
            myElement.style.display = "none";
        }
        let myElement2 = document.querySelector("#signin_form");
        function open_signin_form() {
            //myElement.style.opacity = 1;
            myElement2.style.display = "inherit";
        }
        function close_signin_form() {
            //myElement.style.opacity = 0;
            myElement2.style.display = "none";
        }
        function getRandomInt(min, max) {
            min = Math.ceil(min);
            max = Math.floor(max);
            return Math.floor(Math.random() * (max - min)) + min; //Max not included, min included
        }
        var one = String(getRandomInt(10, 20));
        var two = String(getRandomInt(10, 20));
        var three = one + " + " + two;
        document.getElementById("check123").textContent += three;
        function validate() {
            let c = document.forms["myForm"]["email"].value;
            if (c == "") {
                alert("Enter your E-Mail");
                return false;
            }
            let d = document.forms["myForm"]["Password"].value;
            if (d == "") {
                alert("Enter your password");
                return false;
            }
            let f = document.forms["myForm"]["passwCheck"].value;
            if (f == "") {
                alert("Repeat password");
                return false;
            }
            let x = document.forms["myForm"]["capch"].value;
            if (x == "") {
                alert("Solve");
                return false;
            }
        }
    </script>
    <div id="header">
    	<button id="btn_signin" onclick="open_signin_form()">Sign in</button>
        <button id="btn_reg" onclick="open_reg_form()">Registration</button>
        HeaderText
    </div>
    <div id="body">
        BodyText
    </div>
    <div id="footer">
        FooterText
    </div>
</body>
</html>