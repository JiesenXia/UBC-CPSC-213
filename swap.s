

ld $0x2000, r0  # r0: address of array[0]
ld (r0), r1     # r1: value at array[0]
ld $0x1000, r2  # r2: address of t
st r1, (r2)     #     t = array[0];


                     # r0: address of array[0]
ld $0x1, r3             # r3: index of array[1] = 1    
ld (r0, r3, 4), r4   # r4: load the value at array[1]
st r4, (r0)          #       array[0] = array[1];


                   # 1.address of array[1]   r0, r3, 4
                   # 2.address of t    r2
ld (r2), r5        # 3.value of t      r5
st r5, (r0, r3 ,4) #     array[1] = t;

halt                # halt

.pos 0x1000
t:
.long 0x0        # t

.pos 0x2000
array:
.long 0x1           # array[0]
.long 0x2          # array[1]
