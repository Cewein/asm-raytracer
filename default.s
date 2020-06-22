.text
.global main
main:
    li	    $t0, 640             # t0 is the image width
    li      $t1, 480             # t1 is the image height
    li      $t2, 0               # t2 is the x pos current pixel
    li      $t3, 0               # t2 is the y pos current pixel
loop_y:
    bge	    $t3, $t1, x_after_y  #if t3 equal t1 jump to x_after_y
    add     $t3, $t3, 1          # add one the pos y
    j       loop_y               #jump back to loop_y 
loop_x:
    bge	    $t2, $t0, end        #if t2 equal t0 jump to end
    move    $t3, $zero           # reset y pos to zero
    j       loop_y               # do the y loop
x_after_y:
    add     $t2, $t2, 1          # add one the pos x
    j		loop_x               # jump back start of the loop
end:
    li      $v0, 10
    syscall
    


    