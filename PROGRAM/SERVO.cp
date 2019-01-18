#line 1 "C:/Users/only try/Desktop/Project 10 Microcontroller (SERVO MOTOR CONTROL)/PROGRAM/SERVO.c"
void main() {
TRISB=0;
for(;;)
{
 PORTB.F0=1;
 delay_us(700);
 PORTB.F0=0;
 delay_us(18300);
}
}
