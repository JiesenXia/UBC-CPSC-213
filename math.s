ld $0x2000, r0       # r0: the address of b
ld (r0), r1          # r1: the value of b
inc r1               # r1: (b+1)
inca r1              # r1: (b+1)+4

shr $0x1, r1         # r1: ((b+1)+4)/2
ld (r0), r2          # r2: the initial value of b
and r2, r1           # r1: ((b+1)+4)/2 & b
shl $0x2, r1         # r1: (((b+1)+4)/2 & b) << 2

ld $0x1000, r3       # r3: address of a
st r1, (r3)            # store the value at a

halt                 # halt


.pos 0x1000
a:
.long 0x1                   # a

.pos 0x2000
b:      
.long 0x2                   # b
 