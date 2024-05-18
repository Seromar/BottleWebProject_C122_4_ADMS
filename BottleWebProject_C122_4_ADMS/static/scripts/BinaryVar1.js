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

// ������� ��� ���������� ������ �� �������
function readMatrix(size) {
    const matrix = [];
    const inputs = document.getElementsByClassName('matrix-input');
    let index = 0;
    for (let i = 0; i < size; i++) {
        const row = [];
        for (let j = 0; j < size; j++) {
            row.push(parseInt(inputs[index].value) || 0);
            index++;
        }
        matrix.push(row);
    }
    return matrix;
}

// ������� ��� �������� ��������������
function isReflexive(matrix, size) {
    for (let i = 0; i < size; i++) {
        if (matrix[i][i] !== 1) {
            return false;
        }
    }
    return true;
}

// ������� ��� �������� ��������������
function isSymmetric(matrix, size) {
    for (let i = 0; i < size; i++) {
        for (let j = 0; j < size; j++) {
            if (matrix[i][j] !== matrix[j][i]) {
                return false;
            }
        }
    }
    return true;
}

// ������� ��� �������� ��������������
function isTransitive(matrix, size) {
    for (let i = 0; i < size; i++) {
        for (let j = 0; j < size; j++) {
            for (let k = 0; k < size; k++) {
                if (matrix[i][j] && matrix[j][k] && !matrix[i][k]) {
                    return false;
                }
            }
        }
    }
    return true;
}

// ������� ��� ���������� �����
function drawGraph(matrix, size) {
    const cy = cytoscape({
        container: document.getElementById('cy'),
        elements: [],
        style: [
            {
                selector: 'node',
                style: {
                    'background-color': '#fff',
                    'label': 'data(id)',
                    'color': '#000'  // ���� ������
                }
            },
            {
                selector: 'edge',
                style: {
                    'width': 3,
                    'line-color': '#fff',
                    'target-arrow-color': '#fff',
                    'target-arrow-shape': 'triangle',
                    'color': '#fff'  // ���� ������ �� �����
                }
            }
        ],
        layout: {
            name: 'grid',
            rows: size
        }
    });

    for (let i = 0; i < size; i++) {
        cy.add({ group: 'nodes', data: { id: `${i + 1}` } });
    }

    for (let i = 0; i < size; i++) {
        for (let j = 0; j < size; j++) {
            if (matrix[i][j] === 1) {
                cy.add({ group: 'edges', data: { source: `${i + 1}`, target: `${j + 1}` } });
            }
        }
    }

    cy.layout({ name: 'grid', rows: size }).run();
}

// ������� ��� �������� �������������� ��������� � ���������� ��������������� ���������
function checkEquivalenceRelation() {
    const size = parseInt(document.getElementById('matrix-size').value);
    const matrix = readMatrix(size);

    const reflexive = isReflexive(matrix, size);
    const symmetric = isSymmetric(matrix, size);
    const transitive = isTransitive(matrix, size);

    let resultText = `��������������: ${reflexive ? '��' : '���'}<br>`;
    resultText += `��������������: ${symmetric ? '��' : '���'}<br>`;
    resultText += `��������������: ${transitive ? '��' : '���'}<br>`;

    if (reflexive && symmetric && transitive) {
        resultText += "��������� �������� �������������.";
    } else {
        resultText += "��������� �� �������� �������������.";
    }

    document.getElementById('result').innerHTML = resultText;

    // ��������� ����
    drawGraph(matrix, size);
}

// ������������� ������� �� ���������
window.onload = function () {
    handleMatrixSizeChange();
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


document.addEventListener('DOMContentLoaded', function () {
    const theoryBlocks = document.querySelectorAll('.theory-block');

    function checkVisibility() {
        const triggerBottom = window.innerHeight * 0.75;

        theoryBlocks.forEach(block => {
            const blockTop = block.getBoundingClientRect().top;

            if (blockTop < triggerBottom) {
                block.classList.add('scroll-animation');
            }
        });
    }

    window.addEventListener('scroll', checkVisibility);
    checkVisibility(); // ��������� ����� ��� �������� ��������
});


// ����� ������� �������������
initialize();

