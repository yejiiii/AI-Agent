# K-Nearest Neighbors

- K-최근접 이웃 분류기

## K-최근접 이웃 알고리즘

- 패턴 인식에서, k-최근접 이웃 알고리즘(또는 줄여서 k-NN)은 분류나 회귀에 사용되는 비모수 방식이다. 두 경우 모두 입력이 특징 공간 내 k개의 가장 가까운 훈련 데이터로 구성되어 있다. 출력은 k-NN이 분류로 사용되었는지 또는 회귀로 사용되었는지에 따라 다르다.
	- k-NN 분류에서 출력은 소속된 항목이다. 객체는 k개의 최근접 이웃 사이에서 가장 공통적인 항목에 할당되는 객체로 과반수 의결에 의해 분류된다(k는 양의 정수이며 통상적으로 작은 수). 만약 k = 1 이라면 객체는 단순히 하나의 최근접 이웃의 항목에 할당된다.
	- k-NN 회귀에서 출력은 객체의 특성 값이다. 이 값은 k개의 최근접 이웃이 가진 값의 평균이다.

- k-NN은 함수가 오직 지역적으로 근사하고 모든 계산이 분류될 때까지 연기되는 인스턴스 기반 학습 또는 게으른 학습의 일종이다. k-NN 알고리즘은 가장 간단한 기계 학습 알고리즘에 속한다.

- 분류와 회귀 모두 더 가까운 이웃일수록 더 먼 이웃보다 평균에 더 많이 기여하도록 이웃의 기여에 가중치를 주는 것이 유용할 수 있다. 예를 들어, 가장 흔한 가중치 스키마는 d가 이웃까지의 거리일 때 각각의 이웃에게 1/d의 가중치를 주는 것이다.

- 이웃은 항목(k-NN 분류의 경우)이나 객체 특성 값(k-NN 회귀의 경우)이 알려진 객체의 집합으로부터 구해진다. 이것은 명시적인 훈련 과정이 필요하지는 않지만, 알고리즘을 위한 훈련 집합이라고 생각될 수 있다.

## KNN 분류기 구현 실습

- 주어진 코드를 받아 실행해보세요.
- [classifier_utils.py](./classifier_utils.py) 파일이 동일한 폴더내에 있어야 합니다.
- [KNN.py](./KNN.py)
```python
import numpy as np
import os
from collections import Counter
from classifier_utils import *

# get most common class in the instances
def vote(neighbors):
    class_counter = Counter()
    for neighbor in neighbors:
        class_counter[neighbor[-1]] += 1
    return class_counter.most_common(1)[0][0]

# get distance between 2 instances
def distance(instance1, instance2):
    # just in case, if the instances are lists or tuples:
    instance1 = np.array(instance1) 
    instance2 = np.array(instance2)
	# 2-norm
    return np.linalg.norm(instance1 - instance2)

# get neighbors
def getNeighbors(trainingSet, 
                  testInstance, 
                  k, 
                  distance=distance):
    distances = []
	# for each instances in trainingSet
    for index in range(len(trainingSet)):
		# get distance from testInstance
        dist = distance(testInstance, trainingSet[index])
		# put (instance, distance, class of instance) into distances array
        distances.append((trainingSet[index], dist, trainingSet[index][-1]))
	
	# sort distances
    distances.sort(key=lambda x: x[1])
	# get k neighbors
    neighbors = distances[:k]
    return neighbors

def getPredictionsKNN(trainingSet, testSet, k):
    predictions = []
	# for each instances(vectors) in testSet
    for i in range(len(testSet)):
		# get K neighbors from trainingSet
        neighbors = getNeighbors(trainingSet, testSet[i], k, distance=distance)
		# get most common class in the neighbors
        prediction = vote(neighbors)
		# put result in the predictions
        predictions.append(prediction)
        # print("index: ", i, ", prediction: ", prediction, ", label: ", testSet[i][-1], ", result: ", (prediction==testSet[i][-1]))
    return predictions

def main():
	# Load csv data
    # Current directory
	fileDir = os.path.dirname( os.path.abspath( __file__ ) )
	fileName = 'data.csv'
	filePath = os.path.join(fileDir, fileName)
	dataset = loadCsv(filePath)

	# Split dataset into trainingSet and testSet
	splitRatio = 0.67
	trainingSet, testSet = splitDataset(dataset, splitRatio)
	print('Split {0} rows into train={1} and test={2} rows'.format(len(dataset), len(trainingSet), len(testSet)))
	
	# Set K
	K = 5
	predictionsKNN = getPredictionsKNN(trainingSet, testSet, K)
	accuracy = getAccuracy(testSet, predictionsKNN)
	print('KNN Classifier, K = {0}'.format(K))
	print('Accuracy: {0}%'.format(accuracy))

main()
```

## 가중치를 활용한 KNN 구현 실습

- 위에서 실행해본 코드를 토대로 가중치를 적용시킨 KNN 분류기를 설계, 구현
- [정답 Sample](./WeightedKNN.py)
