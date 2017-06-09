//Alex "1inq" S. -/2017

import Foundation

var array = [Int]()

//QuickSoft functions:

func partition( v: inout [Int], left: Int, right: Int) -> Int {
    var i = left
    for j in (left + 1)...(right) {
        if v[j] < v[left] {
            i += 1
            (v[i], v[j]) = (v[j], v[i])
        }
    }
    (v[i], v[left]) = (v[left], v[i])
    return i
}

func quicksort(v: inout [Int], left: Int, right: Int) {
    if right > left {
        let pivotIndex = partition(v: &v, left: left, right: right)
        quicksort(v: &v, left: left, right: pivotIndex - 1)
        quicksort(v: &v, left: pivotIndex + 1, right: right)
    }
}

//generate an Array
for i in 0...20 {
    array.append( Int(arc4random_uniform(60)))
}

print ("Array before sort: \(array)")
quicksort(v: &array, left: 0, right: array.count-1 )
print("Array after sort: \(array)")
