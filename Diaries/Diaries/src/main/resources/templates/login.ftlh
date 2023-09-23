<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/login">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
          crossorigin="anonymous">
    <title>Дневники</title>
    <style>
        body{

            background: url("https://kalix.club/uploads/posts/2023-03/1677780471_kalix-club-p-fon-stol-vid-sverkhu-vkontakte-58.jpg")no-repeat center center fixed;
            background-size: cover ;
        }
    </style>
</head>
<body>
<h1>Дневник</h1>
<h4>Авторизация</h4>
<form action="/login"method="post">
    Эл.почта: <input type="email"name="username"><br><br>
    Пароль: <input type="password"name="password"><br><br>
    <input type="hidden"name="_csrf"value="${_csrf.token}">
    <input type="submit"value="Вход"/>
</form>
<a href="/registration">Зарегистрироватся</a>
</body>
</html>