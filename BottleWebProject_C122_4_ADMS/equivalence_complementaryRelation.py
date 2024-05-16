##### Код Динара ######

import random
from bottle import datetime, post, request 
from pyvis.network import Network

### Функции проверки на рефлексивность, симметричность, транзитивность
def check_equivalence_relation(relation):
    # Проверка на рефлексивность
    is_reflexive = all((a, a) in relation for a in relation.keys())

    # Проверка на симметричность
    is_symmetric = all((b, a) in relation for a, b in relation.keys())

    # Проверка на транзитивность
    is_transitive = all((a, c) in relation for a in relation.keys() for b in relation.keys() for c in relation.keys() if (a, b) in relation and (b, c) in relation)

    return is_reflexive, is_symmetric, is_transitive

# Получение дополнительного отношения
def find_additional_relation(relation):
    # Для примера добавим пару элементов, которые нарушают симметричность
    additional_relation = relation.sort()
    return additional_relation

####Функция получения множества значений (множества А)####
def getABunch(relation):
    result = []
    for a2, b2, in relation:
        if a2 not in result:
            result.append(a2)
        if b2 not in result:
            result.append(b2)
    return result
# функция нахождения обратного отношения
def find_inverse_relation(relation):
    Abunch = getABunch(relation)
    result = [(b, a) for a, b in relation]
    return result

#### Функция генерации подписей к вершинам графа ###
def namePeak(relation):  # получает отношение вида [(1, 2), (2, 1), (3, 2)]
    resultTitles = []
    count = 0
    bunchA = getABunch(relation)
    for i in bunchA:
        count += 1
        resultTitles.append(str(count))
    return resultTitles
#### Функция генерации titles к вершинам графа ###
def nameTitles(relation):  # получает отношение вида [(1, 2), (2, 1), (3, 2)]
    resultTitles = []
    count = 0
    bunchA = getABunch(relation)
    for i in bunchA:
        count += 1
        resultTitles.append("Узел №" + str(count))
    return resultTitles
### Функция перевода числового представления числа в hex
def goToHex(listIntColor):
    color_number = 0
    for i, jval in enumerate(listIntColor):
        if (i==0):
            color_number = jval << 8
        if (i==1):
            color_number += jval << 2
        else:
            color_number += jval
    # Перевод числового значения в формат Hex
    color_hex = '#{:06x}'.format(color_number)
    return color_hex

### Метод задания массива цветов для нодов (вершин) - сюда уже передается множество А
def getColorForNod(bunchA):
    resultColors = []
    for i in bunchA:
        arrayNumber = [random.randint(100, 255), random.randint(125, 200),
                       random.randint(200, 255)]
        hex = goToHex(arrayNumber)
        resultColors.append(hex)
    return resultColors

### Для неориентированного графа нет необходимости в методе, который расположился выше #######

###Функция отрисовки графа######
def drawGraph(relation):
    Abunch = getABunch(relation)
    net = Network() #объект графа
    labels = namePeak(relation)
    colors = getColorForNod(Abunch)
    titles = nameTitles(relation)

    net.add_nodes(Abunch, label=labels, color=colors, title =titles)

    net.add_edges(relation)
    net.show('graph.html', notebook=False)

#### Функция генерации отношения из матрицы смежности ####
def generationRelation(matrix):
    resultRelation = []
    for i in range(0, len(matrix)):
        for j in range(0, len(matrix[0])):
            if matrix[i][j] == 1:
                new_element = (i+1, j+1)
                resultRelation.append(new_element)
    return resultRelation


def mainMethod():
    two_dimensional_array = request.forms.get('')
    relation = generationRelation(two_dimensional_array)
    
    Abunch = getABunch(relation)
    
    # Проверка на асимметричность и антитранзитивность
    message_symmetric = is_asymmetric_relation(relation)
    message_transitive  = is_antitransitive_relation(relation)

    # Нахождение обратного отношения
    inverse_relation = find_inverse_relation(relation)
   
    drawGraph(relation)

