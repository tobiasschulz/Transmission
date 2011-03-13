#/bin/sh
export G_SLICE=always-malloc
export G_DEBUG=gc-friendly
export GLIBCXX_FORCE_NEW=1
#valgrind --tool=cachegrind ./transmission -p -g /tmp/transmission-test/what 2>&1 | tee runlog
valgrind --tool=memcheck --leak-check=full --leak-resolution=high --num-callers=48 --log-file=x-valgrind --show-reachable=yes ./transmission-gtk -p 2>&1 | tee runlog