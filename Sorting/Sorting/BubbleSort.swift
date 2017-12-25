//
//  BubbleSort.swift
//  Sorting
//
//  Created by UTTAM on 24/12/17.
//  Copyright © 2017 UTTAM. All rights reserved.
//

import Foundation

struct BubbleSort {
    
    func bubbleSort(array: inout [Int]) {
        let count = array.count - 1
        for i in (0...count).reversed() { 
            for j in 0..<i {
                if  array[j] > array[j+1] {
                    swap(array: &array, firstIndex: j , secondIndex: j + 1 )
                }
            }
        }
    }
}
