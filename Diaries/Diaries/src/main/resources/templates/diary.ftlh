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
<h1>Дневник </h1><hr>
<#if user.email??>
    <h3>Имя пользователя: <i>${user.name}</i></h3>
    <form action="/login"method="post">
        <input type="hidden"name="_csrf"value="${_csrf.token}">
        <input type="submit" value="Выйти"/>
    </form>
    <h4>Твой дневник</h4>
    <form action="/"method="get">
        Поиск по дате: <input type="text"name="date"><br>
        <input type="submit" value="Поиск"/>
    </form>
    <#list diary as diary>
        <div>
            <p><b>${diary.date}</b>${diary.title}|<a href="/diary/${diary.id}">Подробнее.....</a> </p>
        </div>
    <#else>
        <h3>Дневников нет</h3>
    </#list>
<#else>
    <a href="/login">Войти</a></h1><hr>
</#if>
<#if user.email??>
<hr>
<h3>Создать новый дневник</h3>
<form action="/diary/create"method="post">
    Название дневника:<input type="text" name="title"/><br><br>
    Описание дневника:<input type="text" name="description"/><br><br>
    Колличество страниц дневника:<input type="number" name="pages"/><br><br>
    Дата написания дневника:<input type="text" name="date"/><br><br>
    Текст дневника:<input type="text" name="text"/><br><br>
    <input type="hidden"name="_csrf"value="${_csrf.token}">
    <input type="submit" value="Добавить дневник"/>
</form>
</#if>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
        integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>
</body>
</html>