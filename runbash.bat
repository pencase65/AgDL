@echo off

rem Bash�̎��s
cmd /c "C:\Windows\System32\bash.exe" --login -i -- /mnt/d/work/bash/runbash.sh %1 %2 %3 %4 %5 %6

rem �I������
echo bat_end_code:%errorlevel%