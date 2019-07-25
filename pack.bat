for /d %%d in (*.*) DO cd "%%d" && zip.exe -r -1 "../%%d.scs" "*" && cd ..
del .zip
del .*.zip
del ____*.zip