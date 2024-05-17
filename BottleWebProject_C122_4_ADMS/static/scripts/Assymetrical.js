// ������� ��� ����������� ������� "������"
function showTheory() {
    document.getElementById('theorySection').style.display = 'block';
    document.getElementById('calculatorSection').style.display = 'none';
}

// ������� ��� ����������� ������� "�����������"
function showCalculator() {
    document.getElementById('calculatorSection').style.display = 'block';
    document.getElementById('theorySection').style.display = 'none';
}

// ������� ��� ��������� ������ �������
function generateMatrixInputs(size) {
    // �������� ���������� �����
    document.getElementById('matrix-container').innerHTML = '';

    // ������������ ����� ��� ������ ������ � �������
    for (let i = 0; i < size; i++) {
        for (let j = 0; j < size; j++) {
            const input = document.createElement('input');
            input.type = 'text';
            input.className = 'matrix-input';
            input.placeholder = `${i + 1},${j + 1}`;
            input.addEventListener('input', function () {
                this.value = this.value.replace(/[^\d.-]/g, ''); // ������������ ���� ������ ������� � �������
            });
            document.getElementById('matrix-container').appendChild(input);
        }
        // �������� ������� ������ ����� ������ ������
        document.getElementById('matrix-container').appendChild(document.createElement('br'));
    }
}

// ������� ��� ��������� ������� ��������� ������� �������
function handleMatrixSizeChange() {
    const size = parseInt(document.getElementById('matrix-size').value);
    generateMatrixInputs(size);
}


// ������� ��� �������������
function initialize() {
    // �������� ������ "������"
    document.getElementById('showTheory').addEventListener('click', showTheory);

    // �������� ������ "�����������"
    document.getElementById('showCalculator').addEventListener('click', showCalculator);

    // ������� ��� ��������� ������� �������
    document.getElementById('matrix-size').addEventListener('change', handleMatrixSizeChange);

    // ������������ ����� ��� ���������� �������
    generateMatrixInputs(parseInt(document.getElementById('matrix-size').value));
}

// ����� ������� �������������
initialize();

