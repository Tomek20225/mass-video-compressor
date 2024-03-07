# Mass Video Compressor for Windows
A batch script for recursive conversion of video files to .mp4 and compression

## How it works?
The script recursively looks through the directory it was placed in for video files in common video formats.
Then it runs ffmpeg to convert the given video to .mp4 format with CRF 23 level of quality, which is generally considered 'good enough'.
Once the conversion is finished, the script compares the sizes of both original and new files. If the new file is smaller, the original one is removed and its name is assigned to the new one.

## Requirements
- ffmpeg
- Windows OS

## Todo
-[x] develop a working implementation of the script
-[ ] implement path as an argument
-[ ] implement level of quality as an argument
-[ ] implement mode that doesn't replace the format of the original files

## Contributions
All contributions are welcome! I hope this simple script proves useful to someone other than me.
