<%-- 
    Document   : index
    Created on : 20 de abr. de 2022, 01:04:50
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/boots.jspf" %>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <title>Pagina Principal</title>
  <style>
  body {
  background: radial-gradient(circle, #24246e, #06051f);
  overflow: hidden;
  position: relative;
  width: 100vw;
  height: 100vh;
  min-height:100vh;
  font-family: 'Noto Sans', sans-serif;
}
body:active div,
body:active div::before,
body:active div::after {
  padding: 40px;
}

div,
div::before,
div::after {
  content: "";
  position: fixed;
  top: 0;
  left: 0;
  opacity: 0.9;
  transform-origin: top;
  transition: all 5s linear 0s;
}

.purple {
  -webkit-animation: purple linear 30s alternate infinite;
          animation: purple linear 30s alternate infinite;
  border: 2px solid #241379;
  border-radius: 100%;
  width: 47px;
  height: 47px;
  transform: translate3d(79vw, 22vh, 0);
  z-index: 4;
}

.purple::before {
  -webkit-animation: purple-pseudo linear 15s alternate infinite;
          animation: purple-pseudo linear 15s alternate infinite;
  background: #241379;
  border: 2px solid #241379;
  width: 6px;
  height: 24px;
  transform: translate3d(-34vw, 62vh, 0) rotate(144deg);
}

.purple::after {
  -webkit-animation: purple-pseudo linear 20s alternate infinite;
          animation: purple-pseudo linear 20s alternate infinite;
  border: 2px solid #241379;
  width: 16px;
  height: 21px;
  transform: translate3d(-6vw, 42vh, 0) rotate(291deg);
}

@-webkit-keyframes purple {
  50% {
    transform: translate3d(29vw, 12vh, 0);
  }
  100% {
    transform: translate3d(95vw, 8vh, 0);
  }
}

@keyframes purple {
  50% {
    transform: translate3d(29vw, 12vh, 0);
  }
  100% {
    transform: translate3d(95vw, 8vh, 0);
  }
}
@-webkit-keyframes purple-pseudo {
  33% {
    transform: translate3d(20vw, 69vh, 0) rotate(227deg);
  }
  100% {
    transform: translate3d(-56vw, 21vh, 0) rotate(341deg);
  }
}
@keyframes purple-pseudo {
  33% {
    transform: translate3d(20vw, 69vh, 0) rotate(227deg);
  }
  100% {
    transform: translate3d(-56vw, 21vh, 0) rotate(341deg);
  }
}
.medium-blue {
  -webkit-animation: medium-blue linear 30s alternate infinite;
          animation: medium-blue linear 30s alternate infinite;
  border: 2px solid #2185bf;
  border-radius: 100%;
  width: 29px;
  height: 29px;
  transform: translate3d(92vw, 24vh, 0);
  z-index: 3;
}

.medium-blue::before {
  -webkit-animation: medium-blue-pseudo linear 15s alternate infinite;
          animation: medium-blue-pseudo linear 15s alternate infinite;
  background: #2185bf;
  border: 2px solid #2185bf;
  width: 30px;
  height: 45px;
  transform: translate3d(-85vw, -15vh, 0) rotate(351deg);
}

.medium-blue::after {
  -webkit-animation: medium-blue-pseudo linear 20s alternate infinite;
          animation: medium-blue-pseudo linear 20s alternate infinite;
  border: 2px solid #2185bf;
  width: 35px;
  height: 6px;
  transform: translate3d(-72vw, 27vh, 0) rotate(19deg);
}

@-webkit-keyframes medium-blue {
  50% {
    transform: translate3d(22vw, 23vh, 0);
  }
  100% {
    transform: translate3d(42vw, 33vh, 0);
  }
}

@keyframes medium-blue {
  50% {
    transform: translate3d(22vw, 23vh, 0);
  }
  100% {
    transform: translate3d(42vw, 33vh, 0);
  }
}
@-webkit-keyframes medium-blue-pseudo {
  33% {
    transform: translate3d(-21vw, 61vh, 0) rotate(89deg);
  }
  100% {
    transform: translate3d(0vw, -7vh, 0) rotate(25deg);
  }
}
@keyframes medium-blue-pseudo {
  33% {
    transform: translate3d(-21vw, 61vh, 0) rotate(89deg);
  }
  100% {
    transform: translate3d(0vw, -7vh, 0) rotate(25deg);
  }
}
.light-blue {
  -webkit-animation: light-blue linear 30s alternate infinite;
          animation: light-blue linear 30s alternate infinite;
  border: 2px solid #1fbce1;
  border-radius: 100%;
  width: 34px;
  height: 34px;
  transform: translate3d(60vw, 67vh, 0);
  z-index: 12;
}

.light-blue::before {
  -webkit-animation: light-blue-pseudo linear 15s alternate infinite;
          animation: light-blue-pseudo linear 15s alternate infinite;
  background: #1fbce1;
  border: 2px solid #1fbce1;
  width: 22px;
  height: 42px;
  transform: translate3d(-50vw, -10vh, 0) rotate(277deg);
}

.light-blue::after {
  -webkit-animation: light-blue-pseudo linear 20s alternate infinite;
          animation: light-blue-pseudo linear 20s alternate infinite;
  border: 2px solid #1fbce1;
  width: 6px;
  height: 45px;
  transform: translate3d(25vw, -5vh, 0) rotate(30deg);
}

@-webkit-keyframes light-blue {
  50% {
    transform: translate3d(41vw, 74vh, 0);
  }
  100% {
    transform: translate3d(3vw, 67vh, 0);
  }
}

@keyframes light-blue {
  50% {
    transform: translate3d(41vw, 74vh, 0);
  }
  100% {
    transform: translate3d(3vw, 67vh, 0);
  }
}
@-webkit-keyframes light-blue-pseudo {
  33% {
    transform: translate3d(24vw, -13vh, 0) rotate(136deg);
  }
  100% {
    transform: translate3d(25vw, -63vh, 0) rotate(208deg);
  }
}
@keyframes light-blue-pseudo {
  33% {
    transform: translate3d(24vw, -13vh, 0) rotate(136deg);
  }
  100% {
    transform: translate3d(25vw, -63vh, 0) rotate(208deg);
  }
}
.red {
  -webkit-animation: red linear 30s alternate infinite;
          animation: red linear 30s alternate infinite;
  border: 2px solid #b62f56;
  border-radius: 100%;
  width: 44px;
  height: 44px;
  transform: translate3d(34vw, 59vh, 0);
  z-index: 9;
}

.red::before {
  -webkit-animation: red-pseudo linear 15s alternate infinite;
          animation: red-pseudo linear 15s alternate infinite;
  background: #b62f56;
  border: 2px solid #b62f56;
  width: 13px;
  height: 37px;
  transform: translate3d(-9vw, 37vh, 0) rotate(226deg);
}

.red::after {
  -webkit-animation: red-pseudo linear 20s alternate infinite;
          animation: red-pseudo linear 20s alternate infinite;
  border: 2px solid #b62f56;
  width: 35px;
  height: 46px;
  transform: translate3d(-1vw, 40vh, 0) rotate(81deg);
}

@-webkit-keyframes red {
  50% {
    transform: translate3d(33vw, 22vh, 0);
  }
  100% {
    transform: translate3d(79vw, 21vh, 0);
  }
}

@keyframes red {
  50% {
    transform: translate3d(33vw, 22vh, 0);
  }
  100% {
    transform: translate3d(79vw, 21vh, 0);
  }
}
@-webkit-keyframes red-pseudo {
  33% {
    transform: translate3d(-21vw, 43vh, 0) rotate(77deg);
  }
  100% {
    transform: translate3d(20vw, -20vh, 0) rotate(50deg);
  }
}
@keyframes red-pseudo {
  33% {
    transform: translate3d(-21vw, 43vh, 0) rotate(77deg);
  }
  100% {
    transform: translate3d(20vw, -20vh, 0) rotate(50deg);
  }
}
.orange {
  -webkit-animation: orange linear 30s alternate infinite;
          animation: orange linear 30s alternate infinite;
  border: 2px solid #d5764c;
  border-radius: 100%;
  width: 38px;
  height: 38px;
  transform: translate3d(17vw, 39vh, 0);
  z-index: 6;
}

.orange::before {
  -webkit-animation: orange-pseudo linear 15s alternate infinite;
          animation: orange-pseudo linear 15s alternate infinite;
  background: #d5764c;
  border: 2px solid #d5764c;
  width: 25px;
  height: 44px;
  transform: translate3d(13vw, -33vh, 0) rotate(331deg);
}

.orange::after {
  -webkit-animation: orange-pseudo linear 20s alternate infinite;
          animation: orange-pseudo linear 20s alternate infinite;
  border: 2px solid #d5764c;
  width: 25px;
  height: 35px;
  transform: translate3d(27vw, -29vh, 0) rotate(36deg);
}

@-webkit-keyframes orange {
  50% {
    transform: translate3d(3vw, 80vh, 0);
  }
  100% {
    transform: translate3d(19vw, 84vh, 0);
  }
}

@keyframes orange {
  50% {
    transform: translate3d(3vw, 80vh, 0);
  }
  100% {
    transform: translate3d(19vw, 84vh, 0);
  }
}
@-webkit-keyframes orange-pseudo {
  33% {
    transform: translate3d(18vw, 1vh, 0) rotate(199deg);
  }
  100% {
    transform: translate3d(12vw, -51vh, 0) rotate(352deg);
  }
}
@keyframes orange-pseudo {
  33% {
    transform: translate3d(18vw, 1vh, 0) rotate(199deg);
  }
  100% {
    transform: translate3d(12vw, -51vh, 0) rotate(352deg);
  }
}
.yellow {
  -webkit-animation: yellow linear 30s alternate infinite;
          animation: yellow linear 30s alternate infinite;
  border: 2px solid #ffd53e;
  border-radius: 100%;
  width: 15px;
  height: 15px;
  transform: translate3d(42vw, 75vh, 0);
  z-index: 4;
}

.yellow::before {
  -webkit-animation: yellow-pseudo linear 15s alternate infinite;
          animation: yellow-pseudo linear 15s alternate infinite;
  background: #ffd53e;
  border: 2px solid #ffd53e;
  width: 33px;
  height: 17px;
  transform: translate3d(25vw, -51vh, 0) rotate(306deg);
}

.yellow::after {
  -webkit-animation: yellow-pseudo linear 20s alternate infinite;
          animation: yellow-pseudo linear 20s alternate infinite;
  border: 2px solid #ffd53e;
  width: 30px;
  height: 30px;
  transform: translate3d(-23vw, -63vh, 0) rotate(302deg);
}

@-webkit-keyframes yellow {
  50% {
    transform: translate3d(24vw, 76vh, 0);
  }
  100% {
    transform: translate3d(63vw, 13vh, 0);
  }
}

@keyframes yellow {
  50% {
    transform: translate3d(24vw, 76vh, 0);
  }
  100% {
    transform: translate3d(63vw, 13vh, 0);
  }
}
@-webkit-keyframes yellow-pseudo {
  33% {
    transform: translate3d(-4vw, -30vh, 0) rotate(166deg);
  }
  100% {
    transform: translate3d(-32vw, -11vh, 0) rotate(326deg);
  }
}
@keyframes yellow-pseudo {
  33% {
    transform: translate3d(-4vw, -30vh, 0) rotate(166deg);
  }
  100% {
    transform: translate3d(-32vw, -11vh, 0) rotate(326deg);
  }
}
.cyan {
  -webkit-animation: cyan linear 30s alternate infinite;
          animation: cyan linear 30s alternate infinite;
  border: 2px solid #78ffba;
  border-radius: 100%;
  width: 31px;
  height: 31px;
  transform: translate3d(5vw, 43vh, 0);
  z-index: 4;
}

.cyan::before {
  -webkit-animation: cyan-pseudo linear 15s alternate infinite;
          animation: cyan-pseudo linear 15s alternate infinite;
  background: #78ffba;
  border: 2px solid #78ffba;
  width: 11px;
  height: 47px;
  transform: translate3d(77vw, -23vh, 0) rotate(25deg);
}

.cyan::after {
  -webkit-animation: cyan-pseudo linear 20s alternate infinite;
          animation: cyan-pseudo linear 20s alternate infinite;
  border: 2px solid #78ffba;
  width: 35px;
  height: 42px;
  transform: translate3d(71vw, 4vh, 0) rotate(160deg);
}

@-webkit-keyframes cyan {
  50% {
    transform: translate3d(1vw, 18vh, 0);
  }
  100% {
    transform: translate3d(18vw, 50vh, 0);
  }
}

@keyframes cyan {
  50% {
    transform: translate3d(1vw, 18vh, 0);
  }
  100% {
    transform: translate3d(18vw, 50vh, 0);
  }
}
@-webkit-keyframes cyan-pseudo {
  33% {
    transform: translate3d(30vw, 61vh, 0) rotate(92deg);
  }
  100% {
    transform: translate3d(-1vw, 35vh, 0) rotate(342deg);
  }
}
@keyframes cyan-pseudo {
  33% {
    transform: translate3d(30vw, 61vh, 0) rotate(92deg);
  }
  100% {
    transform: translate3d(-1vw, 35vh, 0) rotate(342deg);
  }
}
.light-green {
  -webkit-animation: light-green linear 30s alternate infinite;
          animation: light-green linear 30s alternate infinite;
  border: 2px solid #98fd85;
  border-radius: 100%;
  width: 13px;
  height: 13px;
  transform: translate3d(72vw, 61vh, 0);
  z-index: 6;
}

.light-green::before {
  -webkit-animation: light-green-pseudo linear 15s alternate infinite;
          animation: light-green-pseudo linear 15s alternate infinite;
  background: #98fd85;
  border: 2px solid #98fd85;
  width: 32px;
  height: 43px;
  transform: translate3d(-4vw, 3vh, 0) rotate(347deg);
}

.light-green::after {
  -webkit-animation: light-green-pseudo linear 20s alternate infinite;
          animation: light-green-pseudo linear 20s alternate infinite;
  border: 2px solid #98fd85;
  width: 39px;
  height: 39px;
  transform: translate3d(-64vw, 34vh, 0) rotate(263deg);
}

@-webkit-keyframes light-green {
  50% {
    transform: translate3d(18vw, 49vh, 0);
  }
  100% {
    transform: translate3d(20vw, 13vh, 0);
  }
}

@keyframes light-green {
  50% {
    transform: translate3d(18vw, 49vh, 0);
  }
  100% {
    transform: translate3d(20vw, 13vh, 0);
  }
}
@-webkit-keyframes light-green-pseudo {
  33% {
    transform: translate3d(23vw, 28vh, 0) rotate(146deg);
  }
  100% {
    transform: translate3d(31vw, 81vh, 0) rotate(161deg);
  }
}
@keyframes light-green-pseudo {
  33% {
    transform: translate3d(23vw, 28vh, 0) rotate(146deg);
  }
  100% {
    transform: translate3d(31vw, 81vh, 0) rotate(161deg);
  }
}
.lime {
  -webkit-animation: lime linear 30s alternate infinite;
          animation: lime linear 30s alternate infinite;
  border: 2px solid #befb46;
  border-radius: 100%;
  width: 24px;
  height: 24px;
  transform: translate3d(55vw, 46vh, 0);
  z-index: 5;
}

.lime::before {
  -webkit-animation: lime-pseudo linear 15s alternate infinite;
          animation: lime-pseudo linear 15s alternate infinite;
  background: #befb46;
  border: 2px solid #befb46;
  width: 47px;
  height: 34px;
  transform: translate3d(-10vw, -5vh, 0) rotate(45deg);
}

.lime::after {
  -webkit-animation: lime-pseudo linear 20s alternate infinite;
          animation: lime-pseudo linear 20s alternate infinite;
  border: 2px solid #befb46;
  width: 39px;
  height: 37px;
  transform: translate3d(14vw, 28vh, 0) rotate(14deg);
}

@-webkit-keyframes lime {
  50% {
    transform: translate3d(76vw, 8vh, 0);
  }
  100% {
    transform: translate3d(99vw, 50vh, 0);
  }
}

@keyframes lime {
  50% {
    transform: translate3d(76vw, 8vh, 0);
  }
  100% {
    transform: translate3d(99vw, 50vh, 0);
  }
}
@-webkit-keyframes lime-pseudo {
  33% {
    transform: translate3d(-63vw, 25vh, 0) rotate(138deg);
  }
  100% {
    transform: translate3d(-1vw, -7vh, 0) rotate(162deg);
  }
}
@keyframes lime-pseudo {
  33% {
    transform: translate3d(-63vw, 25vh, 0) rotate(138deg);
  }
  100% {
    transform: translate3d(-1vw, -7vh, 0) rotate(162deg);
  }
}
.magenta {
  -webkit-animation: magenta linear 30s alternate infinite;
          animation: magenta linear 30s alternate infinite;
  border: 2px solid #6c046c;
  border-radius: 100%;
  width: 26px;
  height: 26px;
  transform: translate3d(52vw, 79vh, 0);
  z-index: 4;
}

.magenta::before {
  -webkit-animation: magenta-pseudo linear 15s alternate infinite;
          animation: magenta-pseudo linear 15s alternate infinite;
  background: #6c046c;
  border: 2px solid #6c046c;
  width: 17px;
  height: 17px;
  transform: translate3d(16vw, -15vh, 0) rotate(67deg);
}

.magenta::after {
  -webkit-animation: magenta-pseudo linear 20s alternate infinite;
          animation: magenta-pseudo linear 20s alternate infinite;
  border: 2px solid #6c046c;
  width: 43px;
  height: 33px;
  transform: translate3d(-10vw, -50vh, 0) rotate(161deg);
}

@-webkit-keyframes magenta {
  50% {
    transform: translate3d(21vw, 84vh, 0);
  }
  100% {
    transform: translate3d(59vw, 49vh, 0);
  }
}

@keyframes magenta {
  50% {
    transform: translate3d(21vw, 84vh, 0);
  }
  100% {
    transform: translate3d(59vw, 49vh, 0);
  }
}
@-webkit-keyframes magenta-pseudo {
  33% {
    transform: translate3d(23vw, 14vh, 0) rotate(69deg);
  }
  100% {
    transform: translate3d(22vw, 43vh, 0) rotate(184deg);
  }
}
@keyframes magenta-pseudo {
  33% {
    transform: translate3d(23vw, 14vh, 0) rotate(69deg);
  }
  100% {
    transform: translate3d(22vw, 43vh, 0) rotate(184deg);
  }
}
.lightish-red {
  -webkit-animation: lightish-red linear 30s alternate infinite;
          animation: lightish-red linear 30s alternate infinite;
  border: 2px solid #f04c81;
  border-radius: 100%;
  width: 19px;
  height: 19px;
  transform: translate3d(75vw, 21vh, 0);
  z-index: 10;
}

.lightish-red::before {
  -webkit-animation: lightish-red-pseudo linear 15s alternate infinite;
          animation: lightish-red-pseudo linear 15s alternate infinite;
  background: #f04c81;
  border: 2px solid #f04c81;
  width: 45px;
  height: 9px;
  transform: translate3d(-17vw, 33vh, 0) rotate(19deg);
}

.lightish-red::after {
  -webkit-animation: lightish-red-pseudo linear 20s alternate infinite;
          animation: lightish-red-pseudo linear 20s alternate infinite;
  border: 2px solid #f04c81;
  width: 39px;
  height: 43px;
  transform: translate3d(-8vw, -19vh, 0) rotate(222deg);
}

@-webkit-keyframes lightish-red {
  50% {
    transform: translate3d(62vw, 49vh, 0);
  }
  100% {
    transform: translate3d(12vw, 40vh, 0);
  }
}

@keyframes lightish-red {
  50% {
    transform: translate3d(62vw, 49vh, 0);
  }
  100% {
    transform: translate3d(12vw, 40vh, 0);
  }
}
@-webkit-keyframes lightish-red-pseudo {
  33% {
    transform: translate3d(-49vw, -23vh, 0) rotate(295deg);
  }
  100% {
    transform: translate3d(29vw, -21vh, 0) rotate(146deg);
  }
}
@keyframes lightish-red-pseudo {
  33% {
    transform: translate3d(-49vw, -23vh, 0) rotate(295deg);
  }
  100% {
    transform: translate3d(29vw, -21vh, 0) rotate(146deg);
  }
}
.pink {
  -webkit-animation: pink linear 30s alternate infinite;
          animation: pink linear 30s alternate infinite;
  border: 2px solid #ff4293;
  border-radius: 100%;
  width: 24px;
  height: 24px;
  transform: translate3d(55vw, 94vh, 0);
  z-index: 11;
}

.pink::before {
  -webkit-animation: pink-pseudo linear 15s alternate infinite;
          animation: pink-pseudo linear 15s alternate infinite;
  background: #ff4293;
  border: 2px solid #ff4293;
  width: 44px;
  height: 30px;
  transform: translate3d(37vw, -26vh, 0) rotate(105deg);
}

.pink::after {
  -webkit-animation: pink-pseudo linear 20s alternate infinite;
          animation: pink-pseudo linear 20s alternate infinite;
  border: 2px solid #ff4293;
  width: 42px;
  height: 19px;
  transform: translate3d(-55vw, -40vh, 0) rotate(124deg);
}

@-webkit-keyframes pink {
  50% {
    transform: translate3d(99vw, 40vh, 0);
  }
  100% {
    transform: translate3d(61vw, 38vh, 0);
  }
}

@keyframes pink {
  50% {
    transform: translate3d(99vw, 40vh, 0);
  }
  100% {
    transform: translate3d(61vw, 38vh, 0);
  }
}
@-webkit-keyframes pink-pseudo {
  33% {
    transform: translate3d(-44vw, 27vh, 0) rotate(189deg);
  }
  100% {
    transform: translate3d(-56vw, -21vh, 0) rotate(194deg);
  }
}
@keyframes pink-pseudo {
  33% {
    transform: translate3d(-44vw, 27vh, 0) rotate(189deg);
  }
  100% {
    transform: translate3d(-56vw, -21vh, 0) rotate(194deg);
  }
}
.text-center {
	color: #fff;
	text-transform: uppercase;
	font-size: 23px;
	margin: -50px 0 80px 0;
	display: block;
	text-align: center;
}
.box {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	background-color: rgba(0, 0, 0, 0.89);
	border-radius: 3px;
	padding: 70px 100px;
}
.input-container {
	position: relative;
	margin-bottom: 25px;
}
.input-container label {
	position: absolute;
	top: 0px;
	left: 0px;
	font-size: 16px;
	color: #fff;
	pointer-event: none;
	transition: all 0.5s ease-in-out;
}
.input-container input {
	border: 0;
	border-bottom: 1px solid #555;
	background: transparent;
	width: 100%;
	padding: 8px 0 5px 0;
	font-size: 16px;
	color: #fff;
}
.input-container input:focus {
	border: none;
	outline: none;
	border-bottom: 1px solid #e74c3c;
}
.btn {
  top: 0;
  left: 0;
  transition: all 0.15s linear 0s;
  position: relative;
  display: inline-block;
  padding: 15px 25px;
  background-color: #FFE800;
  text-transform: uppercase;
  color: #404040;
  font-family: arial;
  letter-spacing: 1px;
  box-shadow: -6px 6px 0 #404040;
  text-decoration: none;
}
.btn:hover {
  top: 3px;
  left: -3px;
  box-shadow: -3px 3px 0 #404040;
}
.btn:hover::after {
  top: 1px;
  left: -2px;
  width: 4px;
  height: 4px;
}
.btn:hover::before {
  bottom: -2px;
  right: 1px;
  width: 4px;
  height: 4px;
}
.btn::after {
  transition: all 0.15s linear 0s;
  content: "";
  position: absolute;
  top: 2px;
  left: -4px;
  width: 8px;
  height: 8px;
  background-color: #404040;
  transform: rotate(45deg);
  z-index: -1;
}
.btn::before {
  transition: all 0.15s linear 0s;
  content: "";
  position: absolute;
  bottom: -4px;
  right: 2px;
  width: 8px;
  height: 8px;
  background-color: #404040;
  transform: rotate(45deg);
  z-index: -1;
}

a.btn {
  position: relative;
}

a:active.btn {
  top: 6px;
  left: -6px;
  box-shadow: none;
}
a:active.btn:before {
  bottom: 1px;
  right: 1px;
}
a:active.btn:after {
  top: 1px;
  left: 1px;
}
.input-container input:focus ~ label,
.input-container input:valid ~ label {
	top: -12px;
	font-size: 12px;
}

        </style>
    </head>
    <body>
 <div class="purple"></div>
<div class="medium-blue"></div>
<div class="light-blue"></div>
<div class="red"></div>
<div class="orange"></div>
<div class="yellow"></div>
<div class="cyan"></div>
<div class="light-green"></div>
<div class="lime"></div>
<div class="magenta"></div>
<div class="lightish-red"></div>
<div class="pink"></div>
<br> 
<br>
<br> 
<br>
<br> 
<br>
<div class="box">
 <form>
        <%if(authUser==null ){%>
	<span class="text-center">Login</span>
	<div class="input-container">
	<input type="text" name="username" required=""/>
	<label>Nome</label>		
	</div>
	<button class="btn" name="login" type="submit">Logar</button>
         <%}else{%>
         <span class="text-center">Bem vindo <%= authUser %></span>
        <button class="btn" name="deslogar" type="submit">Deslogar</button>
        <%}%>
     </form>	
   </div>
  </body>
</html>
