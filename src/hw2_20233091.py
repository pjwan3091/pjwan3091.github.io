import time
import copy
import random

list1 = list(i for i in range(10000))
random.shuffle(list1)

# Lab 1-1

def selectionSort(list):

    for i in range(len(list)):

        min_idx = i
        for j in range(i+1, len(list)):
            if list[min_idx] > list[j]:
                min_idx = j
        list[i], list[min_idx] = list[min_idx], list[i]

# Lab 1-2

def bubbleSort(list):
    n = len(list)

    for i in range(n):

        for j in range(0, n-i-1):

            if list[j] > list[j+1] :
                list[j], list[j+1] = list[j+1], list[j]

# Lab 1-3

def insertionSort(list):

    for i in range(1, len(list)):

        key = list[i]

        j = i-1
        while j >= 0 and key < list[j] :
            list[j+1] = list[j]
            j -= 1
        list[j+1] = key

# Lab 1-7

def measure_sorting_time(sorting_function, list_to_sort):
        start_time = time.time()
        sorting_function(list_to_sort)
        end_time = time.time()
        return end_time - start_time

list_selection = copy.deepcopy(list1)
list_bubble = copy.deepcopy(list1)
list_insertion = copy.deepcopy(list1)

selection_time = measure_sorting_time(selectionSort, list_selection)
bubble_time = measure_sorting_time(bubbleSort, list_bubble)
insertion_time = measure_sorting_time(insertionSort, list_insertion)

print(f"selection_time: {selection_time}초")
print(f"bubble_time: {bubble_time}초")
print(f"insertion_time: {insertion_time}초")