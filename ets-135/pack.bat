for /d %%d in (*.*) DO cd "%%d" && zip.exe -r -1 "../%%d.zip" "*" && cd ..
del .zip
del .*.zip
del ____*.zip