*=$50A

	JSR L05FC     
	LDX #$00      
	JSR L0594     
	JSR $1000 ; part 1 ?    
	LDX #$01      
	JSR L0594     
	JSR $0800     
	LDY #$FF
loop2      
	JSR L05E7      
	INY           
	BNE loop2     
	LDX #$05      
	JSR L0594     
	JSR $0800     
	JSR $EC33     
	LDX #$03      
	JSR L0594     
	JSR $0800     
	LDX #$02      
	JSR L0594    
	JSR $0800     
	JSR $F8D0   ; ???   
	JSR $EC33  ; hires    
	LDX #$04      
	JSR L0594     
	JSR $0800     
	LDX #$06      
	JSR L0594     
	LDA #$00      
	STA $4F
L0557       
	LDX #$0A      
	JSR L0594    
	JSR $0800     
	INC $4F       
	INC L0557+1     
	JSR L05E7      
	JSR L05E7     
	LDX $4F       
	CPX #$33      
	BNE L0557      
	LDX #$07      
	JSR L0594    
	JSR $0800     
	LDX #$08      
	JSR L0594     
	JSR $0800     
	LDX #$09      
	JSR L0594    
	JSR $0800     
	JSR $EC33 ; switch on HIres     
	LDX #$3D      
	JSR L0594     
	JSR $765A     ; Dunno maybe Jon final part
	RTS

L0594           `  
	STX $0206     
	JSR L05A9
loop3       
	JSR L05D1       
	INC $0200     
	DEC $0202     
	BNE loop3     
	JSR L05D1       
	RTS 

L05A9          
	LDX $0206     
	LDA L0630,X   
	STA $0200     
	LDA L062F     
	STA $0203     
	LDA L066F,X   
	STA $0201     
	LDA L06ED     
	STA $0204     
	LDA L06EE,X   
	STA $0205     
	LDA L06AE,X   
	STA $0202     
	RTS
L05D1           
	JSR L0607    
	INC $0205     
	LDA $0200     
	CMP #$11      
	BNE skip     
	INC $0201     
	LDA #$00      
	STA $0200     
skip
	RTS
L05E7
_wait
.(           
	PHA           
	TXA           
	PHA           
	TYA           
	PHA           
	LDY #$00      
loop 
	LDX #$00
loop5      
	INX           
	BNE loop5     
	INY           
	BNE loop     
	PLA           
	TAY           
	PLA           
	TAX           
	PLA           
	RTS 
.)

L05FC 
	LDA #$00      
	STA $0206     
	LDA #$86      
	STA $04FB     
	RTS
	
L0607
; launch read          
	JSR $04F2 ; switch on ram overlay ?    
	LDA $0204     
	STA $C003     
	LDA $0205     
	STA $C004     
	LDA $0203     
	STA $C000     
	LDA $0201     
	STA $C001     
	LDA $0200     
	STA $C002     
	JSR $FFB8  ; read sector ?   
	JSR $04F2  ; return to rom ?   
	RTS           

L062f
.byt $00 
L0630	   
.byt 	$01,$05,$05,$06,$07,$11,$0D,$07,$0F,$11
.byt 	$07,$0F,$06,$0E,$01,$09,$11,$08,$10,$07,$0F,$06,$0E,$05,$0D,$04
.byt 	$0C,$03,$0B,$02,$0A,$01,$09,$11,$08,$10,$07,$0F,$06,$0E,$05,$01
.byt 	$09,$11,$08,$10,$07,$0F,$06,$0E,$05,$0D,$04,$0C,$03,$0B,$02,$0A
.byt 	$01,$09,$11,$08,$02

L066F
.byt 	$80,$84,$86,$88,$90,$90,$91,$92,$95,$9C,$A5
.byt 	$A5,$A6,$A6,$07,$07,$07,$08,$08,$09,$09,$0A,$0A,$0B,$0B,$0C,$0C
.byt 	$0D,$0D,$0E,$0E,$0F,$0F,$0F,$10,$10,$11,$11,$12,$12,$13,$15,$15
.byt 	$15,$16,$16,$17,$17,$18,$18,$19,$19,$1A,$1A,$1B,$1B,$1C,$1C,$1D
.byt 	$1D,$1D,$1E,$24

L6AE
.byt 	$47,$21,$22,$88,$09,$0C,$0A,$3A,$78,$8E,$07,$07
.byt 	$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
.byt 	$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
.byt 	$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
.byt 	$07,$5F,$0E


L06ED
.byt 	$00 
L06EE
.byt 	$10,$08,$08,$08,$08,$08,$08,$08,$08,$08,$0A,$0A
.byt 	$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A
.byt 	$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A
.byt 	$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A
.byt 	$0A,$60,$DC
