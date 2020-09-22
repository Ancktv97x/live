dir/b/s "C:\Users\Administrator\Desktop\live\bin\in\*.mp4" > list.txt
:encode video
:loop
for /F "delims=;" %%F in (list.txt)  DO ffmpeg -re -i "%%F" -vcodec libx264 -preset veryfast -maxrate 2500k -bufsize 3368k -vf "format=yuv420p" -g 60 -acodec libmp3lame -b:a 198k -ar 44100 -metadata title="" -metadata artist="" -metadata album_artist="" -metadata album="" -metadata date="" -metadata track="" -metadata genre="" -metadata publisher="" -metadata encoded_by="" -metadata copyright="" -metadata composer="" -metadata performer="" -metadata TIT1="" -metadata TIT3="" -metadata disc="" -metadata TKEY="" -metadata TBPM="" -metadata language="eng" -metadata encoder="" -f flv -s 1280x720 rtmp://a.rtmp.youtube.com/live2/44zg-qd7c-j3cq-fby4
goto loop