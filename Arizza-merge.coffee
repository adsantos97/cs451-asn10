###
Arizza Santos
CS451 ASN10
I picked this language because Yon Su had mentioned in her video that "It's just
JavaScript", but it is more simpler and readable. I have seen and dealt with
some JavaScript when I had utilized it when creating websites; JavaScript was
NOT pretty. So, I am interested in seeing the difference between CoffeeScript
and JavaScript. She also said that the language is a mix of Ruby, Python and
JavaScript. Ruby is my pet language, so I want to know which elements of Ruby
were used in the creation of CoffeeScript. 
###

# purpose: do the sort!
# input: array - array of integers
sort = (array) ->
    doMergeSort(array, 0, array.length - 1)

# purpose: recursively do merge sort
# input: lowerIndex, higherIndex (self-explanatory names)
doMergeSort = (array, lowerIndex, higherIndex) ->
    if lowerIndex < higherIndex
        middle = lowerIndex + (higherIndex - lowerIndex) / 2
        doMergeSort(lowerIndex, middle)
        doMergeSort(middle + 1, higherIndex)
        mergeParts(array, lowerIndex, middle, higherIndex)

# purpose: merging together
# input: array - array of integers
#        lowerIndex, middle, higherIndex
mergeParts = (array, lowerIndex, middle, higherIndex) ->
    tempMergeArray = (0 for array.length)
    i = lowerIndex
    while i <= higherIndex
        tempMergeArray[i] = array[i]
        i++
    a = lowerIndex
    b = middle + 1
    c = lowerIndex
    while a <= middle && b <= higherIndex
        if tempMergeArray[a] <= tempMergeArray[b]
            array[c++] = tempMergeArray[a++]
        else
            array[c++] = tempMergeArray[b++]

    while a <= middle
        array[c++] = tempMergeArray[a++]

# purpose: print array of integers on one line
# input: array - array of integers
printArray = (array) ->
    string = "";
    for num in array
        string += num
    console.log string

main = ->
    array = [4, 2, 9, 6, 23, 12]
    console.log "Before sort:" 
    printArray(array)
    console.log "After sort:"
    sort(array)
    printArray(array)

main()

###
Response on Experience
----------------------
Initially, I was terrified because of the "->". It brought me back to memories
of pointers in C. But, thankfully, it is used to make functions. I can see the 
"simplicity" of the syntax of CoffeeScript makes the code shorter to code, but 
sometimes it may get confusing; I kind of want some extra structure. For 
example, there is an option not to include parenthesis when invoking a function, 
and you would also have to be careful of where your functions end. I also think
the "for-loops" (really comprehensions) took some getting used to. I did resort
to using a while-loop because I did not want to use a comprehension.   
###
