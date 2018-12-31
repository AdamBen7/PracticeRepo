PROGRAM ALLOC
! http://www.fortrantutorial.com/arrays-formatted-io/index.php
! how to allocate memory dynamically when using arrays

    IMPLICIT NONE
    INTEGER, ALLOCATABLE, DIMENSION(:) :: vector    !note syntax - DIMENSION(:)
    INTEGER :: elements, i
    print *, 'enter the number of elements in the vector'
    READ *, elements
    ALLOCATE(vector(elements))                      !allocates the correct amout of memory
    print *, ' your vector is of size', elements, '.Now enter each element'

    DO i=1, elements
        print *, 'Enter next...'
        read *, vector(i) !waiting for user to enter a number then press ENTER
    END DO
    print *, 'This is your vector' 
    DO i=1, elements !prints as vertical vector. use advance = no for horizontal?
        print *, vector(i)
    END DO
    DEALLOCATE(vector)                              !tidies up the memory
END PROGRAM ALLOC
