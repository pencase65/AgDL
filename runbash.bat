@echo off

rem Bashの実行
cmd /c "C:\Windows\System32\bash.exe" --login -i -- /mnt/d/work/bash/runbash.sh %1 %2 %3 %4 %5 %6

rem 終了処理
echo bat_end_code:%errorlevel%