program menu_selection
    !Example menu selection.
    implicit none
    integer :: choice
    !set up the menu – the user may enter  1, 2 or 3
    print  *,'Choose an option for favorite color'
    print  *,'1    Blue'
    print  *,'2    Red'
    print  *,'3    Yellow'
    read  *,choice
    if  (choice == 1) then  
  		print *,'result = '//achar(27)//'[94m BLUE '//achar(27)//'[0m'
    	end if
    	if (choice == 2) then
  		print *,'result ='//achar(27)//'[31m RED '//achar(27)//'[0m'
  	end if
  	if (choice == 3) then
  		print *,'result = '//achar(27)//'[33m YELLOW '//achar(27)//'[0m'
  	end if
    print *, 'A great color is '//achar(27)//'[95m pink '//achar(27)//'[0m.'
end program menu_selection

! color codes reference
![90m=dark grey           [30m=black
![91m=peach               [31m=red
![92m=light green         [32m=green
![93m=light yellow        [33m=yellow
![94m=light blue          [34m=blue
![95m=pink                [35m=purple
![96m=light aqua          [36m=aqua
![97m=pearl white
