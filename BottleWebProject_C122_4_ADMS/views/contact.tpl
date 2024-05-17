
% rebase('layout.tpl', title=title, year=year)

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Свойства Бинарных Отношений(СБО)</title> 
    <link rel="stylesheet" href="static/content/Var1Stylesheet.css">
    <script src="static/scripts/BinaryVar1.js"></script>
</head>
<body>
<div>

    <h1>Свойства Бинарных Отношений</h1>

    <div class="button-container">
        <div class="button" id="showTheory" onClick="showTheory()">Теория</div>
        <div class="button" id="showCalculator" onClick="showCalculator()">Калькулятор</div>
    </div>

    <div class="content-container">
        <div id="theorySection" class="section">
            <!-- Теория -->
            <h2>Основные свойства бинарных отношений во множестве А</h2>

           
            <div class="theory-block animate-from-left">
            <img id="teacher-img" src="https://media.giphy.com/media/l2SpSuTbUFcBg3UT6/giphy.gif" alt="derty" style="float: left; margin-right: 20px; width: 400px; height: 500px; vertical-align: middle;">

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
            </div>

            <h2>Виды бинарных отношений во множестве</h2>
            <div class="theory-block animate-from-bottom-right">
            <p>Отношение R в А называется отношением эквивалентности, если оно рефлексивно, симметрично и транзитивно. Напр.: отношения «равенства», «параллельности прямых», «подобия фигур»,…</p>
            <p>Отношения эквивалентности представляют особый интерес, т.к. именно они определяют признак, который допускает разбиение множества А на непересекающиеся подмножества, называемые классами эквивалентности.</p>
            <p><strong>Дополнительное отношение к данному:</strong> Для получения дополнительного отношения к бинарному отношению можно использовать операции такие как объединение, пересечение, разность или дополнение.</p>
            <p>Для этого предположим, у вас есть бинарное отношение в виде пар элементов. Например, отношение персон и их возраста:</p>
            </div>
            <div class="formula">
            relation = {('Alice', 20), ('Bob', 25), ('Alice', 30)}
            </div>

            <div class="theory-block animate-from-left">
            <p>Чтобы получить дополнительное отношение к этому бинарному отношению, вы можете выполнить различные операции:</p>
            <ol>
                <li><strong>Объединение (union):</strong> Получить все уникальные элементы из двух отношений.</li>
                <li><strong>Пересечение (intersection):</strong> Получить только общие элементы из двух отношений.</li>
                <li><strong>Разность (difference):</strong> Получить элементы, которые есть в первом отношении, но отсутствуют во втором.</li>
                <li><strong>Дополнение (complement):</strong> Получить элементы, которые есть в одном отношении, но отсутствуют в другом.</li>
            </ol>
            </div>
            <!-- Ваш HTML для теории -->
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
            <div class="theory-block">
            <h2>Решение</h2>
            </div>
        </div>
    </div>
</body>
</html>
