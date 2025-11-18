mkdir "output"
chmod -vR 777 "output"
for file in *.m4a; do
    ffmpeg -i "$file" -qscale:a 9 "${file//.m4a/.ogg}";
    rm -vr "$file";
done
for file in *.ogg; do
    ffmpeg -y -i "$file" -qscale:a 9 "output/$file";
done