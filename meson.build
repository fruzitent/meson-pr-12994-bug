project('meson-pr-12994-bug', 'cpp', version: '0.1', default_options: ['warning_level=3'])

cmake = import('cmake')

winmd_dep = subproject('winmd', required: true)
winmd_dir = winmd_dep.get_variable('winmd_dir')

cppwinrt_var = cmake.subproject_options()
cppwinrt_var.add_cmake_defines({'EXTERNAL_WINMD_INCLUDE_DIR': winmd_dir})

# TODO: https://github.com/mesonbuild/meson/issues/8089
cppwinrt_var.append_compile_args('cpp', f'-I@winmd_dir@')

cppwinrt_pro = cmake.subproject(
    'cppwinrt',
    # TODO: https://github.com/mesonbuild/meson/pull/12258
    native: true,
    options: cppwinrt_var,
    required: true,
)
cppwinrt_tgt = cppwinrt_pro.target('cppwinrt')
