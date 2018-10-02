PROGRAM timer
  IMPLICIT NONE
  REAL :: t1,t2,rate 
  INTEGER :: c1,c2,cr,cm,i,j,n,s
  INTEGER , PARAMETER :: x=20000,y=15000,runs=1000
  REAL :: array(x,y),a_diff,diff

  ! First initialize the system_clock
  CALL system_clock(count_rate=cr)
  CALL system_clock(count_max=cm)
  rate = REAL(cr)
  WRITE(*,*) "system_clock rate ",rate

  diff = 0.0
  a_diff = 0.0
  s = 0
  DO n = 1 , runs
     CALL CPU_TIME(t1)
     CALL SYSTEM_CLOCK(c1)
     FORALL(i = 1:x,j = 1:y)
        array(i,j) = REAL(i)*REAL(j) + 2
     END FORALL
     CALL CPU_TIME(t2)
     CALL SYSTEM_CLOCK(c2)
     array(1,1) = array(1,2)     
     IF ( (c2 - c1)/rate < (t2-t1) ) s = s + 1
     diff = (c2 - c1)/rate - (t2-t1) + diff
     a_diff = ABS((c2 - c1)/rate - (t2-t1)) + a_diff
  END DO

  WRITE(*,*) "system_clock : ",(c2 - c1)/rate
  WRITE(*,*) "cpu_time     : ",(t2-t1)
  WRITE(*,*) "sc < ct      : ",s,"of",runs
  WRITE(*,*) "mean diff    : ",diff/runs
  WRITE(*,*) "abs mean diff: ",a_diff/runs
END PROGRAM timer

