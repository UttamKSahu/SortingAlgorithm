//
//  QuickSort.swift
//  Sorting
//
//  Created by UTTAM on 24/12/17.
//  Copyright © 2017 UTTAM. All rights reserved.
//

import Foundation

struct QuickSort {
    
    /***************************** Quick Sort ******************************/
    
    func quickSort(array: inout [Int], low: Int , high: Int) {
        if low < high {
            let partitionLoc = partition(array: &array, low: low, high: high)
            quickSort(array: &array, low: low, high: partitionLoc - 1)
            quickSort(array: &array, low: partitionLoc + 1 , high: high)
        }
    }
    
    func partition(array: inout [Int] , low: Int , high: Int)->Int {
        let pivot = array[high]
        var leftWall = low - 1
        
        for i in low..<high {
            if array[i] < pivot {
                leftWall += 1
                swap(array: &array, firstIndex: i , secondIndex: leftWall)
            }
        }
        swap(array: &array, firstIndex: leftWall + 1 , secondIndex: high)
        
        return leftWall + 1
    }
    
}
