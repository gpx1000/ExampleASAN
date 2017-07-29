#!/system/bin/sh-from-zygote
export ASAN_OPTIONS=start_deactivated=1,malloc_context_size=0
export ASAN_ACTIVATION_OPTIONS=include_if_exists=/data/local/tmp/asan.options.b
export LD_PRELOAD=libclang_rt.asan-arm-android.so
su -c setenforcing 0
$@
su -c setenforcing 1
