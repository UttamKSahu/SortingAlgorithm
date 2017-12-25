//
//  ViewController.swift
//  Sorting
//
//  Created by UTTAM on 24/12/17.
//  Copyright © 2017 UTTAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var array = [343, 2000, 600 , 10 , 503, 100]
        
//        QuickSort().quickSort(array: &array, low: 0, high: array.count - 1)
        
//        BubbleSort().bubbleSort(array: &array)
        
//        SelectionSort().selectionSort(array: &array)
        
//        InsertionSort().insertionSort(array: &array)
        
//        MergeSort().mergeSort(array: &array, left: 0 , right: array.count - 1)
        
        HeapSort().heapSort(array: &array, n: array.count)
        
        print(array)
        
    }
    
    

}

