.text
.global main
main:
    li	    $t0, 10		        # t0 is the number of iteration
    li      $t1, 0              # t1 is the counter
    li      $t2, 17             # t2 value to modify
loop:
    bge		$t1, $t0, end       #if t1 equal t0 jump to end
    add     $t2, $t2, $t1
    addi    $t1, $t1, 1         #increment the counter by one
    j		loop				# jump to loop
end:
    li      $v0, 10
    syscall
    


    