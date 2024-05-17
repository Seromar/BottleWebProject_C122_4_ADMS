document.addEventListener('DOMContentLoaded', function () {
    const calculatorTitle = document.getElementById('calculator-title');
    const graphForm = document.getElementById('graph-form');
    const arrow = document.getElementById('arroww');
    const capacityMatrix = document.getElementById('capacity-matrix');
    const vertexCountInput = document.getElementById('vertex-count');
    const decrementButton = document.getElementById('decrement-button');
    const incrementButton = document.getElementById('increment-button');
    const calculateButton = document.getElementById('calculate-button');

    function generateMatrix(vertexCount) {
        // Clear existing matrix
        capacityMatrix.innerHTML = '';

        // Generate matrix input fields with labels
        for (let i = 0; i <= vertexCount; i++) {
            for (let j = 0; j <= vertexCount; j++) {
                const cell = document.createElement('div');
                cell.className = 'matrix-cell';

                if (i === 0 && j === 0) {
                    cell.textContent = ''; // Set 's' in the top-left cell
                } else if (i === 0 && j !== 0) {
                    cell.textContent = 'x' + j;
                } else if (j === 0 && i !== 0) {
                    cell.textContent = 'x' + i;
                } else {
                    const input = document.createElement('input');
                    input.type = 'text'; // Changed input type to text
                    input.style.width = '50px'; // Adjust width as needed
                    cell.appendChild(input);
                }
                capacityMatrix.appendChild(cell);
            }
            const lineBreak = document.createElement('br');
            capacityMatrix.appendChild(lineBreak);
        }
    }

    function updateVertexCount(amount) {
        let currentCount = parseInt(vertexCountInput.value) + amount;
        if (currentCount < 2) {
            currentCount = 2; // Minimum value
        }
        vertexCountInput.value = currentCount;
        generateMatrix(currentCount);
    }

    decrementButton.addEventListener('click', function () {
        updateVertexCount(-1);
    });

    incrementButton.addEventListener('click', function () {
        updateVertexCount(1);
    });

    calculatorTitle.addEventListener('click', function () {
        if (graphForm.style.display === 'none') {
            graphForm.style.display = 'block';
            arrow.textContent = '↑';
        } else {
            graphForm.style.display = 'none';
            arrow.textContent = '↓';
        }
    });

    calculateButton.addEventListener('click', function () {
        // Add your calculation logic here
        alert('Calculating...');
    });

    // Initial generation of matrix with default value 2
    generateMatrix(2);
});

