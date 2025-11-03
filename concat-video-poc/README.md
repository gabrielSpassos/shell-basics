1. Install ffmpeg
```
sudo apt update
sudo apt install ffmpeg
```

2. add file path on input_files.txt
```
file '/home/$User$/Documentos/video1.mp4'
file '/home/$user$/Documentos/video2.mp4'
```

3. Execute
ffmpeg -f concat -safe 0 -i input_files.txt -c copy merged_video.mp4