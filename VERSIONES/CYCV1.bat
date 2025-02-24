@echo off

chcp 65001 >nul

:INTRO1
title WELCOME CYC
mode 60,25
color 5
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
echo.      ▄████████ ▄██   ▄    ▄████████ 
echo.     ███    ███ ███   ██▄ ███    ███ 
timeout /t 1 /nobreak>nul 
echo.     ███    █▀  ███▄▄▄███ ███    █▀  
echo.     ███        ▀▀▀▀▀▀███ ███        
echo.     ███        ▄██   ███ ███       
timeout /t 1 /nobreak>nul  
echo.     ███    █▄  ███   ███ ███    █▄  
echo.     ███    ███ ███   ███ ███    ███ 
echo.     ████████▀   ▀█████▀  ████████▀  
echo.                                 
echo.  
timeout /t 1 /nobreak>nul 
goto menu

:menu
title CYC CLEAR YOUR CACHE !
mode 60,25
color e
cls
echo.
echo =====================================================
echo.                        
echo.       ███████████      
echo.      █▒▒▒▒▒▒▒▒▒▒▒█      
echo.      █▒▒▒▒▀▀▀▌▌▒▒█     
echo.      █▒░▒▒▒░▀█▌▒▒█     CLEAR YOUR CACHE!
echo.      █▒▐█░▒▒▒▒░▒▒█     
echo.      █▒▀█▀▒▒▒▒▒▒▒█     
echo.      █▒▒▒▀▀▀▀▒▒▒▒█      
echo.      █▒▒▒▒▒▒▒▒▒▒▒█     
echo.       ███████████      
echo. 
echo =====================================================
echo.       	LIMPIEZA CACHE 
echo =====================================================
echo 0. DOCUMENTACION
echo 1. Clean IP
echo 2. Vaciar Paperelera de reciclaje
echo 3. Borrar TEMP
echo 4. Borra  TEMP OCULTO
echo 5. Borrar Prefetch
echo 6. Abrir eventvwr y borrar manual registros
echo 7. Liberador de espacio en disco
echo =====================================================
set /p choice="Selecciona una opción: "
if %choice%==0 goto DOCUMENTA
if %choice%==1 goto CLP
if %choice%==2 goto PAPEL
if %choice%==3 goto temp1
if %choice%==4 goto temp2
if %choice%==5 goto PRE
if %choice%==6 goto EVE
if %choice%==7 goto LD

:DOCUMENTA
title DOCUMENTACION
cls
color a
mode 200,200
echo.
echo. 
echo.                                7N:                          
echo.                       ., iYkXZNMMMur.                       
echo.                       XB@B@B@B@MMM@B@B@;                    
echo.                     i@BBOOZO88G808GOOBB@B,                  
echo.                    1@BO880OGZE8EGEGZGZOO@Bi                 
echo.                   u@BOG80G8ZZGZGEGE8ZGE8O@B.                
echo.                  :@BOGGEEOGE8ZGE8E8G8ZGE8O@@                
echo.                  @BMEO0GEMEGZGE8E8EOEGE8EOM@r               
echo.                 r@@G8ZZZ8GGEGEGEGEZ8GEEZGGMBM               
echo.                 MXXOG8EGZ8ZGZ8ZGZGZOZG0OZGO@B               
echo.                :@uX88Z8E8ZZZGEGEGEOZGEGZOEMM@               
echo.               7@@kXOZOZEEOEOZ8E8ZG880GEGGE8BB.              
echo.             iM@B@MBE8ZGEZ8GZ8EGZGGOGZZ8EO0MM@               Este Batch fue creado con fines de desarrollo 
echo.             .. iiXBOZOGOGMMBOOGMGMO80OE8Z8BBB:              para el fin de eliminar el cache de una pc de
echo.                  7@B@B@B@BBB@B@@@B@BBMMOOBqB@B              sistema operativo windows
echo.                   uUBM2Sui. :7ruL8MEB@B@@@:E@@r             
echo.                   @r                . OXj.   LJ             creditos: wilter_foll
echo.                  :B@i      . .        ..;                    
echo.                   @B@F              rB@Bv                   
echo.                   1OO@BZ,        .J@BBBq                    MYSITE: https://foolwhome.blogspot.com/
echo.               kuJGEPOM@0@,      qB@BOM@u .v:                
echo.             7@B@BBOZZBMOB@B@B@B@B@BB8OEBB@B@M:              
echo.            L@MOZMGEqEGMMG.75q5L.rB@M8ZZZOOO8@BMr            
echo.           B@OG0EN8Z8EOO            M8GGG0ZEZEOB@8                     
echo.          M@EOG8Z8Z8Z88OMSL@BEL@Bv;@GGZ8ZOGOG8GMB            
echo.         7@OGNE0GEZZZNZ0@:;BOB@OBvJMGNENEEZGGEEEBB           
echo.         @M80EE80ZNZ0Z08M:5MZGE8O5vBEZ0ZEZ0Z0O0ZG@q          
echo.        E@O0ZN8EZ0ZEZEZZMY8ZZ08ZM5:BOZEEOZG0EGE0GO@          
echo.       ,BOZ80ZOE0Z0Z0ZEGEYO80ZZGGE:@qqk008OZZ8N0EOBJ         
echo.       O@ZEZ80MNZ0ZEZ0GZ0rMEZEG08OLS0Z81UvqZO80G8EMB         
echo.      .@OZ0EGO8E0ZEZ0ZZ8P7MG0GEZZMr7LLrk7JUOGMEO0ZG@M        
echo.      q@OEGEGGM0GE8EGZ8ZEuOZGE8E8OZ2LvXBJ7E8OOZ0GZGO@:       
echo.      B8XPkPkEPXkPSPkPSPXEXqSPkPXqqFYLX5YSPqXEkPSXkNBB
echo.
echo.
pause
goto menu 

:LD
cls
%SystemRoot%\System32\Cmd.exe /c Cleanmgr /sageset:65535 &Cleanmgr /sagerun:6553
goto menu

:EVE
cls
eventvwr
goto menu

:PRE
cls
rd /s /q %SystemRoot%\Prefetch
goto menu
:temp2
cls
rd /s /q %TEMP%
goto menu

:temp1
cls
rd /s /q %windir%\Temp
goto menu

:temps
cls
start %TEMP%
start %windir%\Temp
goto menu


:PAPEL
cls
rd /s /q %systemdrive%\$Recycle.Bin
goto menu

:CLP
cls
mode 100,100
ipconfig /all
ipconfig /flushdns
pause
goto menu
