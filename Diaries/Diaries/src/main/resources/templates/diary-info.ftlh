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
<h4>Подробгая иформация о дневнике</h4>
<b>Название дневника:</b>${diary.title}<br>
<b>Описание дневника:</b>${diary.description}<br>
<b>Колличество страниц дневника:</b>${diary.pages}<br>
<b>Дата написание дневника:</b>${diary.date}<br>
<b>Текст дневника:</b>${diary.text}<br>
<hr>
    <form action="/diary/delete/${diary.id}"method="post">
        <input type="integer" name="id" id="id" value="${diary.id}"/>
        <input type="hidden"name="_csrf"value="${_csrf.token}">
        <input type="submit" value="Удалить дневник"/>
    </form>
<a href="/">Вернуться</a><hr>
</body>
</html>