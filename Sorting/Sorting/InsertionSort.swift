//
//  InsertionSort.swift
//  Sorting
//
//  Created by UTTAM on 24/12/17.
//  Copyright © 2017 UTTAM. All rights reserved.
//

import Foundation

struct InsertionSort {
    
    func insertionSort(array: inout [Int]) {
        let count = array.count - 1
        var key:Int!
        for i in 1...count {
            key = array[i]
            var j = i - 1
            while (j >= 0 && array[j] > key) {
                array[j + 1] = array[j]
                j -= 1
            }
            array[j+1] = key
        }
    }
}
