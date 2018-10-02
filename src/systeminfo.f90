program info
implicit none
print*,'detail system information:'
call system('uname -a')
print*
! In case you want to pause and wait for any key
! read(*,*)
! print*,'system architecture:'
! call system('uname -a')
! print*
end program

