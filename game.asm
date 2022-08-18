# Constants
.eqv  BASE_ADDRESS 0x10008000
.eqv  WAIT_TIME 100
.eqv  BLACK 0x000000
.eqv  PLAYER_COL 0xFF0000
.eqv  GREEN 0x00FF00
.eqv  BROWN 0xE6923E
.eqv  NUM_PIXELS 65536
.eqv  PLAYER_POS_0 15360
.eqv  PLAYER_POS_1 15104
.eqv  PLAYER_POS_2 14848
.eqv  GRASS_IDX 15616
.eqv  GROUND_IDX 15872
.eqv  COIN_COL 0xFFFF00
.eqv  STAR_COL 0xC0C0C0
.eqv  CURSE_COL 0x6A0DAD
.eqv  DOOR_COL 0x8B4513
.eqv  SCORE_COL 0xFFFF00
.eqv  SCORE_BAR 420
.eqv  WON_COL 0x4CAF50
.eqv  END_COL 0xFFFFFF
.eqv  LOST_COL 0xFF1744
.eqv  START_COL 0xFFFF05
.eqv  PITCH_G 68 # G# / Gsharp
.eqv  PITCH_E 65 # E# / Esharp
.eqv  PITCH_C 58 # C
.eqv  VOLUME 50 # medium volume
.eqv  NOTE_LENGTH 600 # ms
.eqv  NOTE_LENGTH_2 200 # ms
.eqv  INSTRUMENT 56 # tuba

.data
    PLAYER: .word 15360 15104 14848
    COIN_COUNT: .word 3
    COIN_1: .word 13100 12844 12588
    COIN_2: .word 11628 11372 11116
    COIN_3: .word 13740 13484 13228
    COIN_4: .word 2364 2108 1852
    COIN_5: .word 13136 12880 12624
    COIN_6: .word 11664 11408 11152 
    COIN_7: .word 12844 12588 12332
    COIN_8: .word 11372 11116 10860
    COIN_9: .word 15504 15248 14992
    STAR_1: .word 8620 8364 8108
    STAR_2: .word 7500 7244 6988
    STAR_3: .word 10176 9920 9664
    STAR_4: .word 5772 5516 5260
    DOOR_1: .word 3516 3260 3004
    DOOR_2: .word 3520 3264 3008
    DOOR_3: .word 15596 15340 15084
    DOOR_4: .word 15600 15344 15088
    DOOR_5: .word 2104 1848 1592
    DOOR_6: .word 2108 1852 1596
    CURSE_1: .word 15520 15264 15008
    CURSE_2: .word 5756 5500 5244
    CURSE_3: .word 8380 8124 7868
    CURSE_4: .word 15452 15196 14940
    CURSE_5: .word 6028 5772 5516
    SCORE: .word 0
    LEVEL: .word 1
    prt_str: .asciiz "\nScore is "
.text

.globl main

main:
start:
    # Clear the screen
    jal clear_screen

    # Print options
    li $t0, BASE_ADDRESS
    li $t4, START_COL

    # Print start-s
    # print s
    sw $t4, 6204($t0)
    sw $t4, 6200($t0)
    sw $t4, 6196($t0)
    sw $t4, 6448($t0)
    sw $t4, 6708($t0)
    sw $t4, 6712($t0)
    sw $t4, 6972($t0)
    sw $t4, 7224($t0)
    sw $t4, 7220($t0)
    sw $t4, 7216($t0)

    # print t
    sw $t4, 6212($t0)
    sw $t4, 6216($t0)
    sw $t4, 6220($t0)
    sw $t4, 6224($t0)
    sw $t4, 6228($t0)
    sw $t4, 6476($t0)
    sw $t4, 6732($t0)
    sw $t4, 6988($t0)
    sw $t4, 7244($t0)

    # print a
    sw $t4, 7260($t0)
    sw $t4, 7004($t0)
    sw $t4, 6748($t0)
    sw $t4, 6492($t0)
    sw $t4, 6240($t0)
    sw $t4, 6244($t0)
    sw $t4, 6504($t0)
    sw $t4, 6760($t0)
    sw $t4, 7016($t0)
    sw $t4, 7272($t0)
    sw $t4, 6752($t0)
    sw $t4, 6756($t0)

    # print r
    sw $t4, 6256($t0)
    sw $t4, 6512($t0)
    sw $t4, 6768($t0)
    sw $t4, 7024($t0)
    sw $t4, 7280($t0)
    sw $t4, 6260($t0)
    sw $t4, 6264($t0)
    sw $t4, 6772($t0)
    sw $t4, 6776($t0)
    sw $t4, 6524($t0)
    sw $t4, 7032($t0)
    sw $t4, 7292($t0)

    # print t
    sw $t4, 6276($t0)
    sw $t4, 6280($t0)
    sw $t4, 6284($t0)
    sw $t4, 6288($t0)
    sw $t4, 6292($t0)
    sw $t4, 6540($t0)
    sw $t4, 6796($t0)
    sw $t4, 7052($t0)
    sw $t4, 7308($t0)

    # print -
    sw $t4, 6820($t0)
    sw $t4, 6824($t0)
    sw $t4, 6828($t0)

    # print s
    sw $t4, 6344($t0)
    sw $t4, 6340($t0)
    sw $t4, 6336($t0)
    sw $t4, 6588($t0)
    sw $t4, 6848($t0)
    sw $t4, 6852($t0)
    sw $t4, 7112($t0)
    sw $t4, 7364($t0)
    sw $t4, 7360($t0)
    sw $t4, 7356($t0)


    # print exit - e
    # print e
    sw $t4, 9276($t0)
    sw $t4, 9272($t0)
    sw $t4, 9268($t0)
    sw $t4, 9264($t0)
    sw $t4, 9520($t0)
    sw $t4, 9776($t0)
    sw $t4, 10032($t0)
    sw $t4, 10288($t0)
    sw $t4, 10292($t0)
    sw $t4, 10296($t0)
    sw $t4, 10300($t0)
    sw $t4, 9780($t0)
    sw $t4, 9784($t0)

    # print x
    sw $t4, 9284($t0)
    sw $t4, 9540($t0)
    sw $t4, 10052($t0)
    sw $t4, 10308($t0)
    sw $t4, 9296($t0)
    sw $t4, 9552($t0)
    sw $t4, 10064($t0)
    sw $t4, 10320($t0)
    sw $t4, 9800($t0)
    sw $t4, 9804($t0)

    # print i
    sw $t4, 9304($t0)
    sw $t4, 9308($t0)
    sw $t4, 9312($t0)
    sw $t4, 9564($t0)
    sw $t4, 9820($t0)
    sw $t4, 10076($t0)
    sw $t4, 10328($t0)
    sw $t4, 10332($t0)
    sw $t4, 10336($t0)

    # print t
    sw $t4, 9320($t0)
    sw $t4, 9324($t0)
    sw $t4, 9328($t0)
    sw $t4, 9332($t0)
    sw $t4, 9336($t0)
    sw $t4, 9584($t0)
    sw $t4, 9840($t0)
    sw $t4, 10096($t0)
    sw $t4, 10352($t0)

    # print -
    sw $t4, 9864($t0)
    sw $t4, 9868($t0)
    sw $t4, 9872($t0)

    # print e
    sw $t4, 9388($t0)
    sw $t4, 9384($t0)
    sw $t4, 9380($t0)
    sw $t4, 9376($t0)
    sw $t4, 9632($t0)
    sw $t4, 9888($t0)
    sw $t4, 10144($t0)
    sw $t4, 10400($t0)
    sw $t4, 10404($t0)
    sw $t4, 10408($t0)
    sw $t4, 10412($t0)
    sw $t4, 9892($t0)
    sw $t4, 9896($t0)

start_loop:
    # Check keyboard input
    li $t9, 0xffff0000              # $t9 stores the memory address for keyboard input
    lw $t8, 0($t9)                  # $t8 stores the value at keyboard input memory address
    beq $t8, 1, start_keypress_happened   # if the value at keyboard input memory address is 1, then keypress happened    
    jal print_score
    j start_loop	

start_keypress_happened:
    lw $t2, 4($t9)                  # this assumes $t9 is set to 0xfff0000 from before
    beq $t2, 0x73, level_1          # ASCII code of 's' is 0x73 or 115 in decimal  
    beq $t2, 0x65, exit             # ASCII code of 'e' is 0x65 or 101 in decimal

level_1:
    # Clear the screen
    jal clear_screen
	
    # Initialize player position
    la $s3, PLAYER
    addi $s4, $zero, 15360
    sw $s4, 0($s3)
    addi $s4, $zero, 15104
    sw $s4, 4($s3)
    addi $s4, $zero, 14848
    sw $s4, 8($s3)
    
    # STARTER TAG!
    li $t0, BASE_ADDRESS            	# $t0 stores the base address for display
    li $t4, PLAYER_COL              	# $t4 stores player color		

    # This is the player's initial value
    sw $t4, PLAYER_POS_0($t0)
    sw $t4, PLAYER_POS_1($t0)
    sw $t4, PLAYER_POS_2($t0)
    
    #make ground
    li $t4, GREEN                	# $t4 stores the green color for grass
    li $t5, BROWN                	# $t5 stores the green color for grass
    addi $t2, $t0, 15872
    addi $t3, $t0, 16384
    addi $t1, $t0, GRASS_IDX    	# $t1 stores the index for grass
inner_loop_green_1:
    sw $t4, 0($t1)             	 	# write the color to the display
    addi $t1, $t1, 4             	# increment the index by 4
    bne $t1, $t2, inner_loop_green_1
    addi $t1, $t0, GROUND_IDX           # $t1 stores the index for grass
inner_loop_brown_1:
    sw $t5, 0($t1)             		# write the color to the display
    addi $t1, $t1, 4            	# increment the index by 4
    bne $t1, $t3, inner_loop_brown_1

    # Make Platforms
    addi $t3, $zero, 13360		# P1
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_platform
    addi $t3, $zero, 11888		# P2
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_platform
    addi $t3, $zero, 10400		# P3
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_platform
    
    # Make Coins
    la $t3, COIN_5
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_coin
    la $t3, COIN_6
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_coin

    # Make Stars
    la $t3, STAR_3
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_star
 
    # Make curse
    la $t3, CURSE_1
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_curse

    # Make door
    la $t3, DOOR_3
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_door
    la $t3, DOOR_4
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_door
    
    j constant_loop

level_2:

    # Clear the screen
    jal clear_screen

    # Initialize player position
    la $s3, PLAYER
    addi $s4, $zero, 15360
    sw $s4, 0($s3)
    addi $s4, $zero, 15104
    sw $s4, 4($s3)
    addi $s4, $zero, 14848
    sw $s4, 8($s3)
    
    # STARTER TAG!
    li $t0, BASE_ADDRESS            	# $t0 stores the base address for display
    li $t4, PLAYER_COL              	# $t4 stores player color		

    # This is the player's initial value
    sw $t4, PLAYER_POS_0($t0)
    sw $t4, PLAYER_POS_1($t0)
    sw $t4, PLAYER_POS_2($t0)
    
    #make ground
    li $t4, GREEN                	# $t4 stores the green color for grass
    li $t5, BROWN                	# $t5 stores the green color for grass
    addi $t2, $t0, 15872
    addi $t3, $t0, 16384
    addi $t1, $t0, GRASS_IDX    	# $t1 stores the index for grass
inner_loop_green_2:
    sw $t4, 0($t1)             	 	# write the color to the display
    addi $t1, $t1, 4             	# increment the index by 4
    bne $t1, $t2, inner_loop_green_2
    addi $t1, $t0, GROUND_IDX           # $t1 stores the index for grass
inner_loop_brown_2:
    sw $t5, 0($t1)             		# write the color to the display
    addi $t1, $t1, 4            	# increment the index by 4
    bne $t1, $t3, inner_loop_brown_2
    
    # Make Platforms
    addi $t3, $zero, 13088		# P1
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_platform
    addi $t3, $zero, 11616		# P2
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_platform
    addi $t3, $zero, 8600		# P3
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_platform
    addi $t3, $zero, 5988		# P4
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_platform
    addi $t3, $zero, 2352		# P5
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_platform
    
    # Make Coins
    la $t3, COIN_7
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_coin
    la $t3, COIN_8
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_coin
    la $t3, COIN_9
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_coin

    # Make Stars
    la $t3, STAR_4
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_star
 
    # Make curse
    la $t3, CURSE_2
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_curse
    la $t3, CURSE_3
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_curse
    
    # Make door
    la $t3, DOOR_5
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_door
    la $t3, DOOR_6
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_door
    
    j constant_loop

level_3:
    # Clear the screen
    jal clear_screen

    # Initialize player position
    la $s3, PLAYER
    addi $s4, $zero, 15360
    sw $s4, 0($s3)
    addi $s4, $zero, 15104
    sw $s4, 4($s3)
    addi $s4, $zero, 14848
    sw $s4, 8($s3)
    
    # STARTER TAG!
    li $t0, BASE_ADDRESS            	# $t0 stores the base address for display
    li $t4, PLAYER_COL              	# $t4 stores player color		

    # This is the player's initial value
    sw $t4, PLAYER_POS_0($t0)
    sw $t4, PLAYER_POS_1($t0)
    sw $t4, PLAYER_POS_2($t0)
    
    #make ground
    li $t4, GREEN                	# $t4 stores the green color for grass
    li $t5, BROWN                	# $t5 stores the green color for grass
    addi $t2, $t0, 15872
    addi $t3, $t0, 16384
    addi $t1, $t0, GRASS_IDX    	# $t1 stores the index for grass
inner_loop_green_3:
    sw $t4, 0($t1)             	 	# write the color to the display
    addi $t1, $t1, 4             	# increment the index by 4
    bne $t1, $t2, inner_loop_green_3
    addi $t1, $t0, GROUND_IDX           # $t1 stores the index for grass
inner_loop_brown_3:
    sw $t5, 0($t1)             		# write the color to the display
    addi $t1, $t1, 4            	# increment the index by 4
    bne $t1, $t3, inner_loop_brown_3

    # Make Platforms
    addi $t3, $zero, 13344		# P1
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_platform
    addi $t3, $zero, 11872		# P2
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_platform
    addi $t3, $zero, 8856		# P4
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_platform
    addi $t3, $zero, 13976		# P3
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_platform
    addi $t3, $zero, 7720		# P5
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_platform
    addi $t3, $zero, 6244		# P6
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_platform
    addi $t3, $zero, 2608		# P7
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_platform
    addi $t3, $zero, 3736		# P8
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_platform
    
    # Make Coins
    la $t3, COIN_1
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_coin
    la $t3, COIN_2
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_coin
    la $t3, COIN_3
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_coin
    la $t3, COIN_4
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_coin

    # Make Stars
    la $t3, STAR_1
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_star
    la $t3, STAR_2
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_star
    
    # Make curse
    la $t3, CURSE_4
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_curse
    la $t3, CURSE_5
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_curse

    # Make door
    la $t3, DOOR_1
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_door
    la $t3, DOOR_2
    addi $sp, $sp, -4
    sw $t3, 0($sp)
    jal make_door
    
    j constant_loop
    
constant_loop:   
    # Check keyboard input
    li $t9, 0xffff0000              # $t9 stores the memory address for keyboard input
    lw $t8, 0($t9)                  # $t8 stores the value at keyboard input memory address
    beq $t8, 1, keypress_happened   # if the value at keyboard input memory address is 1, then keypress happened    
    jal print_score
    j constant_loop		    
    
make_platform:
    li $t4, GREEN                	# $t4 stores the green color for grass platforms
    lw $t6, 0($sp)
    add $t5, $t0, $t6
    addi $sp, $sp, 4
    addi $t3, $zero, 12
platform_loop:
    sw $t4, 0($t5)             	 	# write the color to the display
    addi $t5, $t5, 4             	# increment the index by 4
    sub $t3, $t3, 1
    bne $t3, $zero, platform_loop
    jr $ra
    
make_coin:
    li $t4, COIN_COL              	# $t4 stores the green color for grass platforms
    lw $t6, 0($sp)
    addi $sp, $sp, 4
    lw $t7, 0($t6)
    add $t5, $t0, $t7
    sw $t4, 0($t5)             	 	# write the color to the display
    lw $t7, 4($t6)
    add $t5, $t0, $t7
    sw $t4, 0($t5)             	 	# write the color to the display
    lw $t7, 8($t6)
    add $t5, $t0, $t7
    sw $t4, 0($t5)             	 	# write the color to the display
    jr $ra

 make_star:
    li $t4, STAR_COL              	# $t4 stores the orange color for the star
    lw $t6, 0($sp)
    addi $sp, $sp, 4
    lw $t7, 0($t6)
    add $t5, $t0, $t7
    sw $t4, 0($t5)             	 	# write the color to the display
    lw $t7, 4($t6)
    add $t5, $t0, $t7
    sw $t4, 0($t5)             	 	# write the color to the display
    lw $t7, 8($t6)
    add $t5, $t0, $t7
    sw $t4, 0($t5)             	 	# write the color to the display
    jr $ra
    
make_curse:
    li $t4, CURSE_COL              	# $t4 stores the orange color for the star
    lw $t6, 0($sp)
    addi $sp, $sp, 4
    lw $t7, 0($t6)
    add $t5, $t0, $t7
    sw $t4, 0($t5)             	 	# write the color to the display
    lw $t7, 4($t6)
    add $t5, $t0, $t7
    sw $t4, 0($t5)             	 	# write the color to the display
    lw $t7, 8($t6)
    add $t5, $t0, $t7
    sw $t4, 0($t5)             	 	# write the color to the display
    jr $ra

make_door:
    li $t4, DOOR_COL              	# $t4 stores the brown color for door
    lw $t6, 0($sp)
    addi $sp, $sp, 4
    lw $t7, 0($t6)
    add $t5, $t0, $t7
    sw $t4, 0($t5)             	 	# write the color to the display
    lw $t7, 4($t6)
    add $t5, $t0, $t7
    sw $t4, 0($t5)             	 	# write the color to the display
    lw $t7, 8($t6)
    add $t5, $t0, $t7
    sw $t4, 0($t5)             	 	# write the color to the display
    jr $ra

keypress_happened:
    lw $t2, 4($t9)                  # this assumes $t9 is set to 0xfff0000 from before
    beq $t2, 0x64, jump_right       # ASCII code of 'd' is 0x64 or 100 in decimal
    beq $t2, 0x61, jump_left        # ASCII code of 'a' is 0x61 or 97 in decimal
    beq $t2, 0x70, restart          # ASCII code of 'p' is 0x70 or 112 in decimal
    
right:   
    li $t0, BASE_ADDRESS            # $t0 stores the base address for display
    li $t9, BLACK                   # $t9 stores the black color for the player
    la $t7, PLAYER                  # $t7 stores the address of the player
    li $t4, GREEN                   # $t4 stores the green color for grass
    # check platform
    lw $t8, 0($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current base player position in $t8
    addi $a1, $t8, 4                # $a1 stores the address of the player's new position
    lw $a2, 0($a1)                  # store value of address in $a1 in $a2
    beq $a2, $t4, end_func     # jump back to constant loop if colour is grass
    lw $t8, 4($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current base player position in $t8
    addi $a1, $t8, 4                # $a1 stores the address of the player's new position
    lw $a2, 0($a1)                  # store value of address in $a1 in $a2
    beq $a2, $t4, end_func     # jump back to constant loop if colour is grass
    lw $t8, 8($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current base player position in $t8
    addi $a1, $t8, 4                # $a1 stores the address of the player's new position
    lw $a2, 0($a1)                  # store value of address in $a1 in $a2
    beq $a2, $t4, end_func     # jump back to constant loop if colour is grass
    lw $t8, 0($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current base player position in $t8
    addi $a1, $t8, 4                # $a1 stores the address of the player's new position
    # check borders
    addi $t6, $zero, 256            # store 256 in $t6 as right border values are (multiples of 256) - 4
    div $a1, $t6                    # divide $a1 by 256
    mfhi $t6                        # store remainder in $t6
    beq $t6, $zero, end_func        # jump back to constant loop if remainder is 0
    sw $t9, 0($t8)                  # write the black color to the player's prev position
    addi $t8, $t8, 4                # increment the player's position by 4
    sub $t8, $t8, $t0		        # subtract base address to regain index
    sw $t8, 0($t7)	   	            # store value of $t8 in address in $t7 
    lw $t8, 4($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current mid player position in $t8
    sw $t9, 0($t8)                  # write the black color to the player's prev position
    addi $t8, $t8, 4                # increment the player's position by 4
    sub $t8, $t8, $t0		        # subtract base address to regain index
    sw $t8, 4($t7)	   	            # store value of $t8 in address in $t7 
    lw $t8, 8($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current top player position in $t8
    sw $t9, 0($t8)                  # write the black color to the player's prev position
    addi $t8, $t8, 4                # increment the player's position by 4
    sub $t8, $t8, $t0		        # subtract base address to regain index
    sw $t8, 8($t7)	   	            # store value of $t8 in address in $t7
    j redraw_player

left:   
    li $t0, BASE_ADDRESS            # $t0 stores the base address for display
    li $t9, BLACK                   # $t9 stores the black color for the player
    la $t7, PLAYER                  # $t7 stores the address of the player
    li $t4, GREEN
    #check platform
    lw $t8, 0($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current base player position in $t8
    add $a1, $t8, $zero             # $a1 stores the address of the player's new position
    addi $a1, $a1, -4               # decrement $a1 by 4
    lw $a2, 0($a1)                  # store value of address in $a1 in $a2
    beq $a2, $t4, end_func     # jump back to constant loop if colour is grass
    lw $t8, 4($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current base player position in $t8
    add $a1, $t8, $zero             # $a1 stores the address of the player's new position
    addi $a1, $a1, -4               # decrement $a1 by 4
    lw $a2, 0($a1)                  # store value of address in $a1 in $a2
    beq $a2, $t4, end_func     # jump back to constant loop if colour is grass
    lw $t8, 8($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current base player position in $t8
    add $a1, $t8, $zero             # $a1 stores the address of the player's new position
    addi $a1, $a1, -4               # decrement $a1 by 4
    lw $a2, 0($a1)                  # store value of address in $a1 in $a2
    beq $a2, $t4, end_func     # jump back to constant loop if colour is grass
    lw $t8, 0($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current base player position in $t8
    add $a1, $t8, $zero             # $a1 stores the address of the player's new position
    #check borders
    addi $t6, $zero, 256            # store 256 in $t6 as left border values are (multiples of 256)
	div $a1, $t6                    # divide $a1 by 256
	mfhi $t6                        # store remainder in $t6
    beq $t6, $zero, end_func   # jump back to constant loop if remainder is 0
    sw $t9, 0($t8)                  # write the black color to the player's prev position
    addi $t8, $t8, -4               # decrement the player's position by 4
    sub $t8, $t8, $t0		        # subtract base address to regain index
    sw $t8, 0($t7)	   	            # store value of $t8 in address in $t7 
    lw $t8, 4($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current mid player position in $t8
    sw $t9, 0($t8)                  # write the black color to the player's prev position
    addi $t8, $t8, -4               # decrement the player's position by 4
    sub $t8, $t8, $t0		        # subtract base address to regain index
    sw $t8, 4($t7)	   	            # store value of $t8 in address in $t7 
    lw $t8, 8($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current top player position in $t8
    sw $t9, 0($t8)                  # write the black color to the player's prev position
    addi $t8, $t8, -4               # decrement the player's position by 4
    sub $t8, $t8, $t0		        # subtract base address to regain index
    sw $t8, 8($t7)	   	            # store value of $t8 in address in $t7
    j redraw_player

up:
    li $t0, BASE_ADDRESS            # $t0 stores the base address for display
    li $t9, BLACK                   # $t9 stores the black color for the player
    la $t7, PLAYER                  # $t7 stores the address of the player
    li $t4, GREEN
    # check border
    lw $t8, 8($t7)                  # store value of address in $t7 in $t8
    add $a1, $t8, $zero             # $a1 stores the address of the player's new position
    addi $a1, $a1, -1024             # decrement $a1 by 1024
    blez $a1, end_func         # jump back to constant loop if $a1 is less than 0
    # check platform
    lw $t8, 8($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current base player position in $t8
    add $a1, $t8, $zero             # $a1 stores the address of the player's new position
    addi $a1, $a1, -256             # decrement $a1 by 128
    lw $a2, 0($a1)                  # store value of address in $a1 in $a2
    beq $a2, $t4, end_func     # jump back to constant loop if colour is grasss
    add $a1, $t8, $zero             # $a1 stores the address of the player's new position
    addi $a1, $a1, -512             # decrement $a1 by 128
    lw $a2, 0($a1)                  # store value of address in $a1 in $a2
    beq $a2, $t4, end_func     # jump back to constant loop if colour is grasss
    add $a1, $t8, $zero             # $a1 stores the address of the player's new position
    addi $a1, $a1, -768             # decrement $a1 by 128
    lw $a2, 0($a1)                  # store value of address in $a1 in $a2
    beq $a2, $t4, end_func     # jump back to constant loop if colour is grasss
    add $a1, $t8, $zero             # $a1 stores the address of the player's new position
    addi $a1, $a1, -1024             # decrement $a1 by 128
    lw $a2, 0($a1)                  # store value of address in $a1 in $a2
    beq $a2, $t4, end_func     # jump back to constant loop if colour is grasss
    lw $t8, 8($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current base player position in $t8
    sw $t9, 0($t8)                  # write the black color to the player's prev position
    addi $t8, $t8, -1024             # decrement the player's position by 512
    sub $t8, $t8, $t0		        # subtract base address to regain index
    sw $t8, 8($t7)	   	            # store value of $t8 in address in $t7
    lw $t8, 4($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current base player position in $t8
    sw $t9, 0($t8)                  # write the black color to the player's prev position
    addi $t8, $t8, -1024             # decrement the player's position by 512
    sub $t8, $t8, $t0		        # subtract base address to regain index
    sw $t8, 4($t7)	   	            # store value of $t8 in address in $t7
    lw $t8, 0($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current base player position in $t8
    sw $t9, 0($t8)                  # write the black color to the player's prev position
    addi $t8, $t8, -1024             # decrement the player's position by 512
    sub $t8, $t8, $t0		        # subtract base address to regain index
    sw $t8, 0($t7)	   	            # store value of $t8 in address in $t7
    j redraw_player

down:
    li $t0, BASE_ADDRESS            # $t0 stores the base address for display
    li $t9, BLACK                   # $t9 stores the black color for the player
    la $t7, PLAYER                  # $t7 stores the address of the player
    li $t4, GREEN
    # check border
    lw $t8, 0($t7)                  # store value of address in $t7 in $t8
    add $a1, $t8, $zero             # $a1 stores the address of the player's new position
    addi $a1, $a1, 256              # increment $a1 by 128
    addi $a2, $zero, 15612           # $a2 stores the address of the last position in the screen
    bgt	$a1, $a2, end_func	    # if $a1 > $a2 then constant_loop
    # check platform
    lw $t8, 0($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current base player position in $t8
    add $a1, $t8, $zero             # $a1 stores the address of the player's new position
    addi $a1, $a1, 256              # increment $a1 by 128
    lw $a2, 0($a1)                  # store value of address in $a1 in $a2
    beq $a2, $t4, end_func     # jump back to constant loop if colour is grasss
    lw $t8, 0($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current base player position in $t8
    sw $t9, 0($t8)                  # write the black color to the player's prev position
    addi $t8, $t8, 256              # increment the player's position by 512
    sub $t8, $t8, $t0		        # subtract base address to regain index
    sw $t8, 0($t7)	   	            # store value of $t8 in address in $t7
    lw $t8, 4($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current base player position in $t8
    sw $t9, 0($t8)                  # write the black color to the player's prev position
    addi $t8, $t8, 256              # increment the player's position by 512
    sub $t8, $t8, $t0		        # subtract base address to regain index
    sw $t8, 4($t7)	   	            # store value of $t8 in address in $t7
    lw $t8, 8($t7)                  # store value of address in $t7 in $t8
    add $t8, $t8, $t0		        # store current base player position in $t8
    sw $t9, 0($t8)                  # write the black color to the player's prev position
    addi $t8, $t8, 256              # increment the player's position by 512
    sub $t8, $t8, $t0		        # subtract base address to regain index
    sw $t8, 8($t7)	   	            # store value of $t8 in address in $t7
    j redraw_player


redraw_player:
    li $t0, BASE_ADDRESS            # $t0 stores the base address for display
    la $t7, PLAYER                 # $t7 stores the address of the player
    li $t9, PLAYER_COL             # $t9 stores the red color for the player
    lw $t8, 0($t7)                 # store value of address in $t7 in $t8
    add $t8, $t8, $t0		       # store current base player position in $t8
    sw $t9, 0($t8)		           # store player colour in address
    lw $t8, 4($t7)                 # store value of address in $t7 in $t8
    add $t8, $t8, $t0		       # store current base player position in $t8
    sw $t9, 0($t8)		           # store player colour in address
    lw $t8, 8($t7)                 # store value of address in $t7 in $t8
    add $t8, $t8, $t0		       # store current base player position in $t8
    sw $t9, 0($t8)		           # store player colour in address   
end_func:
    jr $ra
    
jump_left:
    jal up
    jal up
    jal up
    jal up
    jal left
    jal left
    jal left
    jal left
    li  $s0, 256
left_down_loop:
    jal down
    addi $s0, $s0, -1
    bnez $s0, left_down_loop
    la $t7, PLAYER                 # $t7 stores the address of the player
    lw $t8, 0($t7)                 # store value of address in $t7 in $t8
    la $s1, LEVEL                  # $s1 stores the address of the level
    lw $s2, 0($s1)                 # store value of address in $s1 in $t9
    li $s1, 1
    beq $s2, $s1, level_1_collect
    li $s1, 2
    beq $s2, $s1, level_2_collect
    li $s1, 3
    beq $s2, $s1, level_3_collect

jump_right:
    jal up
    jal up
    jal up
    jal up
    jal right
    jal right
    jal right
    jal right
    li  $s0, 256
right_down_loop:
    jal down
    addi $s0, $s0, -1
    bnez $s0, right_down_loop
    la $t7, PLAYER                 # $t7 stores the address of the player
    lw $t8, 0($t7)                 # store value of address in $t7 in $t8
    la $s1, LEVEL                  # $s1 stores the address of the level
    lw $s2, 0($s1)                 # store value of address in $s1 in $t9
    li $s1, 1
    beq $s2, $s1, level_1_collect
    li $s1, 2
    beq $s2, $s1, level_2_collect
    li $s1, 3
    beq $s2, $s1, level_3_collect

level_1_collect:
    la $t7, COIN_5
    lw $t9, 0($t7)
    beq $t8, $t9, coin_5_found
    la $t7, COIN_6
    lw $t9, 0($t7)
    beq $t8, $t9, coin_6_found
    la $t7, STAR_3
    lw $t9, 0($t7)
    beq $t8, $t9, star_3_found
    la $t7, CURSE_1
    lw $t9, 0($t7)
    beq $t8, $t9, curse_1_found
    la $t7, DOOR_3
    lw $t9, 0($t7)
    beq $t8, $t9, door_3_found
    la $t7, DOOR_4
    lw $t9, 0($t7)
    beq $t8, $t9, door_4_found
    j constant_loop

level_2_collect:
    la $t7, COIN_7
    lw $t9, 0($t7)
    beq $t8, $t9, coin_7_found
    la $t7, COIN_8
    lw $t9, 0($t7)
    beq $t8, $t9, coin_8_found
    la $t7, COIN_9
    lw $t9, 0($t7)
    beq $t8, $t9, coin_9_found
    la $t7, STAR_4
    lw $t9, 0($t7)
    beq $t8, $t9, star_4_found
    la $t7, CURSE_2
    lw $t9, 0($t7)
    beq $t8, $t9, curse_2_found
    la $t7, CURSE_3
    lw $t9, 0($t7)
    beq $t8, $t9, curse_3_found
    la $t7, DOOR_5
    lw $t9, 0($t7)
    beq $t8, $t9, door_5_found
    la $t7, DOOR_6
    lw $t9, 0($t7)
    beq $t8, $t9, door_6_found
    j constant_loop

level_3_collect:
    la $t7, COIN_1
    lw $t9, 0($t7)
    beq $t8, $t9, coin_1_found
    la $t7, COIN_2
    lw $t9, 0($t7)
    beq $t8, $t9, coin_2_found
    la $t7, COIN_3
    lw $t9, 0($t7)
    beq $t8, $t9, coin_3_found
    la $t7, COIN_4
    lw $t9, 0($t7)
    beq $t8, $t9, coin_4_found
    la $t7, STAR_1
    lw $t9, 0($t7)
    beq $t8, $t9, star_1_found
    la $t7, STAR_2
    lw $t9, 0($t7)
    beq $t8, $t9, star_2_found
    la $t7, CURSE_4
    lw $t9, 0($t7)
    beq $t8, $t9, curse_4_found
    la $t7, CURSE_5
    lw $t9, 0($t7)
    beq $t8, $t9, curse_5_found
    la $t7, DOOR_1
    lw $t9, 0($t7)
    beq $t8, $t9, door_1_found
    la $t7, DOOR_2
    lw $t9, 0($t7)
    beq $t8, $t9, door_2_found
    j constant_loop
    
coin_score:
    la $s1, SCORE
    lw $s2, 0($s1)
    addi $s2, $s2, 1
    sw $s2, 0($s1)
    li $v0, 4
    la $a0, prt_str
    syscall
    li $v0, 36
    addi $a0, $s2, 0
    syscall
    j constant_loop
 
star_score:
    la $s1, SCORE
    lw $s2, 0($s1)
    addi $s2, $s2, 3
    sw $s2, 0($s1)
    li $v0, 4
    la $a0, prt_str
    syscall
    li $v0, 36
    addi $a0, $s2, 0
    syscall
    j constant_loop

curse_score:
    la $s1, SCORE
    lw $s2, 0($s1)
    addi $s2, $s2, -1
    sw $s2, 0($s1)
    li $v0, 4
    la $a0, prt_str
    syscall
    li $v0, 36
    addi $a0, $s2, 0
    syscall
    j constant_loop
    
coin_1_found:
    la $s0, COIN_1
    li $s1, -1
    sw $s1, 0($s0)
    j coin_score
    
coin_2_found:
    la $s0, COIN_2
    li $s1, -1
    sw $s1, 0($s0)
    j coin_score 
    
coin_3_found:
    la $s0, COIN_3
    li $s1, -1
    sw $s1, 0($s0)  
    j coin_score

coin_4_found:
    la $s0, COIN_4
    li $s1, -1
    sw $s1, 0($s0)  
    j coin_score

coin_5_found:
    la $s0, COIN_5
    li $s1, -1
    sw $s1, 0($s0)  
    j coin_score

coin_6_found:
    la $s0, COIN_6
    li $s1, -1
    sw $s1, 0($s0)  
    j coin_score

coin_7_found:
    la $s0, COIN_7
    li $s1, -1
    sw $s1, 0($s0)  
    j coin_score

coin_8_found:
    la $s0, COIN_8
    li $s1, -1
    sw $s1, 0($s0)  
    j coin_score

coin_9_found:
    la $s0, COIN_9
    li $s1, -1
    sw $s1, 0($s0)  
    j coin_score
    
star_1_found:
    la $s0, STAR_1
    li $s1, -1
    sw $s1, 0($s0)  
    j star_score
    
star_2_found:
    la $s0, STAR_2
    li $s1, -1
    sw $s1, 0($s0)  
    j star_score

star_3_found:
    la $s0, STAR_3
    li $s1, -1
    sw $s1, 0($s0)  
    j star_score
    
star_4_found:
    la $s0, STAR_4
    li $s1, -1
    sw $s1, 0($s0)  
    j star_score

curse_1_found:
    la $s0, CURSE_1
    li $s1, -1
    sw $s1, 0($s0)  
    j curse_score
    
curse_2_found:
    la $s0, CURSE_2
    li $s1, -1
    sw $s1, 0($s0)  
    j curse_score

curse_3_found:
    la $s0, CURSE_3
    li $s1, -1
    sw $s1, 0($s0)  
    j curse_score
    
curse_4_found:
    la $s0, CURSE_4
    li $s1, -1
    sw $s1, 0($s0)  
    j curse_score

curse_5_found:
    la $s0, CURSE_5
    li $s1, -1
    sw $s1, 0($s0)  
    j curse_score
    
door_1_found:
    la $s0, DOOR_1
    li $s1, -1
    sw $s1, 0($s0)
    j end_game

door_2_found:
    la $s0, DOOR_2
    li $s1, -1
    sw $s1, 0($s0)
    j end_game

door_3_found:
    la $s0, DOOR_3
    li $s1, -1
    sw $s1, 0($s0)
    la $s0, LEVEL
    li $s1, 2
    sw $s1, 0($s0)
    j level_2

door_4_found:
    la $s0, DOOR_4
    li $s1, -1
    sw $s1, 0($s0)
    la $s0, LEVEL
    li $s1, 2
    sw $s1, 0($s0)
    j level_2

door_5_found:
    la $s0, DOOR_5
    li $s1, -1
    sw $s1, 0($s0)
    la $s0, LEVEL
    li $s1, 3
    sw $s1, 0($s0)
    j level_3

door_6_found:
    la $s0, DOOR_6
    li $s1, -1
    sw $s1, 0($s0)
    la $s0, LEVEL
    li $s1, 3
    sw $s1, 0($s0)
    j level_3
    
restart:
    la $s3, PLAYER
    addi $s4, $zero, 15360
    sw $s4, 0($s3)
    addi $s4, $zero, 15104
    sw $s4, 4($s3)
    addi $s4, $zero, 14848
    sw $s4, 8($s3)
    la $s3, COIN_1
    addi $s4, $zero, 13100
    sw $s4, 0($s3)
    la $s3, COIN_2
    addi $s4, $zero, 11628
    sw $s4, 0($s3)
    la $s3, COIN_3
    addi $s4, $zero, 13740
    sw $s4, 0($s3)
    la $s3, COIN_4
    addi $s4, $zero, 2364
    sw $s4, 0($s3)
    la $s3, COIN_5
    addi $s4, $zero, 13136
    sw $s4, 0($s3)
    la $s3, COIN_6
    addi $s4, $zero, 11664
    sw $s4, 0($s3)
    la $s3, COIN_7
    addi $s4, $zero, 12844
    sw $s4, 0($s3)
    la $s3, COIN_8
    addi $s4, $zero, 11372
    sw $s4, 0($s3)
    la $s3, COIN_9
    addi $s4, $zero, 15504
    sw $s4, 0($s3)
    la $s3, STAR_1
    addi $s4, $zero, 8620
    sw $s4, 0($s3)
    la $s3, STAR_2
    addi $s4, $zero, 7500
    sw $s4, 0($s3)
    la $s3, STAR_3
    addi $s4, $zero, 10176
    sw $s4, 0($s3)
    la $s3, STAR_4
    addi $s4, $zero, 5772
    sw $s4, 0($s3)
    la $s3, CURSE_1
    addi $s4, $zero, 15520
    sw $s4, 0($s3)
    la $s3, CURSE_2
    addi $s4, $zero, 5756
    sw $s4, 0($s3)
    la $s3, CURSE_3
    addi $s4, $zero, 8380
    sw $s4, 0($s3)
    la $s3, CURSE_4
    addi $s4, $zero, 15452
    sw $s4, 0($s3)
    la $s3, CURSE_5
    addi $s4, $zero, 6028
    sw $s4, 0($s3)
    la $s3, DOOR_1
    addi $s4, $zero, 3516
    sw $s4, 0($s3)
    la $s3, DOOR_2
    addi $s4, $zero, 3520
    sw $s4, 0($s3)
    la $s3, DOOR_3
    addi $s4, $zero, 15596
    sw $s4, 0($s3)
    la $s3, DOOR_4
    addi $s4, $zero, 15600
    sw $s4, 0($s3)
    la $s3, DOOR_5
    addi $s4, $zero, 2104
    sw $s4, 0($s3)
    la $s3, DOOR_6
    addi $s4, $zero, 2108
    sw $s4, 0($s3)
    la $s3, SCORE
    addi $s4, $zero, 0
    sw $s4, 0($s3)
    la $s0, LEVEL
    li $s1, 1
    sw $s1, 0($s0)
    jal clear_screen
    j main

print_score:
    li $t0, BASE_ADDRESS
    li $s1, SCORE_BAR
    add $s1, $s1, $t0
    li $s3, SCORE_COL
    la $t1, SCORE
    lw $s2, 0($t1)
score_loop:
    bltz $s2, score_loop_end
    sw $s3, 0($s1)
    addi $s1, $s1, 4
    addi $s2, $s2, -1
    j score_loop
score_loop_end:
    jr $ra     

end_game:
    # Clear screen
    jal clear_screen
    

    # Branch to won/lost
    la $s0, SCORE
    lw $s2, 0($s0)
    li $s1, 18
    bge $s2, $s1, game_won
    j game_lost

game_won:
    # Print won
    li $t0, BASE_ADDRESS
    li $t4, WON_COL

    # Print w
    sw $t4, 7780($t0)
    sw $t4, 8036($t0)
    sw $t4, 8292($t0)
    sw $t4, 8548($t0)
    sw $t4, 8804($t0)
    sw $t4, 8552($t0)
    sw $t4, 8300($t0)
    sw $t4, 8560($t0)
    sw $t4, 7796($t0)
    sw $t4, 8052($t0)
    sw $t4, 8308($t0)
    sw $t4, 8564($t0)
    sw $t4, 8820($t0)

    # Print o
    sw $t4, 8060($t0)
    sw $t4, 8316($t0)
    sw $t4, 8572($t0)
    sw $t4, 8832($t0)
    sw $t4, 8836($t0)
    sw $t4, 8584($t0)
    sw $t4, 8328($t0)
    sw $t4, 8072($t0)
    sw $t4, 7812($t0)
    sw $t4, 7808($t0)

    # Print n
    sw $t4, 7824($t0)
    sw $t4, 8080($t0)
    sw $t4, 8336($t0)
    sw $t4, 8592($t0)
    sw $t4, 8848($t0)
    sw $t4, 8084($t0)
    sw $t4, 8344($t0)
    sw $t4, 7836($t0)
    sw $t4, 8092($t0)
    sw $t4, 8348($t0)
    sw $t4, 8604($t0)
    sw $t4, 8860($t0)
    
    # play game won sound
    li $v0, 33
    li $a0, PITCH_C
    li $a1, NOTE_LENGTH
    li $a2, INSTRUMENT
    li $a3, VOLUME
    syscall
    
    li $v0, 33
    li $a0, PITCH_E
    li $a1, NOTE_LENGTH
    li $a2, INSTRUMENT
    li $a3, VOLUME
    syscall
    
    li $v0, 33
    li $a0, PITCH_G
    li $a1, NOTE_LENGTH_2
    li $a2, INSTRUMENT
    li $a3, VOLUME
    syscall
    
    li $v0, 33
    li $a0, PITCH_E
    li $a1, NOTE_LENGTH_2
    li $a2, INSTRUMENT
    li $a3, VOLUME
    syscall
    
    li $v0, 33
    li $a0, PITCH_G
    li $a1, NOTE_LENGTH
    li $a2, INSTRUMENT
    li $a3, VOLUME
    syscall
    
    j post_loop

game_lost:
    # Print lost
    li $t0, BASE_ADDRESS
    li $t4, LOST_COL

    # Print l
    sw $t4, 7772($t0)
    sw $t4, 8028($t0)
    sw $t4, 8284($t0)
    sw $t4, 8540($t0)
    sw $t4, 8796($t0)
    sw $t4, 8800($t0)
    sw $t4, 8804($t0)
    sw $t4, 8808($t0)

    # Print o
    sw $t4, 8048($t0)
    sw $t4, 8304($t0)
    sw $t4, 8560($t0)
    sw $t4, 8820($t0)
    sw $t4, 8824($t0)
    sw $t4, 8572($t0)
    sw $t4, 8316($t0)
    sw $t4, 8060($t0)
    sw $t4, 7800($t0)
    sw $t4, 7796($t0)

    # Print s
    sw $t4, 7824($t0)
    sw $t4, 7820($t0)
    sw $t4, 7816($t0)
    sw $t4, 8068($t0)
    sw $t4, 8328($t0)
    sw $t4, 8332($t0)
    sw $t4, 8592($t0)
    sw $t4, 8844($t0)
    sw $t4, 8840($t0)
    sw $t4, 8836($t0)

    # Print t
    sw $t4, 7832($t0)
    sw $t4, 7836($t0)
    sw $t4, 7840($t0)
    sw $t4, 7844($t0)
    sw $t4, 7848($t0)
    sw $t4, 8096($t0)
    sw $t4, 8352($t0)
    sw $t4, 8608($t0)
    sw $t4, 8864($t0)


    # play game lost sound
    li $v0, 33
    li $a0, PITCH_G
    li $a1, NOTE_LENGTH
    li $a2, INSTRUMENT
    li $a3, VOLUME
    syscall
    
    li $v0, 33
    li $a0, PITCH_E
    li $a1, NOTE_LENGTH
    li $a2, INSTRUMENT
    li $a3, VOLUME
    syscall
    
    li $v0, 33
    li $a0, PITCH_C
    li $a1, NOTE_LENGTH
    li $a2, INSTRUMENT
    li $a3, VOLUME
    syscall
	
    j post_loop

clear_screen:
    li $t0, BASE_ADDRESS
    li $s1, 16380
    li $s3, BLACK
    add $s2, $s1, $t0
clear:    
    sw $s3, 0($s2)
    addi $s2, $s2, -4
    add $s1, $s1, -4
    beqz $s1, clear_done
    j clear
clear_done:
    jr $ra

post_loop:
    # Check keyboard input
    li $t9, 0xffff0000              # $t9 stores the memory address for keyboard input
    lw $t8, 0($t9)                  # $t8 stores the value at keyboard input memory address
    beq $t8, 1, post_keypress_happened   # if the value at keyboard input memory address is 1, then keypress happened    
    jal print_score
    j post_loop	

post_keypress_happened:
    lw $t2, 4($t9)                  # this assumes $t9 is set to 0xfff0000 from before
    beq $t2, 0x70, restart          # ASCII code of 'p' is 0x70 or 112 in decimal

exit:
    # clear screen
    jal clear_screen

    # Print END
    li $t0, BASE_ADDRESS
    li $t4, END_COL

    # Print E
    sw $t4, 7796($t0)
    sw $t4, 7792($t0)
    sw $t4, 7788($t0)
    sw $t4, 7784($t0)
    sw $t4, 8040($t0)
    sw $t4, 8296($t0)
    sw $t4, 8552($t0)
    sw $t4, 8808($t0)
    sw $t4, 8812($t0)
    sw $t4, 8816($t0)
    sw $t4, 8820($t0)
    sw $t4, 8300($t0)
    sw $t4, 8304($t0)

    # print N
    sw $t4, 7804($t0)
    sw $t4, 8060($t0)
    sw $t4, 8316($t0)
    sw $t4, 8572($t0)
    sw $t4, 8828($t0)
    sw $t4, 7816($t0)
    sw $t4, 8072($t0)
    sw $t4, 8328($t0)
    sw $t4, 8584($t0)
    sw $t4, 8840($t0)
    sw $t4, 8064($t0)
    sw $t4, 8324($t0)

    # print D
    sw $t4, 7824($t0)
    sw $t4, 7828($t0)
    sw $t4, 7832($t0)
    sw $t4, 8092($t0)
    sw $t4, 8348($t0)
    sw $t4, 8604($t0)
    sw $t4, 8856($t0)
    sw $t4, 8852($t0)
    sw $t4, 8848($t0)
    sw $t4, 8592($t0)
    sw $t4, 8336($t0)
    sw $t4, 8080($t0)

    li  $v0, 10           # service 1 is print integer
    syscall

