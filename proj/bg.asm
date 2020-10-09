.model small
.stack 100h
.data




var1 db 219, 219, '$'
var2 db 219, 219, 219, 219, '$'
var3 db 219, 219, 219, 219, 219, 219, '$'
var5 db 219, 219, 219,  219, 219,219, 219, 219,  219, 219, '$'
var6 db 219, 219, 219,  219, 219, 219, 219, 219, 219,  219, 219, 219, '$'
var7 db 219, 219, 219, 219, 219, 219, 219,219, 219, 219, 219, 219, 219, 219,'$'
var9 db 219, 219, 219, 219, 219, 219, 219,  219, 219,219, 219, 219, 219, 219, 219, 219,  219, 219,'$'
var15 db 219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,'$'
var20 db 219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, '$'
var22 db 219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, '$'
var74 db 219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,  219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,  219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,  '$'
var78 db 219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,  219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,  219,  219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219, 219,  '$'

.code

start:
        mov ax,3
        int 10h

        mov ax, @data
        mov ds, ax

		mov ah,2
        mov dl,1                                                         
        mov dh,1
        int 10h
        mov ah,9
        mov dx,offset var78
        mov bl,077h
        mov cx,78
        int 10h
        int 21h 
		
		
		mov ah,2
        mov dl,1                                                         
        mov dh,2
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,2
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,2
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,2
        int 10h
        mov ah,9
        mov dx,offset var15
        mov bl,033h
        mov cx,30
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,77                                                         
        mov dh,2
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		
		mov ah,2
        mov dl,1                                                         
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset var3
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 		

		mov ah,2
        mov dl,53                                                      
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset var7
        mov bl,000h
        mov cx,14
        int 10h
        int 21h 		

		mov ah,2
        mov dl,67                                                      
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset var5
        mov bl,033h
        mov cx,10
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,77                                                         
        mov dh,3
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,1                                                         
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset var3
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 		

		mov ah,2
        mov dl,53                                                      
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset var7
        mov bl,000h
        mov cx,14
        int 10h
        int 21h 		

		mov ah,2
        mov dl,67                                                      
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset var5
        mov bl,033h
        mov cx,10
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,77                                                         
        mov dh,4
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,1                                                         
        mov dh,5
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,5
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,5
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,5
        int 10h
        mov ah,9
        mov dx,offset var15
        mov bl,033h
        mov cx,30
        int 10h
        int 21h 		

		mov ah,2
        mov dl,77                                                      
        mov dh,5
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 	

		mov ah,2
        mov dl,1                                                         
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset var3
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 		

		mov ah,2
        mov dl,53                                                      
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset var7
        mov bl,000h
        mov cx,14
        int 10h
        int 21h 		

		mov ah,2
        mov dl,67                                                      
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset var5
        mov bl,033h
        mov cx,10
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,77                                                         
        mov dh,6
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,1                                                         
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset var3
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 		

		mov ah,2
        mov dl,53                                                      
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset var7
        mov bl,000h
        mov cx,14
        int 10h
        int 21h 		

		mov ah,2
        mov dl,67                                                      
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset var5
        mov bl,033h
        mov cx,10
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,77                                                         
        mov dh,7
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,1                                                         
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,8
        int 10h
        mov ah,9
        mov dx,offset var15
        mov bl,033h
        mov cx,30
        int 10h
        int 21h 		

		mov ah,2
        mov dl,77                                                      
        mov dh, 8
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 	
		
		mov ah,2
        mov dl,1                                                         
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset var3
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 		

		mov ah,2
        mov dl,53                                                      
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset var7
        mov bl,000h
        mov cx,14
        int 10h
        int 21h 		

		mov ah,2
        mov dl,67                                                      
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset var5
        mov bl,033h
        mov cx,10
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,77                                                         
        mov dh,9
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,1                                                         
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset var3
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 		

		mov ah,2
        mov dl,53                                                      
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset var7
        mov bl,000h
        mov cx,14
        int 10h
        int 21h 		

		mov ah,2
        mov dl,67                                                      
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset var5
        mov bl,033h
        mov cx,10
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,77                                                         
        mov dh,10
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,1                                                         
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset var15
        mov bl,033h
        mov cx,30
        int 10h
        int 21h 		

		mov ah,2
        mov dl,77                                                      
        mov dh,11
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 	

		mov ah,2
        mov dl,1                                                         
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset var3
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 		

		mov ah,2
        mov dl,53                                                      
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset var7
        mov bl,000h
        mov cx,14
        int 10h
        int 21h 		

		mov ah,2
        mov dl,67                                                      
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset var5
        mov bl,033h
        mov cx,10
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,77                                                         
        mov dh,12
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,1                                                         
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset var3
        mov bl,033h
        mov cx,6
        int 10h
        int 21h 		

		mov ah,2
        mov dl,53                                                      
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset var7
        mov bl,000h
        mov cx,14
        int 10h
        int 21h 		

		mov ah,2
        mov dl,67                                                      
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset var5
        mov bl,033h
        mov cx,10
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,77                                                         
        mov dh,13
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 
		
		mov ah,2
        mov dl,1                                                         
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 

		mov ah,2
        mov dl,3                                                         
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset var2
        mov bl,033h
        mov cx,4
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,7                                                        
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset var20
        mov bl,044h
        mov cx,40
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,47                                                      
        mov dh,14
        int 10h
        mov ah,9
        mov dx,offset var15
        mov bl,033h
        mov cx,30
        int 10h
        int 21h 		

		mov ah,2
        mov dl,77                                                      
        mov dh, 14
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 				
		
		mov ah,2
        mov dl,1                                                      
        mov dh, 15
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl,3                                                     
        mov dh, 15
        int 10h
        mov ah,9
        mov dx,offset var74
        mov bl,033h
        mov cx,74
        int 10h
        int 21h 		

		mov ah,2
        mov dl,77                                                      
        mov dh, 15
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 
		
		mov ah,2
        mov dl, 1                                                     
        mov dh, 16
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 
		
		mov ah,2
        mov dl, 3                                                    
        mov dh, 16
        int 10h
        mov ah,9
        mov dx,offset var6
        mov bl,033h
        mov cx,12
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl, 15                                                    
        mov dh, 16
        int 10h
        mov ah,9
        mov dx,offset var22
        mov bl,000h
        mov cx,44
        int 10h
        int 21h 	
		
		mov ah,2
        mov dl, 59                                                   
        mov dh, 16
        int 10h
        mov ah,9
        mov dx,offset var9
        mov bl,033h
        mov cx,18
        int 10h
        int 21h		

		
		mov ah,2
        mov dl, 77                                                  
        mov dh, 16
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h		

		mov ah,2
        mov dl, 1                                                     
        mov dh, 17
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 
		
		mov ah,2
        mov dl, 3                                                    
        mov dh, 17
        int 10h
        mov ah,9
        mov dx,offset var6
        mov bl,033h
        mov cx,12
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl, 15                                                    
        mov dh, 17
        int 10h
        mov ah,9
        mov dx,offset var22
        mov bl,000h
        mov cx,44
        int 10h
        int 21h 	
		
		mov ah,2
        mov dl, 59                                                   
        mov dh, 17
        int 10h
        mov ah,9
        mov dx,offset var9
        mov bl,033h
        mov cx,18
        int 10h
        int 21h		

		
		mov ah,2
        mov dl, 77                                                  
        mov dh, 17
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h		
	
		mov ah,2
        mov dl, 1                                                     
        mov dh, 18
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h 
		
		mov ah,2
        mov dl, 3                                                    
        mov dh, 18
        int 10h
        mov ah,9
        mov dx,offset var6
        mov bl,033h
        mov cx,12
        int 10h
        int 21h 		
		
		mov ah,2
        mov dl, 15                                                    
        mov dh, 18
        int 10h
        mov ah,9
        mov dx,offset var22
        mov bl,000h
        mov cx,44
        int 10h
        int 21h 	
		
		mov ah,2
        mov dl, 59                                                   
        mov dh, 18
        int 10h
        mov ah,9
        mov dx,offset var9
        mov bl,033h
        mov cx,18
        int 10h
        int 21h		

		
		mov ah,2
        mov dl, 77                                                  
        mov dh, 18
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h	

		mov ah,2
        mov dl, 1                                                
        mov dh, 19
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h	

		mov ah,2
        mov dl, 3                                                
        mov dh, 19
        int 10h
        mov ah,9
        mov dx,offset var74
        mov bl,033h
        mov cx,74
        int 10h
        int 21h			
	
		mov ah,2
        mov dl, 77                                               
        mov dh, 19
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h		
		
		mov ah,2
        mov dl, 1                                                
        mov dh, 20
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h	

		mov ah,2
        mov dl, 3                                                
        mov dh, 20
        int 10h
        mov ah,9
        mov dx,offset var74
        mov bl,033h
        mov cx,74
        int 10h
        int 21h			
	
		mov ah,2
        mov dl, 77                                               
        mov dh, 20
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h	

		mov ah,2
        mov dl, 1                                                
        mov dh, 21
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h	

		mov ah,2
        mov dl, 3                                                
        mov dh, 21
        int 10h
        mov ah,9
        mov dx,offset var74
        mov bl,033h
        mov cx,74
        int 10h
        int 21h			
	
		mov ah,2
        mov dl, 77                                               
        mov dh, 21
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h		
		
		mov ah,2
        mov dl, 1                                                
        mov dh, 22
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h	

		mov ah,2
        mov dl, 3                                                
        mov dh, 22
        int 10h
        mov ah,9
        mov dx,offset var74
        mov bl,033h
        mov cx,74
        int 10h
        int 21h			
	
		mov ah,2
        mov dl, 77                                               
        mov dh, 22
        int 10h
        mov ah,9
        mov dx,offset var1
        mov bl,077h
        mov cx,2
        int 10h
        int 21h	
		
		mov ah,2
        mov dl, 1                                              
        mov dh, 23
        int 10h
        mov ah,9
        mov dx,offset var78
        mov bl,077h
        mov cx,78
        int 10h
        int 21h			
		
		
		
		mov ah,4ch
        int 21h

        end start

