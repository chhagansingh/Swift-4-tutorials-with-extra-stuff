//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground learning linear search"



func linearsearch<T:Equatable>(_array:[T],_object:T)->Int?
{
    for(index,obj) in _array.enumerated() where obj==_object
    {
        return index
    }
    return nil
}


let myarray=[5,4,2,6,4,8,6,9,46,76,4,576]

linearsearch(_array: myarray, _object: 9)

