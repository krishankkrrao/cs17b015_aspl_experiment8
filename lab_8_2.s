.data
   Arr: .word 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0,
.text

main:
    la $a0,Arr
    li $a1,11
    addi $t0,$a0,0
    addi $s0,$a1,0
    addi $t5,$t0,0
    li $t6,1
    li $s3,0
    addi $s4,$s0,0
    addi $t1,$t0,52
    jal loop
    j jump1
    
loop:
    p1:
      slt $t4,$s4,$s3
      beq $t4,1,jump
      lw $s1,0($t0)
      addi $t0,$t0,4
      addi $s3,$s3,1

      beq $s1,0,p1
    p2:
      slt $t4,$s4,$s3
      beq $t4,1,jump
      lw $s2,0($t1)
      addi $t1,$t1,-4
      addi $s4,$s4,-1
      beq $s2,1,p2

      sw $s2,-4($t0)
      sw $s1,4($t1)
      j loop

jump:
      j $ra

jump1:
      beq $s0,$0,jump2
      addi $s0,$s0,-1
      li $v0,1
      addi $t5,$t5,4
      lw $a0,0($t5)
      syscall     
      j jump
jump2:
    li $v0,10
     syscall






