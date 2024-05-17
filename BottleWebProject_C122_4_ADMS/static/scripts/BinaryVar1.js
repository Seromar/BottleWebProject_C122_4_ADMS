// Функция для отображения раздела "Теория"
function showTheory() {
    document.getElementById('theorySection').style.display = 'block';
    document.getElementById('calculatorSection').style.display = 'none';
}

// Функция для отображения раздела "Калькулятор"
function showCalculator() {
    document.getElementById('calculatorSection').style.display = 'block';
    document.getElementById('theorySection').style.display = 'none';
}

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

// Функция для обработки события изменения размера матрицы
function handleMatrixSizeChange() {
    const size = parseInt(document.getElementById('matrix-size').value);
    generateMatrixInputs(size);
}


// Функция для инициализации
function initialize() {
    // Показать раздел "Теория"
    document.getElementById('showTheory').addEventListener('click', showTheory);

    // Показать раздел "Калькулятор"
    document.getElementById('showCalculator').addEventListener('click', showCalculator);

    // Событие для изменения размера матрицы
    document.getElementById('matrix-size').addEventListener('change', handleMatrixSizeChange);

    // Генерировать вводы для начального размера
    generateMatrixInputs(parseInt(document.getElementById('matrix-size').value));
}

// Вызов функции инициализации
initialize();

