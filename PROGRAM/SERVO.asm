
_main:

;SERVO.c,1 :: 		void main() {
;SERVO.c,2 :: 		TRISB=0;
	CLRF       TRISB+0
;SERVO.c,3 :: 		for(;;)
L_main0:
;SERVO.c,5 :: 		PORTB.F0=1;
	BSF        PORTB+0, 0
;SERVO.c,6 :: 		delay_us(700);
	MOVLW      2
	MOVWF      R12+0
	MOVLW      208
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
;SERVO.c,7 :: 		PORTB.F0=0;
	BCF        PORTB+0, 0
;SERVO.c,8 :: 		delay_us(18300);
	MOVLW      48
	MOVWF      R12+0
	MOVLW      135
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
;SERVO.c,9 :: 		}
	GOTO       L_main0
;SERVO.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
