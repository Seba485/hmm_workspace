#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/sebastiano/hmm_workspace/src/occupancy_grid_python-master"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/sebastiano/hmm_workspace/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/sebastiano/hmm_workspace/install/lib/python3/dist-packages:/home/sebastiano/hmm_workspace/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/sebastiano/hmm_workspace/build" \
    "/usr/bin/python3" \
    "/home/sebastiano/hmm_workspace/src/occupancy_grid_python-master/setup.py" \
     \
    build --build-base "/home/sebastiano/hmm_workspace/build/occupancy_grid_python-master" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/sebastiano/hmm_workspace/install" --install-scripts="/home/sebastiano/hmm_workspace/install/bin"
