@echo off
del /q Thumbs.db*
if not exist "win" (
  mkdir win
  cd win
  echo Downloading DeskGap...
  ..\wget -O deskgap.zip https://github.com/patr0nus/DeskGap/releases/download/v0.1.0/deskgap-v0.1.0-win32-ia32.zip
  ..\unzip deskgap.zip
  del deskgap.zip
  rename DeskGap "gPhotos Sync"
  del /q "gPhotos Sync\resources\app\*.*"
  rename "gPhotos Sync\DeskGap.exe" "gPhotos Sync.exe"
  cd ..
)
echo Building gPhotos Sync App...
copy /y package.json ".\win\gPhotos Sync\resources\app\package.json"
copy /y material.min.css ".\win\gPhotos Sync\resources\app\material.min.css"
copy /y material.min.js ".\win\gPhotos Sync\resources\app\material.min.js"
copy /y material.min.css.map ".\win\gPhotos Sync\resources\app\material.min.css.map"
copy /y material.min.js.map ".\win\gPhotos Sync\resources\app\material.min.js.map"
copy /y dialog-polyfill.js ".\win\gPhotos Sync\resources\app\dialog-polyfill.js"
copy /y dialog-polyfill.css ".\win\gPhotos Sync\resources\app\dialog-polyfill.css"
copy /y icons.woff ".\win\gPhotos Sync\resources\app\icons.woff"
copy /y sql.js ".\win\gPhotos Sync\resources\app\sql.js"
copy /y gphotos-sync.js ".\win\gPhotos Sync\resources\app\gphotos-sync.js"
copy /y gphotos-sync-ui.js ".\win\gPhotos Sync\resources\app\gphotos-sync-ui.js"
copy /y gphotos-sync.css ".\win\gPhotos Sync\resources\app\gphotos-sync.css"
copy /y gphotos-sync.html ".\win\gPhotos Sync\resources\app\gphotos-sync.html"
copy /y gphotos.html ".\win\gPhotos Sync\resources\app\gphotos.html"
echo Done.
rem *** TODO: icon, pack ***
pause
exit

