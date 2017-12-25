//
//  HeapSort.swift
//  Sorting
//
//  Created by UTTAM on 25/12/17.
//  Copyright © 2017 UTTAM. All rights reserved.
//

import Foundation

struct HeapSort {
    
//    func heapSort(array: inout [Int] , )
    
    func heapify(array: inout [Int] , n: Int , i: Int) {
        var largest = i
        let left = 2 * i + 1
        let right = 2 * i + 2
        
        // if left child is larger than root
        if ((left < n) && (array[left] > array[largest])) {
            largest = left
        }
        
        // if right child is larger than root
        if ((right < n) && (array[right] > array[largest])) {
            largest = right
        }
        
        // If largest is not root
        if largest != i {
            swap(array: &array, firstIndex: i , secondIndex: largest)
            // Recursively heapify the affeted sub-tree
            heapify(array: &array, n: n, i: largest)
        }
    }
    
    func heapSort(array: inout [Int] , n: Int) {
            // Build heap rearrange array
        for i in (0...(n/2)-1).reversed() {
            heapify(array: &array, n: n , i: i)
        }
        // one by one extract an element from heap
        for i in (0...n-1).reversed() {
         // move current root to end
            swap(array: &array, firstIndex: 0, secondIndex: i)
            heapify(array: &array, n: i, i: 0)
        }
    }
}


























