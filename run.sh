SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

meson build && ninja -C build

cd $SCRIPT_DIR/build/

#Make sure you've copied your pak0.pak and pak1.pak into a directory named id1 in SCRIPT_DIR
./vkquake -basedir $SCRIPT_DIR
