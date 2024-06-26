project('winmd', 'cpp', version: 'f949560b75f743fe7d7ecd0db0c265be73ab04e3')

fs = import('fs')

winmd_dir = meson.current_source_dir() / './src/'

winmd_dep = declare_dependency(
    include_directories: [
        include_directories(fs.relative_to(winmd_dir, './')),
    ],
)

meson.override_dependency('winmd', winmd_dep)
