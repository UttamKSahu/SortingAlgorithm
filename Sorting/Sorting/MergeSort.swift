//
//  MergSort.swift
//  Sorting
//
//  Created by UTTAM on 24/12/17.
//  Copyright © 2017 UTTAM. All rights reserved.
//

import Foundation

struct MergeSort {
    
    func mergeSort(array: inout [Int] ,left: Int , right: Int ) {
        if left < right {
            let middle = left + (right - left)/2
            mergeSort(array: &array, left: left , right: middle)
            mergeSort(array: &array, left: middle + 1, right: right)
            merge(array: &array, left: left, middle: middle, right: right)
        }
    }
    
    func merge(array: inout [Int] , left: Int , middle: Int , right: Int) {

        let n1 = middle - left + 1
        let n2 = right - middle
        
        var lArray = [Int]()
        var rArray = [Int]()
        
        for i in 0..<n1 {
            lArray.append(array[left + i])
        }
        for j in 0..<n2 {
            rArray.append(array[middle + 1 + j])
        }
        
        var i = 0
        var j = 0
        var k = left
        
        while (i < n1 && j < n2) {
            if lArray[i] <= rArray[j] {
                array[k] = lArray[i]
                i += 1
            }else {
                array[k] = rArray[j]
                j += 1
            }
            k += 1
        }
        
        // Coping the remaining elements of rArray[], if there are any eletent left
        while i < n1 {
            array[k] = lArray[i]
            i += 1
            k += 1
        }
        // Coping the remaining element of rArray[] , if there are any element left
        while j < n2 {
            array[k] = rArray[j]
            j += 1
            k += 1
        }
    }
    
}















