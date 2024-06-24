import Foundation

protocol Sortable {
    func sort(_ array: inout [Int])
}

class BubbleSort: Sortable {
    func sort(_ array: inout [Int]) {
        let n = array.count
        for i in 0..<n {
            for j in 0..<(n - i - 1) {
                if array[j] > array[j + 1] {
                    let temp = array[j]
                    array[j] = array[j + 1]
                    array[j + 1] = temp
                }
            }
        }
    }
}

class SelectionSort: Sortable {
    func sort(_ array: inout [Int]) {
        let n = array.count
        for i in 0..<n {
            var minIndex = i
            for j in (i + 1)..<n {
                if array[j] < array[minIndex] {
                    minIndex = j
                }
            }
            if i != minIndex {
                let temp = array[i]
                array[i] = array[minIndex]
                array[minIndex] = temp
            }
        }
    }
}


var bubbleSortArray = [64, 34, 25, 12, 22, 11, 90]
var selectionSortArray = [64, 34, 25, 12, 22, 11, 90]

let bubbleSorter: Sortable = BubbleSort()
let selectionSorter: Sortable = SelectionSort()

bubbleSorter.sort(&bubbleSortArray)
selectionSorter.sort(&selectionSortArray)

print("Bubble Sorted Array: \(bubbleSortArray)")
print("Selection Sorted Array: \(selectionSortArray)")

