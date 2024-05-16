% rebase('layout.tpl', title=title, year=year)

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Свойства Бинарных Отношений - Вариант №1</title> 
    <style>
        body {
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            margin: 0 auto; /* Центрирование по горизонтали */
            padding: 0;
            width: 70%; /* Ширина 70% */
            background-color: #000; /* Черный фон */
            color: #fff; /* Белый текст */
        }

        h1, h2 {
            text-align: center;
            color: #32CD32; /* Зеленый неоновый */
            font-size: 1.5em;
        }

        p, ol, li {
            width: 100%;
            box-sizing: border-box;
            text-align: justify;
            margin-bottom: 20px;
        }

        .formula {
            background-color: #3E3E3E; /* Зеленый неоновый */
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
            font-style: italic;
            text-align: center;
        }

        label {
            display: inline-block;
            background-color: #32CD32; /* Зеленый неоновый */
            color: #ffffff;
            padding: 10px 20px;
            border-radius: 5px;
            margin-bottom: 10px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease;
            text-align: center;
        }

        input[type="radio"] {
            display: none;
        }

        input[type="radio"]:checked + label {
            background-color: #ffffff;
            color: #32CD32; /* Зеленый неоновый */
        }

        #theorySection {
            display: block;
        }

        #calculatorSection {
            display: none;
        }

        .section {
            display: none;
        }

        .matrix-input {
            margin-bottom: 8px;
            width: 60px;
            height: 40px;
            text-align: center;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 1em;
            transition: border-color 0.3s ease;
        }

        .matrix-input:focus {
            border-color: #32CD32; /* Зеленый неоновый */
            outline: none;
        }

        .calc {
            text-align: center;
            font-size: 1.2em;
        }

        .button-container {
            text-align: center;
            margin-bottom: 20px;
        }

        .button {
            display: inline-block;
            background-color: #000000; /* Черный фон */
            color: 32CD32; /* Белый текст */
            padding: 10px 20px;
            border-radius: 5px;
            margin-right: 10px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease, border-color 0.3s ease; /* Добавлен переход для цвета рамки */
            border: 2px solid #FFFFFF; /* Белая рамка */
            font-size: 1.2em;
        }

        .button:hover {
            background-color: #32CD32; /* Зеленый фон при наведении */
            color: #000000; /* Белый текст */
            border-color: #32CD32; /* Зеленая рамка при наведении */
        }


        .content-container {
            text-align: center;
        }

        #matrix-size option:hover {
            background-color: #32CD32; /* Зеленый неоновый */
            color: #ffffff;
        }

        #teacher-img:hover {
            transform: scale(1.1);
            transition: transform 0.3s ease;
        }
    </style>
</head>
<body>
    <h1>Свойства Бинарных Отношений</h1>

    <div class="button-container">
        <div class="button" id="showTheory">Теория</div>
        <div class="button" id="showCalculator">Калькулятор</div>
    </div>

    <div class="content-container">
        <div id="theorySection" class="section">
            <!-- Теория -->
            <h2>Основные свойства бинарных отношений во множестве А</h2>

            <a href="https://giphy.com/gifs/animation-retro-sphere-l2SpSuTbUFcBg3UT6" target="_blank"><img id="teacher-img" src="https://media.giphy.com/media/l2SpSuTbUFcBg3UT6/giphy.gif" alt="derty" style="float: left; margin-right: 20px; width: 400px; height: 520px; vertical-align: middle;"></a>
            <p>Пусть R – бинарное отношение в А, т.е. R ⊂ А2.</p>
            <ol>
                <li><strong>Рефлексивность:</strong> Отношение R называется рефлексивным, если для любого элемента a ∈ A выполняется отношение aRa. Напр.: отношение «быть =»</li>
                <li><strong>Антирефлексивность:</strong> Отношение R называется антирефлексивным, если для любого элемента а ∈ А не выполняется соотношение аRа. Напр.: отношение «быть >»</li>
                <li><strong>Симметричность:</strong> Отношение R называется симметричным, если для любых двух элементов 𝑎j, 𝑎j ∈ А из того, что ai Raj, следует, что aj Rai. Напр.: «параллельность прямых» </li>
                <li><strong>Антисимметричность:</strong> Отношение R называется антисимметричным, если из соотношений ai Raj и aj Rai следует, что ai = aj. Напр.: отношение «быть ≤».</li>
                <li><strong>Асимметричность:</strong> Отношение R называется асимметричным, если ни для одной пары 𝑎i, 𝑎j ∈ А не выполняются одновременно соотношения ai Raj и aj Rai. Напр.: отношение «быть моложе».</li>
                <li><strong>Транзитивность:</strong> Отношение R называется транзитивным, если из того, что ai Raj и aj Rak, следует, что ai Rak. Напр.: отношение «быть делителем».</li>
                <li><strong>Антитранзитивность:</strong> Отношение R называется антитранзитивным, если оно не обладает свойством 6. Напр.: «перпендикулярность прямых» (!!)</li>
            </ol>

            <h2>Виды бинарных отношений во множестве</h2>
            <p>Отношение R в А называется отношением эквивалентности, если оно рефлексивно, симметрично и транзитивно. Напр.: отношения «равенства», «параллельности прямых», «подобия фигур»,…</p>
            <p>Отношения эквивалентности представляют особый интерес, т.к. именно они определяют признак, который допускает разбиение множества А на непересекающиеся подмножества, называемые классами эквивалентности.</p>
            <p><strong>Дополнительное отношение к данному:</strong> Для получения дополнительного отношения к бинарному отношению можно использовать операции такие как объединение, пересечение, разность или дополнение.</p>
            <p>Для этого предположим, у вас есть бинарное отношение в виде пар элементов. Например, отношение персон и их возраста:</p>
            <div class="formula">
            relation = {('Alice', 20), ('Bob', 25), ('Alice', 30)}
            </div>
            <p>Чтобы получить дополнительное отношение к этому бинарному отношению, вы можете выполнить различные операции:</p>
            <ol>
                <li><strong>Объединение (union):</strong> Получить все уникальные элементы из двух отношений.</li>
                <li><strong>Пересечение (intersection):</strong> Получить только общие элементы из двух отношений.</li>
                <li><strong>Разность (difference):</strong> Получить элементы, которые есть в первом отношении, но отсутствуют во втором.</li>
                <li><strong>Дополнение (complement):</strong> Получить элементы, которые есть в одном отношении, но отсутствуют в другом.</li>
            </ol>
            <!-- Ваш HTML для теории -->
        </div>

        <div id="calculatorSection" class="section">
            <!-- Калькулятор -->
            <h1>Калькулятор</h1>
          
            <!-- Ваш HTML для калькулятора -->
            <p class="calc" for="matrix-size" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Выберите размер матрицы:</p>
            <select id="matrix-size" style="display: block; margin: 0 auto; text-align: center; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: 1.1em;">
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
                <div class="button" >Решить</div>
            </div>
        </div>

        <script>
                // Показать раздел "Теория"
        document.getElementById('showTheory').addEventListener('click', function () {
            document.getElementById('theorySection').style.display = 'block';
            document.getElementById('calculatorSection').style.display = 'none';
        });

        // Показать раздел "Калькулятор"
        document.getElementById('showCalculator').addEventListener('click', function () {
            document.getElementById('calculatorSection').style.display = 'block';
            document.getElementById('theorySection').style.display = 'none';
        });

        // Функция для генерации вводов матрицы
        function generateMatrixInputs(size) {
            // Очистить предыдущие вводы
            document.getElementById('matrix-container').innerHTML = '';

            // Генерировать вводы для каждой строки и столбца
            for (let i = 0; i < size; i++) {
                for (let j = 0; j < size; j++) {
                    const input = document.createElement('input');
                    input.type = 'text';
                    input.className = 'matrix-input';
                    input.placeholder = `${i + 1},${j + 1}`;
                    input.addEventListener('input', function () {
                        this.value = this.value.replace(/[^\d.-]/g, ''); // Ограничиваем ввод только числами и цифрами
                    });
                    document.getElementById('matrix-container').appendChild(input);
                }
                // Добавить перенос строки после каждой строки
                document.getElementById('matrix-container').appendChild(document.createElement('br'));
            }
        }

        // Событие для изменения размера матрицы
        document.getElementById('matrix-size').addEventListener('change', function () {
            const size = parseInt(this.value);
            generateMatrixInputs(size);
        });

        // Генерировать вводы для начального размера
        generateMatrixInputs(parseInt(document.getElementById('matrix-size').value));
        </script>
    </div>
</body>
</html>
