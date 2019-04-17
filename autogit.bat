git add -A
git commit -am "%1 %2 %3 %4 %5 %6 %7 %8 %9"
:loop
@rem git add -A
@rem git commit -am "%date% %time%"
git push
@rem timeout /t 600
@rem goto loop