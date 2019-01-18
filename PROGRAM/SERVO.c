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