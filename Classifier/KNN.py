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