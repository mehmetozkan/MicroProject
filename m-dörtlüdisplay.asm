  .MODEL SMALL
       .STACK 64
        .data

sayac dw 000ffh

forxcount  db 06
forycount  db 09
forzcount  db 09
forkcount  db 06

forxvalue  db 10h
foryvalue  db 20h
forzvalue  db 80h
forkvalue  db 40h

        .CODE   


MAIN:   mov ax,@DATA
        mov ds,ax
;------------------------------


fork:
	mov forzvalue,80h
      	mov al,forzvalue
      	mov  forzcount,09 

forz:

	mov forxvalue,10h
      	mov al,forxvalue
      	mov  forxcount,06 

forx:   
       
      mov foryvalue,20h
      mov al,foryvalue
      mov  forycount,09 

	 
      
      fory:
        
 
      call cagir 
      inc al
      call cagir
        
      
     push ax
     mov al,forxvalue
     call cagir
     call cagir
     pop ax

	push ax
     mov al,forzvalue
     call cagir
     call cagir
     pop ax

	push ax
     mov al,forkvalue
     call cagir
     call cagir
     pop ax

      dec forycount  
      jnz fory

     
inc forxvalue

dec  forxcount
jnz forx

inc forzvalue
dec  forzcount
jnz forz

inc forkvalue
dec  forkcount
jnz fork


MOV AH,4CH
INT 21H
;---------------------

cagir:
push sayac
mov dx,03bch

again:  out dx,al
        dec sayac
        jnz again
        pop sayac
ret
;--------------------
END MAIN