//
//  SelectionSort.swift
//  Sorting
//
//  Created by UTTAM on 24/12/17.
//  Copyright © 2017 UTTAM. All rights reserved.
//

import Foundation

struct SelectionSort {
    
    func selectionSort(array : inout [Int]) {
        let count = array.count - 1
        var min = 0
        for i in 0...(count - 1) {
            min = i
            for j in (i+1)...count {
                if array[j] < array[min] {
                    min = j
                }
            }
            swap(array: &array, firstIndex: i, secondIndex: min)
        }
    }
}
