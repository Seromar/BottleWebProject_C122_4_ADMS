 
% rebase('layout.tpl', title='Assymetric Antitransitivity Reverse', year=year)

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Свойства Бинарных Отношений(СБО)</title> 
    <link rel="stylesheet" href="static/content/StylesheetSlup.css">
    <script src="static/scripts/Assymetrical.js"></script>
</head>
<body>
    <h1>Виды бинарных Отношений</h1>
     <div class="button-container">
        <div class="button" id="showTheory" onclick="showTheory()">Теория</div>
        <div class="button" id="showCalculator" onclick="showCalculator()">Калькулятор</div>
    </div>

    <div class="content-container">
        <div id="theorySection" class="section">
            <!-- Теория -->
            <h1>Обратное бинарное отношение</h1>
            <p>Обратное бинарное отношение - это концепция из математики и теории отношений, которая возникает в контексте пар элементов, где порядок играет важную роль. Давайте разберемся более подробно.</p>
            <div class="animate-from-left">
                    <a target="_blank"><img id="teacher-img" src="/static/images/CirlceBinary.gif" alt="derty" style="float: left; margin-right: 20px; width: 400px; height: 400px; vertical-align: center;"></a>
            </div>

            <ol>
                <li>
                    <strong>Бинарное отношение:</strong> В математике бинарное отношение на множестве A - это подмножество декартова произведения A x A, где каждый элемент этого подмножества представляет собой пару элементов из множества A.
                </li>
                <li>
                    <strong>Обратное бинарное отношение:</strong> Обратное бинарное отношение для данного бинарного отношения R на множестве A - это также бинарное отношение, но с элементами, обратными к элементам из R. Другими словами, если (a, b) принадлежит R, то (b, a) принадлежит обратному бинарному отношению R{-1}. Обратное бинарное отношение получается инвертированием всех пар в исходном отношении.
                </li>
                <li>
                    <strong>Свойства обратного бинарного отношения:</strong>
                    <ul>
                        <li>Обратное бинарное отношение не обязательно симметрично, но если исходное отношение симметрично, то обратное отношение также будет симметричным.</li>
                        <li>Обратное бинарное отношение к рефлексивному отношению остается рефлексивным.</li>
                        <li>Обратное бинарное отношение для транзитивного отношения остается транзитивным.</li>
                    </ul>
                </li>
            </ol>

            <p><strong>Пример:</strong> Пусть дано отношение R = {(1, 2), (2, 3), (3, 4)} на множестве A = {1, 2, 3, 4}. Тогда обратное бинарное отношение R^{-1} будет равно {(2, 1), (3, 2), (4, 3)}, так как все пары были инвертированы.</p>
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
            <div class="theory-block animate-from-left">
                <h2>Решение</h2>
            </div>
        </div>
        </div>
                       
    </div>
    </body>
 </html>