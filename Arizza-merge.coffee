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
# input: array - array of integers
#        lowerIndex, higherIndex (self-explanatory names)
doMergeSort = (array, lowerIndex, higherIndex) ->
    if lowerIndex < higherIndex
        middle = Math.round((lowerIndex + (higherIndex - 1)) / 2)
        doMergeSort(array, lowerIndex, middle)
        doMergeSort(array, middle + 1, higherIndex)
        mergeParts(array, lowerIndex, middle, higherIndex)

# purpose: merging together
# input: array - array of integers
#        lowerIndex, middle, higherIndex
mergeParts = (array, lowerIndex, middle, higherIndex) ->
    n1 = middle - lowerIndex + 1
    n2 = higherIndex - middle

    # create temporary sub arrays
    left = (0 for num in [0..n1])
    right = (0 for num in [0..n2])

    # copy data to left[] and right[]
    i = 0
    while i <= n1
        left[i] = array[lowerIndex + i]
        i++
  
    j = 0
    while j < n2
        right[j] = array[middle + 1 + j]
        j++

    # merging sub arrays into array
    a = 0
    b = 0
    c = lowerIndex
    while a < n1 && b < n2
        if left[a] <= right[b]
            array[c] = left[a]
            a++
        else
            array[c] = right[b]
            b++
        c++

    # copy remaining elements
    while a < n1
        array[c] = left[a]
        a++
        c++

    while b < n2
        array[c] = right[b]
        b++
        c++

# purpose: print array of integers on one line
# input: array - array of integers
printArray = (array) ->
    string = "";
    for num in array
        string += " " + num
    console.log string

# purpose: run the program
main = ->
    array = [4, 2, 9, 6, 23, 12] # test array
    array = prompt("Enter list of integers:")
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
to using some while-loops because I did not want to use comprehensions.

I got frustrated using this language. I knew I had the correct alogrithm for
merge sort because we had done it in our past CS courses. I spent 1-2 hours
trying to debug the code only to find out that there was an increment error. I
also wanted to make the program fancy by getting user input for the array, but I
found out that CoffeeScript does not allow such thing. So, I was pretty
disappointed about that to say the least.   
###
