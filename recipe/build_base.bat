%PYTHON% -m pip install . --no-deps --ignore-installed --no-cache-dir -vvv
if errorlevel 1 exit 1

set MENU_DIR=%PREFIX%\Menu
IF NOT EXIST (%MENU_DIR%) mkdir %MENU_DIR%

@REM copy %SRC_DIR%\img_src\spyder.ico %MENU_DIR%\
@REM if errorlevel 1 exit 1

copy %RECIPE_DIR%\menu-win.json %MENU_DIR%\mne_shortcuts.json
if errorlevel 1 exit 1
