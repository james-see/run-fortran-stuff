program input_output
    !A simple program to get input and print output
    implicit none
    integer :: x
    print *, 'Enter your favorite number.'
    read *, x
    print *, 'Your favorite number is: ', x
end program input_output