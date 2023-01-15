<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    <style>
        body{
           background-repeat: no-repeat;
           height: 609px;
        }
        #main {
            height: 500px;
            width: 350px;
            border-style: ridge;
            margin: 0 auto;
            margin-top: 130px;
            border-radius: 10px;
            background-color: white;
        }
        #top {
            height: 200px;
            width: 100%;
            background: rgb(2, 0, 36);
            background: linear-gradient(360deg, rgba(2, 0, 36, 1) 7%, rgba(121, 9, 64, 1) 47%, rgba(255, 0, 74, 1) 100%);
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }
        #dimg {
            height: 30%;
            width: 43%;
            border: 1px solid;
            border-radius: 50%;
            margin: 0 auto;
            margin-top: -75px;
            background-color: white;
            background-image: url(../media/Pics.jpg);
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
        #bottom {
            margin: 0 auto;
        }
        #name {
            margin-left: 27%;
        }
        #post {
            margin-left: 24.5%;
            color: #ff004a;
        }
        #intro {
            margin: 10%;
            text-align: center;
        }
        #button{
            height: 30px;
            width: 120px;
            border: 1px solid;
            margin: 0 auto;
            border-radius: 20px;
            margin-top: -35px;
            background: rgb(2, 0, 36);
            background: linear-gradient(360deg, rgba(2, 0, 36, 1) 7%, rgba(121, 9, 64, 1) 47%, rgba(255, 0, 74, 1) 100%);
        }
        a{
            text-decoration: none;
            text-align: center;
            color: aliceblue;
        }
</style>
<body>

<div id="outerlayer">
        <div id="main">
            <div id="top"></div>
            <div id="dimg"></div>
            <div id="bottom">
                <h3 id="name">Sudarshan Jamdar</h3>
                <h3 id="post">&nbsp;&nbsp; Developer Profile</h3>
                <p id="intro">
                    Hi,I'm Sudarshan and I'm ready to collaborate  on any <b>project's</b>
                    for more details please visit the profile link below....
                </p>
                <a href="../../../Extra_Work/Profile_Page/HTML/Profile_Page.html">
                <div id="button"><b>View Profile</b></div>
                </a>
            </div>
        </div>
    </div>
</body>
</html>