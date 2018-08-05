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
  		print *,'result = BLUE'
    	end if
    	if (choice == 2) then
  		print *,'result = RED'
  	end if
  	if (choice == 3) then
  		print *,'result = YELLOW' 
  	end if
      
end program menu_selection
      
