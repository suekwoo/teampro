<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="html">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="ie-edge"/>
    <meta name="keywords" content="Yulian Brito, Yulian, Brito, Frontend Developer, Sign Up Sign In 1"/>
    <meta name="author" content="Yulian Brito"/>
    <title>회원가입</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"/> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/joincss">
    <script src="${pageContext.request.contextPath}/javascript/joinexample.js"></script>

</head>
  

  <body class="body">

  <!-- Choose Form -->

    <section class="form-container">
      <span id="arrowClick" class="form-container__arrow"><i class="fa fa-arrow-circle-left" aria-hidden="true"></i></span>
      <div class="overlay"></div>
      <div class="choose-form">
        <div class="title">
          <h1 class="title__h1">Welcome<br>(회사 이름)</h1> 
        </div>
        <div class="buttons">
          <a id="signUp" class="buttons__signup" href="#">Sign up</a>
          <a id="login" class="buttons__signup buttons__signup--login" href="#">Login</a>  
        </div>
      </div> 

  <!-- Login Form -->

      <div class="login-form">
        <div class="form-wrapper">
          <form method="post">
            <label class="form-wrapper__label" for="login-username">Username</label>
            <input id="login-username" class="form-wrapper__input" type="text" placeholder="Username" name="username" required>
            <label class="form-wrapper__label" for="login-password">Password</label>
            <input id="login-password" class="form-wrapper__input" type="password" placeholder="Password" name="password" pattern=".{3,}" title="Password must contain at least 3 characters" required>
            <a class="login-form__forgot-password" href="#">Forgot password?</a>
            <button class="buttons__signup buttons__signup--login-form" type="submit" href="#">Login</button>
          </form>

        </div>
      </div>

  <!-- Register Form -->

      <div class="login-form login-form--register">
        <div class="form-wrapper">
          <form method="post">
            <label class="form-wrapper__label" for="signup-name">Name</label>
            <input id="signup-name" class="form-wrapper__input" type="text" placeholder="Name" name="name" required>
            <label class="form-wrapper__label" for="signup-username">Username</label>
            <input id="signup-username" class="form-wrapper__input" type="text" placeholder="Username" name="username" required>
            <label class="form-wrapper__label" for="signup-password">Password</label>
            <input id="signup-password" class="form-wrapper__input" type="password" placeholder="Password" name="password" pattern=".{3,}" title="Password must contain at least 3 characters" required>
            <label class="form-wrapper__label" for="signup-birth">Date Of Birth(YYYY/MM/DD)</label>
            <input id="signup-email" class="form-wrapper__input" type="birth" placeholder="YYYY/MM/DD" name="birth" required>
            <label class="form-wrapper__label" for="signup-phone">Phone</label>
            <input id="signup-email" class="form-wrapper__input" type="phone" placeholder="Phone Number" name="phone" required>
            <label class="form-wrapper__label" for="signup-email">Email</label>
            <input id="signup-email" class="form-wrapper__input" type="email" placeholder="example@hotmail.com" name="email" required>
            <button class="buttons__signup buttons__signup--sign-up-form" type="submit">Sign up</button>
          </form>


        </div>
      </div>
    </section>  
     
  </body>
</html>