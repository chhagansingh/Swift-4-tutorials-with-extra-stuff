# Linear Search

Goal: Find a particular value in an array.

We have an array of generic objects. With linear search, we iterate over all the objects in the array and compare each one to the object we're looking for. If the two objects are equal, we stop and return the current array index. If not, we continue to look for the next object as long as we have objects in the array.

## An example

Let's say we have an array of numbers `[5,4,2,6,4,8,6,9,46,76,4,576]` and we want to check if the array contains the number `9`.

We start by comparing the first number in the array, `5`, to the number we're looking for, `9`. They are obviously not the same, and so we continue to the next array element.

We compare the number `9` from the array to our number `9` and notice they are equal. Now we can stop our iteration and return 7, which is the index of the number `9` in the array.

## The code

Here is a simple implementation of linear search in Swift:

```swift

func linearsearch<T:Equatable>(_array:[T],_object:T)->Int?
{
    for(index,obj) in _array.enumerated() where obj==_object
    {
        return index
    }
    return nil
}

```

Put this code in a playground and test it like so:

```swift
let myarray=[5,4,2,6,4,8,6,9,46,76,4,576]
linearsearch(_array: myarray, _object: 9)	// This will return 7
```

## Performance

Linear search runs at **O(n)**. It compares the object we are looking for with each object in the array and so the time it takes is proportional to the array length. In the worst case, we need to look at all the elements in the array.

The best-case performance is **O(1)** but this case is rare because the object we're looking for has to be positioned at the start of the array to be immediately found. You might get lucky, but most of the time you won't. On average, linear search needs to look at half the objects in the array.

## See also

[Linear search on Wikipedia](https://en.wikipedia.org/wiki/Linear_search)

## Thanks for 

Raywenderlich Swift Algorithm Club
