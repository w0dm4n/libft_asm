nasm -f macho hello.s -DDARWIN
ld -o hello hello.o -arch i386 -lc -no_pie -macosx_version_min 10.10
