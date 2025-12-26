; Basic header for C64 PRG file (load address $0801)
    .word $0801         ; Load address / next line pointer
    .word nextline      ; Pointer to next BASIC line
    .word 10            ; BASIC line number

    .byte $9e           ; SYS token
    .byte "2064"        ; Address in decimal (2064 = $0810)
    .byte $00           ; End of BASIC line

nextline:
    .word 0             ; End of BASIC program

* = $0810               ; <-- MUST start at column 1 (no leading spaces/tabs!)

start:
    lda #'H'
    jsr $ffd2           ; CHROUT - print character
    lda #'E'
    jsr $ffd2
    lda #'L'
    jsr $ffd2
    lda #'L'
    jsr $ffd2
    lda #'O'
    jsr $ffd2
    lda #$0d            ; Carriage return
    jsr $ffd2
    rts                 ; Return to BASIC

