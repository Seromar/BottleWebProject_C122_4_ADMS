 
% rebase('layout.tpl', title='Assymetric Antitransitivity Reverse', year=year)

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>�������� �������� ���������(���)</title> 
    <link rel="stylesheet" href="static/content/StylesheetSlup.css">
    <script src="static/scripts/Assymetrical.js"></script>
</head>
<body>
    <h1>���� �������� ���������</h1>
     <div class="button-container">
        <div class="button" id="showTheory" onclick="showTheory()">������</div>
        <div class="button" id="showCalculator" onclick="showCalculator()">�����������</div>
    </div>

    <div class="content-container">
        <div id="theorySection" class="section">
            <!-- ������ -->
            <h1>�������� �������� ���������</h1>
            <p>�������� �������� ��������� - ��� ��������� �� ���������� � ������ ���������, ������� ��������� � ��������� ��� ���������, ��� ������� ������ ������ ����. ������� ���������� ����� ��������.</p>
            <div class="animate-from-left">
                    <a target="_blank"><img id="teacher-img" src="/static/images/CirlceBinary.gif" alt="derty" style="float: left; margin-right: 20px; width: 400px; height: 400px; vertical-align: center;"></a>
            </div>

            <ol>
                <li>
                    <strong>�������� ���������:</strong> � ���������� �������� ��������� �� ��������� A - ��� ������������ ��������� ������������ A x A, ��� ������ ������� ����� ������������ ������������ ����� ���� ��������� �� ��������� A.
                </li>
                <li>
                    <strong>�������� �������� ���������:</strong> �������� �������� ��������� ��� ������� ��������� ��������� R �� ��������� A - ��� ����� �������� ���������, �� � ����������, ��������� � ��������� �� R. ������� �������, ���� (a, b) ����������� R, �� (b, a) ����������� ��������� ��������� ��������� R{-1}. �������� �������� ��������� ���������� ��������������� ���� ��� � �������� ���������.
                </li>
                <li>
                    <strong>�������� ��������� ��������� ���������:</strong>
                    <ul>
                        <li>�������� �������� ��������� �� ����������� �����������, �� ���� �������� ��������� �����������, �� �������� ��������� ����� ����� ������������.</li>
                        <li>�������� �������� ��������� � ������������� ��������� �������� ������������.</li>
                        <li>�������� �������� ��������� ��� ������������� ��������� �������� ������������.</li>
                    </ul>
                </li>
            </ol>
                      
            <div class="formula">
                ����� ���� ��������� R = {(1, 2), (2, 3), (3, 4)} �� ��������� A = {1, 2, 3, 4}. ����� �������� �������� ��������� R^{-1} ����� ����� {(2, 1), (3, 2), (4, 3)}, ��� ��� ��� ���� ���� �������������.
            </div>
        </div>

   
        <div id="calculatorSection" class="section">
            <!-- ����������� -->
            <h1>�����������</h1>
  
            <!-- ��� HTML ��� ������������ -->
            <p class="calc" for="matrix-size" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">�������� ������ �������:</p>
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
                <div class="button" onclick="generateMatrixInputs(parseInt(document.getElementById('matrix-size').value));">������</div>
            </div>
            <div class="theory-block animate-from-left">
                <h2>�������</h2>
            </div>
        </div>
    </div>
                       
    
    </body>
 </html>
