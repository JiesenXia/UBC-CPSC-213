ld $0x1000, r0      # r0: the address of i
ld $0x1004, r1      # r1: the address of x
ld $0x1008, r2      # r2: the address of y
ld $0x2000, r3      # r3: the address of data[0]
ld (r0), r4         # r4: the value of i
ld (r3, r4, 4), r5  # r5: value of array[i]
inc r4              # i+1
ld (r3, r4, 4), r6  # r6: value of array[i]
add r5, r6          # r6: array[i]+array[i+1]

st r6, (r2)         # y = array[i]+array[i+1]

ld (r2), r7         # r7: the value of y

ld $0xff, r4        # r4: 0xff
and r7, r4          # r4: y & 0xff

st r4, (r1)         # x = y & 0xff

halt                # halt













.pos 0x1000
i:
.long 0x01

.pos 0x1004
x:
.long 0xff

.pos 0x1008
y: 
.long 0xff

.pos 0x2000
data:           
.long 0x0         # b[0]
.long 0x1         # b[1]
.long 0x2         # b[2]
.long 0x3         # b[3]