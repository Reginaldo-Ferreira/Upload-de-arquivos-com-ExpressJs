@echo off

SET /A temp = 1

goto loading

set mesagens=starting server of the upload
set data=%date%
:menu

cls
color 80

echo %data%

echo Computador: %computername%        Usuario: %username%
echo  			          MENU TAREFAS
echo  			+==================================+
echo 			* 1. run with nodemon              * 
echo 			* 2. run with nodejs               *
echo 			* 3. run in the this windows       *
echo 			* 4. go back to the menu           *
echo 			* 5. exit                          * 
echo  			+==================================+
echo  			%mesagens%
echo  			+==================================+

set /p opcao= Choose a option: 
echo   			+-------------------------------+
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% GEQ 6 goto opcao6

:opcao1
cls
start nodemon index.js
set "mesagens=*   execulting app with nodemon..  *"
goto menu

:opcao2
cls
start node index.js
set "mesagens=*   execulting app with nodejs..   *"
goto menu

:opcao3
cls
set "mesagens=*   ........nothing............    *"
goto menu

:opcao4
cls
set "mesagens=*   ........go back............    *"
goto menu



:opcao5
cls
echo   			+==================================+
echo 			*   ........shutdown............   *
echo   			+==================================+
pause
exit

:opcao6
echo    			+==============================================
echo 				* Opcao Invalida! Escolha outra opcao do menu *
echo    			+==============================================
set "mesagens=*Opcao Invalida! Escolha outra opcao do menu*"
goto menu



:loading
cls
echo 
echo 
echo 
echo 
echo 
echo                                   +==================================+
echo                                   *         ca........               *
echo                                   +==================================+
TIMEOUT /T %temp% 

cls
echo 
echo 
echo 
echo 
echo 
echo                                   +==================================+
echo                                   *         carr......               *
echo                                   +==================================+
TIMEOUT /T %temp% 

cls
echo 
echo 
echo 
echo 
echo 
echo                                   +==================================+
echo                                   *         carrega...               *
echo                                   +==================================+
TIMEOUT /T %temp% 

cls
echo 
echo 
echo 
echo 
echo 
echo                                   +==================================+
echo                                   *         carregando               *
echo                                   +==================================+
TIMEOUT /T %temp% 

cls
goto menu