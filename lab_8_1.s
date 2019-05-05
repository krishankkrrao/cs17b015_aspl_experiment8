.data
	Arr: .word 1,2,3,4,5,6,7,8
.text

main:
     la $a0,Arr  
     li $a1,8  
     li $a2,4
     li $s1,0
     li $v1,0
     li $t2,0
     jal loop
     j jump2

loop:
     beq  $s1,$a1,jump
     lw   $t1,0($a0)
     addi $a0,$a0,4
     addi $s1,$s1,1
     bne  $t1,$a2,loop
     addi $v1,$v1,1
     j loop

jump:
     jr $ra
      
jump2:
     li $v0,10
     syscall
