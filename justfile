_default: clean config build test

clean:
    rm -rf "./builddir/"
    ./meson/meson.py subprojects purge --confirm

config:
    ./meson/meson.py setup -D "wrap_mode=forcefallback" --cross-file "./x86_64-w64-mingw32.txt" --wipe "./builddir/"

build:
    ./meson/meson.py compile -C "./builddir/"

test:
    ./builddir/build.subprojects/cppwinrt-2.0.240111.5/cppwinrt
