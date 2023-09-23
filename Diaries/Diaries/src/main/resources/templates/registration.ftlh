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

            background: url("https://pro-dachnikov.com/uploads/posts/2023-01/1673521554_pro-dachnikov-com-p-foto-pismennogo-stola-sverkhu-10.jpg")no-repeat center center fixed;
            background-size: cover ;
        }
    </style>
</head>
<body>
<h1>Дневник</h1>
<h4>Регистрация</h4>
<form action="/registration"method="post">
    Имя пользователя: <input type="text"name="name"><br><br>
    Элю почта: <input type="email"name="email"><br><br>
    Номер телефона: <input type="text" name="phoneNumber"><br><br>
    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden"name="_csrf"value="${_csrf.token}">
    <input type="submit"value="Зарегестрироватся"/>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>