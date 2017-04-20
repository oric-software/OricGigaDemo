; da65 V2.15
; Created:    2017-04-20 12:39:21
; Input file: Extraction/scrollChessboard.bin
; Page:       1


        .setcpu "6502"

L0000           := $0000
L0002           := $0002
L0003           := $0003
L0005           := $0005
RES             := $0014
BASIC_CURRENT_LINE_EXEC:= $00A8
L0201           := $0201
L0202           := $0202
BASIC_PATTERN_ARG:= $020C
BASIC_LOWERCASE_UPPERCASE:= $0213
BASIC_MEMORY_SIZE:= $0220
BASIC_X_TEXT    := $0268
BASIC_Y_TEXT    := $0269
BASICFLG        := $026A
PARAMS          := $02E0
V1DRB           := $0300
V1DRA           := $0301
V1DDRB          := $0302
V1DDRA          := $0303
V1T1            := $0304
V1T1L           := $0306
V1T2            := $0308
V1ACR           := $030B
V1PCR           := $030C
V1IFR           := $030D
V1ER            := $030E
V1DRAB          := $030F
L0638           := $0638
L2E00           := $2E00
L454C           := $454C
L4E49           := $4E49
L524F           := $524F
L6177           := $6177
L656C           := $656C
L6966           := $6966
L6974           := $6974
L6C61           := $6C61
L6C65           := $6C65
L6D73           := $6D73
L6E75           := $6E75
L6F74           := $6F74
L7261           := $7261
L736C           := $736C
L7473           := $7473
L756D           := $756D
L7720           := $7720
L7865           := $7865
LDF8C           := $DF8C
; $800
_init:  tsx
        lda     #$30
        sta     $54
        lda     #$2A
        sta     $55
        ldy     #$00
        stx     L0811
        jmp     _main

L0811:  brk
; $812
_dunno: sty     $6A
        stx     $6B
        asl     a
        sta     $68
        tax
        beq     L0824
L081C:  lda     $6B,x
        sta     ($54),y
        iny
        dex
        bne     L081C
L0824:  sty     $69
        lda     $50
        sta     ($54),y
        iny
        lda     $51
        sta     ($54),y
        iny
        lda     $52
        sta     ($54),y
        iny
        lda     $53
        sta     ($54),y
        iny
        lda     $68
        sta     ($54),y
        iny
        lda     $6A
        sta     ($54),y
        clc
        lda     $54
        sta     $50
        adc     $69
        sta     $52
        lda     $55
        sta     $51
        adc     #$00
        sta     $53
        lda     $6B
        adc     $52
        sta     $54
        lda     $53
        adc     #$00
        sta     $55
        rts

L0861:  stx     $68
        sta     $69
        lda     $50
        sta     $54
        lda     $51
        sta     $55
        ldy     #$04
        lda     ($52),y
        tax
        iny
        lda     ($52),y
        tay
        txa
        beq     L0881
L0879:  lda     ($54),y
        sta     $6B,x
        iny
        dex
        bne     L0879
L0881:  ldy     #$00
        lda     ($52),y
        sta     $50
        iny
        lda     ($52),y
        sta     $51
        iny
        lda     ($52),y
        tax
        iny
        lda     ($52),y
        stx     $52
        sta     $53
        ldx     $68
        lda     $69
        rts

        jmp     (L0000)

        ldx     L0811
        txs
        rts

        lda     #$FF
        tax
        rts

        lda     #$00
        tax
        rts

        ldx     #$01
        lda     #$00
        rts

        jsr     LDF8C
        ldx     $D3
        lda     $D4
        rts

L08B9:  .byte   $2F
        and     #$25
        rol     $2C
        and     ($36),y
        rol     $36,x
        rol     $36,x
        rol     $35,x
        .byte   $34
        .byte   $33
        .byte   $33
        .byte   $47
        .byte   $5B
        .byte   $6F
        .byte   $6F
        .byte   $6F
        ror     a
        ror     $62
        .byte   $63
        .byte   $63
        .byte   $63
        .byte   $4F
        .byte   $3A
        .byte   $2B
        bmi     L090E
        rol     $4A,x
        lsr     $7272,x
        lsr     $364A,x
        rol     $36,x
        rol     $36,x
        and     $34,x
        .byte   $33
        .byte   $33
        .byte   $47
        .byte   $5B
        .byte   $6F
        .byte   $6F
        .byte   $6F
        ror     a
        ror     $62
        .byte   $63
        .byte   $63
        .byte   $63
        .byte   $4F
        .byte   $3A
        .byte   $2B
        bmi     L092E
        .byte   $2F
        and     #$25
        rol     $2C
        and     ($36),y
        rol     $36,x
        rol     $36,x
        rol     $35,x
        .byte   $34
        .byte   $33
        .byte   $33
        .byte   $47
        .byte   $5B
        .byte   $6F
        .byte   $6F
        .byte   $6F
L090E:  ror     a
        ror     $62
        .byte   $63
        .byte   $63
        .byte   $63
        .byte   $4F
        .byte   $3A
        .byte   $2B
        bmi     L094E
        .byte   $2F
        and     #$25
        rol     $2C
        and     ($36),y
        rol     $36,x
        rol     $36,x
        rol     $35,x
        .byte   $34
        .byte   $33
        .byte   $33
        .byte   $47
        .byte   $5B
        .byte   $6F
        .byte   $6F
        .byte   $6F
L092E:  ror     a
        ror     $62
        .byte   $63
        .byte   $63
        .byte   $63
        .byte   $4F
        .byte   $3A
        .byte   $2B
        bmi     L096E
        .byte   $2F
        and     #$25
        rol     $2C
        and     ($36),y
        rol     $36,x
        rol     $36,x
        rol     $35,x
        .byte   $34
        .byte   $33
        .byte   $33
        .byte   $47
        .byte   $5B
        .byte   $6F
        .byte   $6F
        .byte   $6F
L094E:  ror     a
        ror     $62
        .byte   $63
        .byte   $63
        .byte   $63
        .byte   $4F
        .byte   $3A
        .byte   $2B
        bmi     L098E
        rol     $4A,x
        lsr     $7272,x
        lsr     $314A,x
        and     ($31),y
        .byte   $27
        rol     $24
        bit     $3E
        rol     $5858,x
        .byte   $72
        .byte   $72
        .byte   $71
L096E:  .byte   $6B
        adc     $4C
        eor     ($3D),y
        and     #$2E
        .byte   $47
        .byte   $5B
        .byte   $34
        and     $2F,x
        and     #$2A
        rol     $2C
        and     ($36),y
        rol     $36,x
        rol     $36,x
        rol     $35,x
        .byte   $34
        .byte   $33
        .byte   $33
        .byte   $47
        .byte   $5B
        .byte   $6F
        .byte   $6F
        .byte   $6F
L098E:  ror     a
        ror     $62
        .byte   $63
        .byte   $63
        .byte   $63
        .byte   $4F
        .byte   $3A
        .byte   $2B
        bmi     L09CE
        .byte   $2F
        and     #$25
        rol     $2C
        and     ($36),y
        rol     $36,x
        rol     $36,x
        rol     $35,x
        .byte   $34
        .byte   $33
        .byte   $33
        .byte   $47
        .byte   $5B
        .byte   $6F
        .byte   $6F
        .byte   $6F
        ror     a
        ror     $62
        .byte   $63
        .byte   $63
        .byte   $63
        .byte   $4F
        .byte   $3A
        .byte   $2B
        bmi     L09EE
        .byte   $2F
        and     #$25
        rol     $2C
        and     ($36),y
        rol     $36,x
        rol     $36,x
        rol     $35,x
        .byte   $34
        .byte   $33
        .byte   $33
        .byte   $47
        .byte   $5B
        .byte   $6F
        .byte   $6F
        .byte   $6F
L09CE:  ror     a
        ror     $62
        .byte   $63
        .byte   $63
        .byte   $63
        .byte   $4F
        .byte   $3A
        .byte   $2B
        bmi     L0A0E
        rol     $4A,x
        lsr     $7272,x
        lsr     $364A,x
        lsr     a
        lsr     $5E72,x
        eor     #$34
        .byte   $33
        .byte   $33
        .byte   $47
        .byte   $5B
        .byte   $6F
        .byte   $6F
        .byte   $6F
L09EE:  ror     a
        ror     $62
        .byte   $63
        .byte   $63
        .byte   $63
        .byte   $4F
        .byte   $3A
        .byte   $2B
        bmi     L0A2E
        .byte   $2F
        and     #$25
        rol     $2C
        and     ($36),y
        rol     $36,x
        rol     $36,x
        rol     $35,x
        .byte   $34
        .byte   $33
        .byte   $33
        .byte   $47
        .byte   $5B
        .byte   $6F
        .byte   $6F
        .byte   $6F
L0A0E:  ror     a
        ror     $62
        .byte   $63
        .byte   $63
        .byte   $63
        .byte   $4F
        .byte   $3A
        .byte   $2B
        bmi     L0A4E
        .byte   $2F
        and     #$25
        rol     $2C
        and     ($36),y
        rol     $36,x
        rol     $36,x
        rol     $35,x
        .byte   $34
        .byte   $33
        .byte   $33
        .byte   $47
        .byte   $5B
        .byte   $6F
        .byte   $6F
        .byte   $6F
L0A2E:  ror     a
        ror     $62
        .byte   $63
        .byte   $63
        .byte   $63
        .byte   $4F
        .byte   $3A
        .byte   $2B
        bmi     L0A6E
        ldx     #$06
        lda     #$02
        jsr     _dunno
        lda     #$00
        sta     $6E
        jmp     L0B10

L0A47:  lda     #$00
        sta     $6C
        jmp     L0AE5

L0A4E:  lda     $6C
        sta     $56
        lda     #$00
        sta     $57
        clc
        lda     #$82
        adc     $56
        sta     $58
        lda     #$BB
        adc     $57
        sta     $59
        lda     $6E
        sta     $5A
        lda     #$00
        sta     $5B
        lda     #$28
        .byte   $85
L0A6E:  ror     BASIC_CURRENT_LINE_EXEC+1
        brk
        sta     $67
        lda     $5A
        sta     $68
        lda     $5B
        sta     $69
        jsr     L1C88
        stx     $5C
        sta     $5D
        clc
        lda     $58
        adc     $5C
        sta     $58
        lda     $59
        adc     $5D
        sta     $59
        clc
        lda     #$24
        adc     $56
        sta     $56
        lda     #$00
        adc     $57
        sta     $57
        lda     #$05
        sta     $66
        lda     #$00
        sta     $67
        lda     $5A
        sta     $68
        lda     $5B
        sta     $69
        jsr     L1C88
        stx     $5A
        sta     $5B
        clc
        lda     $56
        adc     $5A
        sta     $56
        lda     $57
        adc     $5B
        sta     $57
        clc
        lda     #$3C
        adc     $56
        sta     $56
        lda     #$00
        adc     $57
        sta     $57
        ldy     #$00
        lda     $56
        sta     ($58),y
        lda     $6C
        sta     $56
        lda     #$00
        sta     $57
        inc     $56
        bne     L0AE1
        inc     $57
L0AE1:  lda     $56
        sta     $6C
L0AE5:  lda     $6C
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        cmp     #$04
        lda     $57
        sbc     #$00
        bvc     L0AF9
        eor     #$80
L0AF9:  bpl     L0AFE
        jmp     L0A4E

L0AFE:  lda     $6E
        sta     $56
        lda     #$00
        sta     $57
        inc     $56
        bne     L0B0C
        inc     $57
L0B0C:  lda     $56
        sta     $6E
L0B10:  lda     $6E
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        cmp     #$04
        lda     $57
        sbc     #$00
        bvc     L0B24
        eor     #$80
L0B24:  bpl     L0B29
        jmp     L0A47

L0B29:  jmp     L0861

L0B2C:  brk
L0B2D:  .byte   $02
        .byte   $04
        bpl     L0B36
        brk
        .byte   $02
        brk
        ora     (L0000,x)
L0B36:  eor     #$74
        jsr     L6177
        .byte   $73
        jsr     L6D73
        adc     ($6C,x)
        jmp     (L202E)

        jsr     L2020
        ora     ($01,x)
        eor     #$74
        jsr     L7473
        adc     ($72,x)
        .byte   $74
        .byte   $73
        jsr     L6F74
        jsr     L756D
        jmp     (L6974)

        bvs     L0BC9
        adc     L202C,y
        jsr     L0201
        adc     ($6E,x)
        .byte   $64
        jsr     L7865
        bvs     L0BCC
        ror     $2C64
        jsr     L6E75
        .byte   $74
        adc     #$6C
        jsr     L6C61
        jmp     (L7720)

        adc     ($73,x)
        jsr     L6966
        jmp     (L656C)

        .byte   $64
        rol     L2020
        ora     (L0003,x)
        eor     #$74
        jsr     L6177
        .byte   $73
        jsr     L6974
        adc     L2065
        ror     $6F
        .byte   $72
        jsr     L2020
        .byte   $02
        brk
        ora     (L0000,x)
        .byte   $44
        adc     $66
        adc     $6E
        .byte   $63
        adc     $2D
        lsr     $6F
        .byte   $72
        .byte   $63
        adc     $27
        .byte   $73
        jsr     L0202
        ora     (L0003,x)
        .byte   $47
        eor     #$47
        eor     ($04,x)
        .byte   $0F
        pha
        eor     #$43
        .byte   $4F
        jmp     L524F

        asl     L0005
        .byte   $42
        .byte   $4F
        eor     $4E,x
        .byte   $43
        eor     #$4E
        .byte   $47
L0BC9:  .byte   $03
        ora     ($4F,x)
L0BCC:  eor     $54,x
        jmp     L4E49

        eor     L0005
        ora     ($50,x)
        eor     ($52,x)
        eor     ($42,x)
        eor     ($43,x)
        .byte   $4B
        .byte   $44
        .byte   $52
        .byte   $4F
        bvc     L0C34
        .byte   $43
        .byte   $52
        .byte   $4F
        jmp     L454C

        .byte   $52
        jsr     L2020
        jsr     L0002
        ora     (L0000,x)
        .byte   $4F
        .byte   $6B
        jsr     L6974
        adc     L2065
        ror     $6F
        .byte   $72
        jsr     L0003
        .byte   $73
        .byte   $6F
        adc     $7465
        pla
        adc     #$6E
        .byte   $67
        jsr     L6C65
        .byte   $73
        adc     $2C
        jsr     L0005
        .byte   $73
        .byte   $63
        .byte   $72
        .byte   $6F
        jmp     (L736C)

        jsr     L7261
        adc     $20
        .byte   $04
        bpl     L0C81
        .byte   $6F
        .byte   $72
        adc     #$6E
        .byte   $67
        rol     $2E2E
        jsr     L2020
        jsr     L2020
        jsr     L2020
        .byte   $20
        brk
L0C32:  .byte   $2E
L0C33:  .byte   $0B
L0C34:  brk
L0C35:  brk
L0C36:  brk
L0C37:  brk
L0C38:  brk
L0C39:  brk
L0C3A:  brk
L0C3B:  brk
        brk
L0C3D:  .byte   $10
L0C3E:  brk
L0C3F:  brk
L0C40:  rti

L0C41:  ldx     #$06
        lda     #$08
        jsr     _dunno
        lda     L0C37
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        ora     $57
        bne     L0C5A
        jmp     L0C73

L0C5A:  lda     L0C37
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        bne     L0C69
        dec     $57
L0C69:  dec     $56
        lda     $56
        sta     L0C37
        jmp     L0F06

L0C73:  lda     L0C34
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        ora     $57
        .byte   $D0
L0C81:  .byte   $03
        jmp     L0CAC

        lda     L0C34
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        sta     $6A
        lda     $57
        ldx     #$01
        beq     L0C9E
L0C98:  lsr     a
        ror     $6A
        dex
        bne     L0C98
L0C9E:  ldx     $6A
        stx     $56
        sta     $57
        lda     $56
        sta     L0C34
        jmp     L0ECB

L0CAC:  lda     #$20
        sta     L0C34
L0CB1:  lda     #$00
        sta     $74
        ldx     L0C32
        lda     L0C33
        stx     $6A
        sta     $6B
        ldy     #$00
        lda     ($6A),y
        sta     $56
        lda     #$00
        ldx     $56
        stx     $56
        bpl     L0CCF
        lda     #$FF
L0CCF:  sta     $57
        lda     $56
        sta     $76
        lda     $76
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        sta     $78
        lda     $57
        sta     $79
        lda     $78
        cmp     #$00
        lda     $79
        sbc     #$00
        bvc     L0CF1
        eor     #$80
L0CF1:  bpl     L0CF6
        jmp     L0E78

L0CF6:  lda     #$06
        cmp     $78
        lda     #$00
        sbc     $79
        bvc     L0D02
        eor     #$80
L0D02:  bpl     L0D07
        jmp     L0E78

L0D07:  lda     $78
        asl     a
        sta     $56
        lda     $79
        rol     a
        sta     $57
        clc
        lda     #$37
        adc     $56
        sta     $56
        lda     #$0D
        adc     $57
        sta     $57
        ldy     #$00
        lda     ($56),y
        tax
        iny
        lda     ($56),y
        stx     $56
        sta     $57
        lda     $56
        sta     L0D35
        lda     $57
        sta     L0D36
        .byte   $4C
L0D35:  brk
L0D36:  brk
        eor     $0D
        .byte   $5B
        ora     L0D8B
        .byte   $BB
        ora     L0DEB
        .byte   $4B
        asl     L0E1B
        lda     #$2E
        sta     L0C32
        lda     #$0B
        sta     L0C33
        lda     #$01
        sta     L0C38
        lda     #$01
        sta     $74
        jmp     L0E78

        inc     L0C32
        bne     L0D63
        inc     L0C33
L0D63:  ldx     L0C32
        lda     L0C33
        stx     $6A
        sta     $6B
        ldy     #$00
        lda     ($6A),y
        sta     $56
        lda     #$00
        ldx     $56
        stx     $56
        bpl     L0D7D
        lda     #$FF
L0D7D:  sta     $57
        lda     $56
        sta     L0C39
        lda     #$01
        sta     $74
        jmp     L0E78

L0D8B:  inc     L0C32
        bne     L0D93
        inc     L0C33
L0D93:  ldx     L0C32
        lda     L0C33
        stx     $6A
        sta     $6B
        ldy     #$00
        lda     ($6A),y
        sta     $56
        lda     #$00
        ldx     $56
        stx     $56
        bpl     L0DAD
        lda     #$FF
L0DAD:  sta     $57
        lda     $56
        sta     L0C3E
        lda     #$01
        sta     $74
        jmp     L0E78

        inc     L0C32
        bne     L0DC3
        inc     L0C33
L0DC3:  ldx     L0C32
        lda     L0C33
        stx     $6A
        sta     $6B
        ldy     #$00
        lda     ($6A),y
        sta     $56
        lda     #$00
        ldx     $56
        stx     $56
        bpl     L0DDD
        lda     #$FF
L0DDD:  sta     $57
        lda     $56
        sta     L0C3A
        lda     #$01
        sta     $74
        jmp     L0E78

L0DEB:  inc     L0C32
        bne     L0DF3
        inc     L0C33
L0DF3:  ldx     L0C32
        lda     L0C33
        stx     $6A
        sta     $6B
        ldy     #$00
        lda     ($6A),y
        sta     $56
        lda     #$00
        ldx     $56
        stx     $56
        bpl     L0E0D
        lda     #$FF
L0E0D:  sta     $57
        lda     $56
        sta     L0C3D
        lda     #$01
        sta     $74
        jmp     L0E78

L0E1B:  inc     L0C32
        bne     L0E23
        inc     L0C33
L0E23:  ldx     L0C32
        lda     L0C33
        stx     $6A
        sta     $6B
        ldy     #$00
        lda     ($6A),y
        sta     $56
        lda     #$00
        ldx     $56
        stx     $56
        bpl     L0E3D
        lda     #$FF
L0E3D:  sta     $57
        lda     $56
        sta     L0C3F
        lda     #$01
        sta     $74
        jmp     L0E78

        inc     L0C32
        bne     L0E53
        inc     L0C33
L0E53:  ldx     L0C32
        lda     L0C33
        stx     $6A
        sta     $6B
        ldy     #$00
        lda     ($6A),y
        sta     $56
        lda     #$00
        ldx     $56
        stx     $56
        bpl     L0E6D
        lda     #$FF
L0E6D:  sta     $57
        lda     $56
        sta     L0C3B
        lda     #$01
        sta     $74
L0E78:  inc     L0C32
        bne     L0E80
        inc     L0C33
L0E80:  lda     $74
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        ora     $57
        beq     L0E91
        jmp     L0CB1

L0E91:  lda     $76
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        sta     $6A
        lda     $57
        ldx     #$03
        beq     L0EA9
L0EA3:  asl     $6A
        rol     a
        dex
        bne     L0EA3
L0EA9:  ldx     $6A
        stx     $56
        sta     $57
        sec
        lda     $56
        sbc     #$00
        sta     $56
        lda     $57
        sbc     #$01
        sta     $57
        clc
        lda     #$78
        adc     $56
        sta     L0C35
        lda     #$FC
        adc     $57
        sta     L0C36
L0ECB:  lda     L0C34
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        ora     $57
        beq     L0EDD
        jmp     L0EE5

L0EDD:  lda     #$00
        sta     L0C37
        jmp     L0F06

L0EE5:  lda     L0C39
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        ora     $57
        bne     L0EF7
        jmp     L0F00

L0EF7:  lda     L0C3E
        sta     L0C37
        jmp     L0F06

L0F00:  lda     L0C3E
        sta     L0C37
L0F06:  lda     #$7C
        sta     $70
        lda     #$16
        sta     $71
        lda     #$00
        sta     $6C
        jmp     L0F3A

L0F15:  ldy     #$00
        lda     #$00
        sta     ($70),y
        clc
        lda     #$26
        adc     $70
        sta     $70
        lda     #$00
        adc     $71
        sta     $71
        lda     $6C
        sta     $56
        lda     #$00
        sta     $57
        inc     $56
        bne     L0F36
        inc     $57
L0F36:  lda     $56
        sta     $6C
L0F3A:  lda     $6C
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        cmp     #$19
        lda     $57
        sbc     #$00
        bvc     L0F4E
        eor     #$80
L0F4E:  bpl     L0F53
        jmp     L0F15

L0F53:  lda     L0C35
        sta     $6E
        lda     L0C36
        sta     $6F
        lda     #$7C
        sta     $70
        lda     #$16
        sta     $71
        ldy     #$00
        lda     #$00
        sta     ($70),y
        clc
        lda     #$26
        adc     $70
        sta     $70
        lda     #$00
        adc     $71
        sta     $71
        lda     #$00
        sta     $6C
        jmp     L110F

L0F7F:  lda     $6C
        sta     $56
        lda     #$00
        sta     $57
        clc
        lda     $56
        adc     $6E
        sta     $56
        lda     $57
        adc     $6F
        sta     $57
        ldy     #$00
        lda     ($56),y
        sta     $56
        lda     $56
        sta     $56
        lda     #$00
        sta     $57
        lda     L0C34
        sta     $58
        lda     #$00
        sta     $59
        lda     $56
        and     $58
        sta     $56
        lda     $57
        and     $59
        sta     $57
        lda     $56
        sta     $72
        lda     $72
        sta     $56
        lda     #$00
L0FC1:  sta     $57
        lda     $56
        ora     $57
        bne     L0FCC
        jmp     L0FD1

L0FCC:  lda     L0C3D
        sta     $72
L0FD1:  lda     L0C39
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        sta     $7A
        lda     $57
        sta     $7B
        lda     $7A
        cmp     #$00
        lda     $7B
        sbc     #$00
        bvc     L0FEE
        eor     #$80
L0FEE:  bpl     L0FF3
        jmp     L10FD

L0FF3:  lda     #$03
        cmp     $7A
        lda     #$00
        sbc     $7B
        bvc     L0FFF
        eor     #$80
L0FFF:  .byte   $10
L1000:  .byte   $03
        jmp     L10FD

L1004:  lda     $7A
        asl     a
        sta     $56
        lda     $7B
        rol     a
        sta     $57
        clc
        lda     #$34
        adc     $56
        sta     $56
        lda     #$10
        adc     $57
        sta     $57
        ldy     #$00
        lda     ($56),y
        tax
        iny
        lda     ($56),y
        stx     $56
        sta     $57
        lda     $56
        sta     L1032
        lda     $57
        sta     L1033
        .byte   $4C
L1032:  brk
L1033:  brk
        .byte   $3C
        bpl     L1096
        bpl     L0FC1
        bpl     L0FFF
        bpl     L1055
        lda     #$30
        adc     $70
        sta     $56
        lda     #$01
        adc     $71
        sta     $57
        ldy     #$00
        lda     $72
        sta     ($56),y
        clc
        lda     #$26
        adc     $70
        .byte   $85
L1055:  bvs     L1000
        brk
        adc     $71
        sta     $71
        jmp     L10FD

        ldy     #$00
        lda     $72
        sta     ($70),y
        clc
        lda     #$60
        adc     $70
        sta     $56
        lda     #$02
        adc     $71
        sta     $57
        ldy     #$00
        lda     $72
        sta     ($56),y
        clc
        lda     #$26
        adc     $70
        sta     $70
        lda     #$00
        adc     $71
        sta     $71
        jmp     L10FD

        ldy     #$00
        lda     $72
        sta     ($70),y
        clc
        lda     #$30
        adc     $70
        sta     $56
        .byte   $A9
L1096:  ora     ($65,x)
        adc     ($85),y
        .byte   $57
        ldy     #$00
        lda     $72
        sta     ($56),y
        clc
        lda     #$60
        adc     $70
        sta     $56
        lda     #$02
        adc     $71
        sta     $57
        ldy     #$00
        lda     $72
        sta     ($56),y
        clc
        lda     #$26
        adc     $70
        sta     $70
        lda     #$00
        adc     $71
        sta     $71
        jmp     L10FD

        ldy     #$00
        lda     $72
        sta     ($70),y
        clc
        lda     #$26
        adc     $70
        sta     $70
        lda     #$00
        adc     $71
        sta     $71
        ldy     #$00
        lda     $72
        sta     ($70),y
        clc
        lda     #$26
        adc     $70
        sta     $70
        lda     #$00
        adc     $71
        sta     $71
        ldy     #$00
        lda     $72
        sta     ($70),y
        clc
        lda     #$26
        adc     $70
        sta     $70
        lda     #$00
        adc     $71
        sta     $71
L10FD:  lda     $6C
        sta     $56
        lda     #$00
        sta     $57
        inc     $56
        bne     L110B
        inc     $57
L110B:  lda     $56
        sta     $6C
L110F:  lda     $6C
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        cmp     #$08
        lda     $57
        sbc     #$00
        bvc     L1123
        eor     #$80
L1123:  bpl     L1128
        jmp     L0F7F

L1128:  lda     L0C3A
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        ora     $57
        bne     L113A
        jmp     L132C

L113A:  lda     #$7C
        sta     $6E
        lda     #$16
        sta     $6F
        lda     #$00
        sta     $6C
        jmp     L1215

L1149:  ldy     #$00
        lda     ($6E),y
        sta     $56
        lda     $56
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        cmp     #$0F
        lda     $57
        sbc     #$00
        bvc     L1163
        eor     #$80
L1163:  bmi     L1168
        jmp     L11F6

L1168:  lda     $6C
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        ora     $57
        bne     L1179
        jmp     L11AB

L1179:  clc
        lda     #$DA
        adc     $6E
        sta     $56
        lda     #$FF
        adc     $6F
        sta     $57
        ldy     #$00
        lda     ($56),y
        sta     $56
        lda     $56
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        cmp     #$0F
        lda     $57
        sbc     #$00
        bvc     L11A0
        eor     #$80
L11A0:  bpl     L11A5
        jmp     L11AB

L11A5:  ldy     #$00
        lda     #$08
        sta     ($6E),y
L11AB:  lda     $6C
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        cmp     #$18
        lda     $57
        sbc     #$00
        bvc     L11BF
        eor     #$80
L11BF:  bmi     L11C4
        jmp     L11F6

L11C4:  clc
        lda     #$26
        adc     $6E
        sta     $56
        lda     #$00
        adc     $6F
        sta     $57
        ldy     #$00
        lda     ($56),y
        sta     $56
        lda     $56
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        cmp     #$0F
        lda     $57
        sbc     #$00
        bvc     L11EB
        eor     #$80
L11EB:  bpl     L11F0
        jmp     L11F6

L11F0:  ldy     #$00
        lda     #$01
        sta     ($6E),y
L11F6:  clc
        lda     #$26
        adc     $6E
        sta     $6E
        lda     #$00
        adc     $6F
        sta     $6F
        lda     $6C
        sta     $56
        lda     #$00
        sta     $57
        inc     $56
        bne     L1211
        inc     $57
L1211:  lda     $56
        sta     $6C
L1215:  lda     $6C
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        cmp     #$19
        lda     $57
        sbc     #$00
        bvc     L1229
        eor     #$80
L1229:  bpl     L122E
        jmp     L1149

L122E:  lda     #$7B
        sta     $6E
        lda     #$16
L1234:  sta     $6F
        lda     #$00
        sta     $6C
        jmp     L1313

L123D:  ldy     #$00
        lda     ($6E),y
        sta     $56
        lda     $56
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        cmp     #$0F
        lda     $57
        sbc     #$00
        bvc     L1257
        eor     #$80
L1257:  bmi     L125C
        jmp     L12F4

L125C:  clc
        lda     #$FF
        adc     $6E
        sta     $56
        lda     #$FF
        adc     $6F
        sta     $57
        ldy     #$00
        lda     ($56),y
        sta     $56
        lda     $56
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        cmp     #$0F
        lda     $57
        sbc     #$00
        bvc     L1283
        eor     #$80
L1283:  bpl     L1288
        jmp     L12A8

L1288:  ldy     #$00
        lda     ($6E),y
        sta     $56
        lda     $56
        sta     $56
        lda     #$00
        sta     $57
        lda     #$04
        ora     $56
        sta     $56
        lda     #$00
        ora     $57
        sta     $57
        ldy     #$00
        lda     $56
        sta     ($6E),y
L12A8:  clc
        lda     #$01
        adc     $6E
        sta     $56
        lda     #$00
        adc     $6F
        sta     $57
        ldy     #$00
        lda     ($56),y
        sta     $56
        lda     $56
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        cmp     #$0F
        lda     $57
        sbc     #$00
        bvc     L12CF
        eor     #$80
L12CF:  bpl     L12D4
        jmp     L12F4

L12D4:  ldy     #$00
        lda     ($6E),y
        sta     $56
        lda     $56
        sta     $56
        lda     #$00
        sta     $57
        lda     #$02
        ora     $56
        sta     $56
        lda     #$00
        ora     $57
        sta     $57
        ldy     #$00
        lda     $56
        sta     ($6E),y
L12F4:  clc
        lda     #$26
        adc     $6E
        sta     $6E
        lda     #$00
        adc     $6F
        sta     $6F
        lda     $6C
        sta     $56
        lda     #$00
        sta     $57
        inc     $56
        bne     L130F
        inc     $57
L130F:  lda     $56
        sta     $6C
L1313:  lda     $6C
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        cmp     #$19
        lda     $57
        sbc     #$00
        bvc     L1327
        eor     #$80
L1327:  bpl     L132C
        jmp     L123D

L132C:  jmp     L0861

L132F:  bit     $72
        .byte   $72
        .byte   $72
        bit     $3E
        bit     $24
        bit     $24
        rol     L2424,x
        bit     $24
L133E:  .byte   $24
L133F:  bit     $24
        .byte   $27
        rol     $25
        .byte   $33
        rol     $6029
        jmp     L0638

L134B:  brk
L134C:  lda     #$D0
        sta     L0B2C
        lda     #$00
        sta     L0B2D
        lda     L0B2C
        sta     $56
        lda     L0B2D
        sta     $57
        lda     L0C40
        sta     $58
        lda     #$00
        sta     $59
        clc
        lda     #$AB
        adc     $58
        sta     $5A
        lda     #$1C
        adc     $59
        sta     $5B
        ldy     #$00
        lda     ($5A),y
        sta     $5A
        lda     $5A
        sta     $5A
        lda     #$00
        sta     $5B
        lda     $5A
        sta     $6A
        lda     $5B
        ldx     #$04
        beq     L1394
L138E:  lsr     a
        ror     $6A
        dex
        bne     L138E
L1394:  ldx     $6A
        stx     $5A
        sta     $5B
        lda     #$26
        sta     $66
        lda     #$00
        sta     $67
        lda     $5A
        sta     $68
        lda     $5B
        sta     $69
        jsr     L1C88
        stx     $5A
        sta     $5B
        clc
        lda     $56
        adc     $5A
        sta     L0B2C
        lda     $57
        adc     $5B
        sta     L0B2D
        lda     L0C3F
        sta     $56
        lda     #$00
        sta     $57
        clc
        lda     $58
        adc     $56
        sta     $56
        lda     $59
        adc     $57
        sta     $57
        lda     $56
        sta     L0C40
        ldy     #$00
        jsr     L2903
        ldy     #$00
        jsr     L0C41
        ldy     #$00
        jsr     L29B8
        ldy     #$00
        jsr     L2947
        rts

; $13F0
_main:  ldy     #$00
        jsr     _dunno2
        lda     #$A4
        sta     L133F
        jmp     L1402

L13FD:  ldy     #$00
        jsr     L134C
L1402:  lda     L0C38
        sta     $56
        lda     #$00
        sta     $57
        lda     $56
        ora     $57
        bne     L1414
        jmp     L13FD

L1414:  rts

; $13F0
XXX:    .byte   $00
L1416:  .byte   $00
L1417:  .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00
L1431:  .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00
L1657:  .byte   $00
L1658:  .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00
L1756:  .byte   $00
L1757:  .byte   $00
L1758:  .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00
L1856:  .byte   $00
L1857:  .byte   $00
L1858:  .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00
L1956:  .byte   $00
L1957:  .byte   $00
L1958:  .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
        .byte   $00,$00,$00,$00,$00,$00,$00,$00
L1C58:  .byte   $00
L1C59:  .byte   $00
L1C5A:  .byte   $00
L1C5B:  .byte   $00
L1C5C:  .byte   $00,$A9,$00,$85,$6A,$85,$6B,$A0
        .byte   $10,$06,$6A,$26,$6B,$26,$66,$26
        .byte   $67,$90,$11,$18,$A5,$68,$65,$6A
        .byte   $85,$6A,$A5,$69,$65,$6B,$85,$6B
        .byte   $90,$02,$E6,$66,$88,$D0,$E2,$A6
        .byte   $6A,$A5,$6B,$60
L1C88:  .byte   $A5,$67,$10,$D1,$38,$A9,$00,$E5
        .byte   $66,$85,$66,$A9,$00,$E5,$67,$85
        .byte   $67,$20,$5D,$1C,$38,$A9,$00,$E5
        .byte   $6A,$AA,$A9,$00,$E5,$6B,$60,$78
        .byte   $60,$58,$60
L1CAB:  .byte   $FE,$FD,$FD,$FD,$FD,$FD,$FC,$FC
        .byte   $FB,$FA,$FA,$F9,$F8,$F7,$F6,$F5
        .byte   $F4,$F3,$F1,$F0,$EF,$ED,$EB,$EA
        .byte   $E8,$E6,$E5,$E3,$E1,$DF,$DD,$DA
        .byte   $D8,$D6,$D4,$D1,$CF,$CD,$CA,$C8
        .byte   $C5,$C2,$C0,$BD,$BA,$B8,$B5,$B2
        .byte   $AF,$AC,$A9,$A6,$A3,$A0,$9D,$9A
        .byte   $97,$94,$91,$8E,$8B,$88,$85,$82
        .byte   $7F,$7C,$79,$76,$73,$70,$6D,$6A
        .byte   $67,$64,$61,$5E,$5B,$58,$55,$52
        .byte   $4F,$4C,$49,$46,$44,$41,$3E,$3C
        .byte   $39,$36,$34,$31,$2F,$2D,$2A,$28
        .byte   $26,$24,$21,$1F,$1D,$1B,$19,$18
        .byte   $16,$14,$13,$11,$0F,$0E,$0D,$0B
        .byte   $0A,$09,$08,$07,$06,$05,$04,$04
        .byte   $03,$02,$02,$01,$01,$01,$01,$01
        .byte   $00,$01,$01,$01,$01,$01,$02,$02
        .byte   $03,$04,$04,$05,$06,$07,$08,$09
        .byte   $0A,$0B,$0D,$0E,$0F,$11,$13,$14
        .byte   $16,$18,$19,$1B,$1D,$1F,$21,$24
        .byte   $26,$28,$2A,$2D,$2F,$31,$34,$36
        .byte   $39,$3C,$3E,$41,$44,$46,$49,$4C
        .byte   $4F,$52,$55,$58,$5B,$5E,$61,$64
        .byte   $67,$6A,$6D,$70,$73,$76,$79,$7C
        .byte   $7F,$82,$85,$88,$8B,$8E,$91,$94
        .byte   $97,$9A,$9D,$A0,$A3,$A6,$A9,$AC
        .byte   $AF,$B2,$B5,$B8,$BA,$BD,$C0,$C2
        .byte   $C5,$C8,$CA,$CD,$CF,$D1,$D4,$D6
        .byte   $D8,$DA,$DD,$DF,$E1,$E3,$E5,$E6
        .byte   $E8,$EA,$EB,$ED,$EF,$F0,$F1,$F3
        .byte   $F4,$F5,$F6,$F7,$F8,$F9,$FA,$FA
        .byte   $FB,$FC,$FC,$FD,$FD,$FD,$FD,$FD
L1DAB:  .byte   $00
L1DAC:  .byte   $03,$01,$02,$04,$01,$02,$04,$07
L1DB4:  .byte   $40,$64,$76,$7F
L1DB8:  .byte   $02
L1DB9:  .byte   $00,$02,$00
; $812
_dunno2:lda     #$00
        sta     $56
        lda     #$98
        sta     $57
        ldy     #$00
        lda     #$40
L1DC8:  sta     ($56),y
        iny
        bne     L1DCF
        inc     $57
L1DCF:  ldx     $57
        cpx     #$BB
        bne     L1DC8
        cpy     #$80
        bne     L1DC8
        lda     #$24
L1DDB:  sta     ($56),y
        iny
        bne     L1DE2
        inc     $57
L1DE2:  ldx     $57
        cpx     #$BF
        bne     L1DDB
        cpy     #$E0
        bne     L1DDB
        lda     #$00
        sta     $56
        lda     #$A0
        sta     $57
        lda     #$C8
        sta     $58
        ldy     #$01
        ldx     #$00
L1DFC:  lda     L1DAC,x
        sta     ($56),y
        iny
        lda     #$1A
        sta     ($56),y
        dey
        clc
        lda     $56
        adc     #$28
        sta     $56
        bcc     L1E12
        inc     $57
L1E12:  inx
        txa
        and     #$07
        tax
        dec     $58
        bne     L1DFC
        lda     #$80
        sta     $56
        lda     #$BB
        sta     $57
        ldy     #$00
        ldx     #$19
L1E27:  lda     #$1E
        sta     ($56),y
        clc
        lda     $56
        adc     #$28
        sta     $56
        bcc     L1E36
        inc     $57
L1E36:  dex
        bne     L1E27
        lda     #$00
        ldx     #$00
L1E3D:  sta     L2300,x
        clc
        adc     #$05
        inx
        bne     L1E3D
        lda     #$00
        ldx     #$00
L1E4A:  sta     L2400,x
        clc
        adc     #$14
        inx
        bne     L1E4A
        lda     #$00
        ldx     #$00
L1E57:  sta     L2500,x
        sta     L2600,x
        sta     L2700,x
        inx
        bne     L1E57
        lda     #$24
        sta     L1DAB
        lda     #$20
        sta     $56
        lda     #$B5
        sta     $57
        ldx     #$00
L1E72:  stx     $5C
        lda     L1DB4,x
        sta     $5D
        ldx     #$00
L1E7B:  stx     $5A
        lda     L1DB4,x
        sta     $5B
        ldx     #$00
L1E84:  stx     $58
        lda     #$40
        ldy     #$00
        sta     ($56),y
        ldy     #$07
        sta     ($56),y
        lda     L1DB4,x
        ldy     #$01
        sta     ($56),y
        ldy     #$04
        sta     ($56),y
        lda     $5B
        ldy     #$02
        sta     ($56),y
        ldy     #$05
        sta     ($56),y
        lda     $5D
        ldy     #$03
        sta     ($56),y
        ldy     #$06
        sta     ($56),y
        clc
        lda     $56
        adc     #$08
        sta     $56
        bcc     L1EBA
        inc     $57
L1EBA:  ldx     L1DAB
        lda     $58
        sta     L2500,x
        lda     $5A
        sta     L2600,x
        lda     $5C
        sta     L2700,x
        inc     L1DAB
        ldx     $58
        inx
        cpx     #$04
        bne     L1E84
        inc     L1DAB
        clc
        lda     $56
        adc     #$08
        sta     $56
        bcc     L1EE4
        inc     $57
L1EE4:  ldx     $5A
        inx
        cpx     #$04
        bne     L1E7B
        ldx     $5C
        inx
        cpx     #$04
        bne     L1E72
        rts

        clc
        lda     L1DB8
        adc     #$02
        sta     $56
        lda     L1DB9
        adc     #$00
        sta     $57
        lda     #$82
        sta     $58
        lda     #$BB
        sta     $59
        ldx     #$19
L1F0C:  ldy     #$25
L1F0E:  lda     ($56),y
        sta     ($58),y
        dey
        bne     L1F0E
        clc
        lda     $56
        adc     #$28
        sta     $56
        bcc     L1F20
        inc     $57
L1F20:  clc
        lda     $58
        adc     #$28
        sta     $58
        bcc     L1F2B
        inc     $59
L1F2B:  dex
        bne     L1F0C
        rts

        pha
        tya
        pha
        txa
        pha
L1F34:  lda     #$82
        sta     $56
        lda     #$BB
        sta     $57
        lda     #$00
        sta     $58
        ldx     #$19
L1F42:  ldy     #$25
L1F44:  lda     ($56),y
        cmp     #$24
        beq     L1F91
        sty     $59
        tay
        ldx     L2500,y
        stx     $58
        ldx     L2600,y
        stx     $5A
        ldx     L2700,y
        stx     $5C
        ldx     $58
        beq     L1F66
        dex
        stx     $58
        jmp     L1F7A

L1F66:  ldx     $5A
        beq     L1F70
        dex
        stx     $5A
        jmp     L1F7A

L1F70:  ldx     $5C
        ldx     L2700,y
        beq     L1F7A
        dex
        stx     $5C
L1F7A:  lda     #$24
        clc
        adc     $58
        ldy     $5A
        adc     L2300,y
        ldy     $5C
        adc     L2400,y
        ldy     $59
        sta     ($56),y
        lda     #$01
        sta     $58
L1F91:  dey
        bne     L1F44
        clc
        lda     $56
        adc     #$28
        sta     $56
        lda     $57
        adc     #$00
        sta     $57
        dex
        bne     L1F42
        lda     $58
        bne     L1F34
        pla
        tax
        pla
        tay
        pla
        rts

        pha
        tya
        pha
        txa
        pha
        clc
        lda     L1DB8
        adc     #$02
        sta     L1FCC
        lda     L1DB9
        adc     #$00
        sta     L1FCD
        ldy     #$19
L1FC6:  lda     L1C5C
        ldx     #$25
L1FCB:
L1FCC           := * + 1
L1FCD           := * + 2
        sta     L1234,x
        dex
        bne     L1FCB
        clc
        lda     L1FCC
        adc     #$28
        sta     L1FCC
        lda     L1FCD
        adc     #$00
        sta     L1FCD
        dey
        bne     L1FC6
        pla
        tax
        pla
        tay
        pla
        rts

L1FEB:
L1FEC           := * + 1
L1FED           := * + 2
        lda     L1234
        sec
        sbc     #$20
        sta     $5C
        lda     #$00
        sta     $5D
        clc
        lda     $5C
        adc     $5C
        sta     $5C
        lda     $5D
        adc     $5D
        sta     $5D
        clc
        lda     $5C
        adc     $5C
        sta     $5C
        lda     $5D
        adc     $5D
        sta     $5D
        clc
        lda     $5C
        adc     $5C
        sta     $5C
        lda     $5D
        adc     $5D
        sta     $5D
        clc
L2020           := * + 1
        lda     #$78
        adc     $5C
        sta     $56
        lda     #$FC
        adc     $5D
        sta     $57
L202C           := * + 1
        ldy     #$00
L202D:
L202E           := * + 1
        lda     ($56),y
        sty     $5A
        ror     a
        bcc     L203D
        tax
        ldy     #$05
        lda     L1C5B
        sta     ($58),y
        txa
L203D:  ror     a
        bcc     L2049
        tax
        ldy     #$04
        lda     L1C5B
        sta     ($58),y
        txa
L2049:  ror     a
        bcc     L2055
        tax
        ldy     #$03
        lda     L1C5B
        sta     ($58),y
        txa
L2055:  ror     a
        bcc     L2061
        tax
        ldy     #$02
        lda     L1C5B
        sta     ($58),y
        txa
L2061:  ror     a
        bcc     L206D
        tax
L2065:  ldy     #$01
        lda     L1C5B
        sta     ($58),y
        txa
L206D:  ror     a
        bcc     L2079
        tax
        ldy     #$00
        lda     L1C5B
        sta     ($58),y
        txa
L2079:  clc
        lda     $58
        adc     #$28
        sta     $58
        bcc     L2084
        inc     $59
L2084:  ldy     $5A
        iny
        cpy     #$08
        bne     L202D
        clc
        lda     $58
        adc     #$C6
        sta     $58
        lda     $59
        adc     #$FE
        sta     $59
        inc     L1FEC
        bne     L20A0
        inc     L1FED
L20A0:  rts

L20A1:  jsr     L1FEB
        jsr     L1FEB
        jsr     L1FEB
        jsr     L1FEB
        jsr     L1FEB
        jsr     L1FEB
        clc
        lda     $58
        adc     #$44
        sta     $58
        lda     $59
        adc     #$01
        sta     $59
        rts

        clc
        lda     L1DB8
        adc     #$03
        sta     $58
        lda     L1DB9
        adc     #$00
        sta     $59
        lda     L1C59
        sta     L1FEC
        lda     L1C5A
        sta     L1FED
        jsr     L20A1
        jsr     L20A1
        jsr     L20A1
        rts

L20E6:  brk
L20E7:  brk
        lda     L20E7
        sta     L20E6
        inc     L20E7
        lda     #$1A
        sta     $58
        lda     #$B0
        sta     $59
        ldx     #$19
L20FB:  lda     L20E6
        inc     L20E6
        tay
        clc
        lda     L1C58
        adc     L1CAB,y
        clc
        adc     #$B8
        sta     $56
        lda     #$00
        adc     #$08
        sta     $57
        ldy     #$25
L2116:  lda     ($56),y
        sta     ($58),y
        dey
        bne     L2116
        clc
        lda     $58
        adc     #$28
        sta     $58
        bcc     L2128
        inc     $59
L2128:  txa
        and     #$01
        beq     L2132
        inc     $56
        jmp     L2134

L2132:  dec     $56
L2134:  dex
        bne     L20FB
        rts

L2138:  brk
L2139:  brk
L213A:  brk
L213B:  brk
L213C:  brk
L213D:  brk
L213E:  brk
L213F:  brk
L2140:  brk
L2141:  brk
L2142:  brk
L2143:  brk
L2144:  brk
L2145:  brk
L2146:  brk
L2147:  brk
L2148:  brk
        pha
        tya
        pha
        txa
        pha
        ldx     L2145
        stx     L2142
        inx
        stx     L2145
        ldx     L2146
        stx     L2143
        inx
        inx
        stx     L2146
        ldx     L2147
        stx     L2144
        inx
        inx
        inx
        stx     L2147
        ldy     #$00
L2171:  sty     L2140
        clc
        ldx     L2142
        inc     L2142
        lda     L1CAB,x
        adc     #$7F
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        clc
        adc     #$24
        sta     L2148
        clc
        ldx     L2143
        inc     L2143
        lda     L1CAB,x
        adc     #$7F
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        tax
        clc
        lda     L2148
        adc     L2300,x
        sta     L2148
        clc
        ldx     L2144
        inc     L2144
        lda     L1CAB,x
        adc     #$7F
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        tax
        clc
        lda     L2148
        adc     L2400,x
        sta     L2800,y
        ldy     L2140
        iny
        bne     L2171
        lda     #$82
        sta     $56
        lda     #$BB
        sta     $57
        ldx     L2138
        inx
        stx     L2138
        ldx     L2139
        stx     L213D
        inx
        inx
        stx     L2139
        ldx     L213A
        inx
        inx
        inx
        stx     L213A
        ldx     L213B
        stx     L213F
        inx
        inx
        inx
        inx
        inx
        stx     L213B
        ldx     #$19
L21FF:  stx     L2140
        ldx     L2138
        stx     L213C
        ldx     L213A
        stx     L213E
        clc
        ldx     L213D
        lda     L1CAB,x
        inx
        stx     L213D
        ldx     L213F
        adc     L1CAB,x
        inx
        inx
        stx     L213F
        sta     L2141
        ldy     #$25
L2229:  clc
        lda     L2141
        ldx     L213C
        adc     L1CAB,x
        inx
        stx     L213C
        ldx     L213E
        adc     L1CAB,x
        inx
        inx
        inx
        stx     L213E
        tax
        lda     L2800,x
        sta     ($56),y
        dey
        bne     L2229
        clc
        lda     $56
        adc     #$28
        sta     $56
        bcc     L2257
        inc     $57
L2257:  ldx     L2140
        dex
        bne     L21FF
        pla
        tax
        pla
        tay
        pla
        rts

        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L2300:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L2400:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L2424:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L2500:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L2600:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L2700:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L2800:  brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
        brk
L2900:  brk
L2901:  brk
L2902:  brk
L2903:  lda     L1757
        sta     L2900
        lda     L1857
        sta     L2901
        lda     L1957
        sta     L2902
        ldx     #$00
L2917:  lda     L1658,x
        sta     L1657,x
        lda     L1758,x
        sta     L1757,x
        lda     L1858,x
        sta     L1857,x
        lda     L1958,x
        sta     L1957,x
        inx
        bne     L2917
        lda     L2900
        sta     L1756
        lda     L2901
        sta     L1856
        lda     L2902
        sta     L1956
        rts

L2945:  brk
L2946:  brk
L2947:  ldx     L134B
        lda     L1CAB,x
        sta     L2946
        inx
        stx     L134B
        clc
        lda     #$57
        adc     L0B2C
        sta     L2989
        lda     #$14
        adc     L0B2D
        sta     L298A
        lda     #$82
        sta     L2990
        lda     #$BB
        sta     L2991
        ldy     #$19
L2971:  sty     L2945
        clc
        tya
        adc     L2946
        tax
        lda     L08B9,x
        sta     L133E
        ldx     #$25
L2982:  lda     L1431,x
        sta     L132F
L2989           := * + 1
L298A           := * + 2
        lda     L1234,x
        tay
        lda     L132F,y
L2990           := * + 1
L2991           := * + 2
        sta     L1234,x
        dex
        bne     L2982
        clc
        lda     L2990
        adc     #$28
        sta     L2990
        bcc     L29A3
        inc     L2991
L29A3:  clc
        lda     L2989
        adc     #$26
        sta     L2989
        bcc     L29B1
        inc     L298A
L29B1:  ldy     L2945
        dey
        bne     L2971
        rts

L29B8:  lda     L0C3B
        bne     L29C8
        ldy     #$25
        lda     #$24
L29C1:  sta     L1431,y
        dey
        bne     L29C1
        rts

L29C8:  ldx     L1417
        stx     $56
        inx
        stx     L1417
        ldx     L1416
        stx     $58
        inx
        inx
        stx     L1416
        ldx     XXX
        stx     $5A
        inx
        inx
        inx
        stx     XXX
        ldy     #$25
        ldx     $56
        lda     L1CAB,x
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        lsr     a
        inx
        stx     $56
        sta     $57
        ldx     $58
        lda     L1CAB,x
        lsr     a
        lsr     a
        lsr     a
