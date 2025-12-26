; --- External and Routine Definitions ---
CHROUT  = $FFD2     ; Kernal character output routine
.word   $0801       ; Load address (2 bytes)
.word   nextline    ; Pointer to next BASIC line
.word   10          ; Line number 10
.byte   $9E         ; SYS token
.byte   " 2061"     ; Address of start of ASM code (2061 = $080D)
.byte   0           ; End of BASIC line
nextline:
.word   0           ; End of BASIC program

.segment "CODE"     ; Segment for our assembly code
start:
    ldx #0          ; Initialize index register X
loop:
    lda msg,x       ; Load character from msg + X
    beq done        ; Exit if we reach the null terminator (0)
    jsr CHROUT      ; Print the character
    inx             ; Move to next character
    jmp loop        ; Repeat

done:
    rts             ; Return to BASIC

.segment "RODATA"   ; Segment for read-only data
msg:
    .asciiz "HELLO WORLD" ; String with automatic null terminator

