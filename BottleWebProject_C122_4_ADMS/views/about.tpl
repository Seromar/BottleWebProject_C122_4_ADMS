% rebase('layout.tpl', title=title, year=year)

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<title>Карточки авторов</title>
<style>
.card {
    border: 1px solid #ccc;
    border-radius: 8px;
    padding: 20px;
    margin: 10px;
    width: 300px;
    height: 600px;
    display: inline-block;
    transition: all 0.3s ease;
    background-color: #fff;
    overflow: hidden; /* Обрезать изображение, если оно больше */
    justify-content: center; /* Центрирование по горизонтали */
    align-items: center; /* Центрирование по вертикали */

}
.card:hover {
    transform: scale(1.05);
    background-color: #F86979;
}
.card img-container {
    max-width: 100%;
    max-height: 100%;
    overflow: hidden; /* Обрезать изображение, если оно больше */
}

.card img {
    max-width: 250px;
    max-height: 400px;
    border-radius: 8px;
}


.card h3,
.card p,
.card a {
    margin: 10px 0;
}

.card p:last-child {
    margin-bottom: 0;
}

.card a {
    text-decoration: none;
    color: #333;
}

.card p:last-child {
    margin-bottom: 0;
}

.card a {
    text-decoration: none;
    color: #333;
}
h3 {
    font-weight: bold;
}
</style>
</head>
<body>
<div>
    <div class="card">
        <img src="\static\images\Artemia.jpg" alt="Изображение Артемия">
        <h3>Афанасовский Артемий Рустамович</h3>
        <p>Артемий - разработчик со страстью к творчеству. Он любит создавать креативные проекты.</p>
        <h3>
            <a href="https://web.telegram.org/a/#1059657464"><i class="fab fa-telegram" title="Go to Telegram brand"></i></a>
            <a href="https://vk.com/flannel_butterfly"><i class="fab fa-vk" title="Go to VK brand"></i></a>
        </h3>
    </div>

    <div class="card">
        <img src="\static\images\Dinar.jpeg" alt="Изображение автора">
        <h3>Дарский Динар Маратович</h3>
        <p>Динар - разработчик с достаточно большим опытом работы с клиентами. Он умеет расположить к себе и добиться всего необходимого.</p>
        <h3>
            <a href="https://web.telegram.org/a/#1115007593"><i class="fab fa-telegram" title="Go to Telegram brand"></i></a>
            <a href="https://vk.com/darik097"><i class="fab fa-vk" title="Go to VK brand"></i></a>
        </h3>
    </div>

    <div class="card">
        <img src="\static\images\Said.jpeg" alt="Изображение автора">
        <h3>Мельзетдинов Саид Ильдарович</h3>
        <p>Саид - дизайнер с тонким вкусом и визуальным мышлением. Он создает удивительные макеты и концепции, которые вдохновляют жить дальше.</p>
        <h3>
            <a href="https://web.telegram.org/a/#1130318202"><i class="fab fa-telegram" title="Go to Telegram brand"></i></a>
            <a href="https://vk.com/lilsaidd"><i class="fab fa-vk" title="Go to VK brand"></i></a>
        </h3>
    </div>

    <div class="card">
        <img src="\static\images\Slupchuk.jpg" alt="Изображение автора">
        <h3>Слупчук Егор Артемович</h3>
        <p>Егор - писатель и исследователь сферы искусственного интеллекта. Его работы раскрывают потенциал технологий и будущие возможности.</p>
        <h3>
            <a href="https://t.me/EgorSlou"><i class="fab fa-telegram" title="Go to Telegram brand"></i></a>
            <a href="https://vk.com/egorslup"><i class="fab fa-vk" title="Go to VK brand"></i></a>
        </h3>
    </div>

</div>

</body>
</html>