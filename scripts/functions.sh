#
# utility functions for all scripts
#

fail() {
    echo
    echo "EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE"
    echo
    if [ "$1" != "" ]; then
        echo ERROR: $1
    else
        echo An error occurred.
    fi
    cat <<EOF

Error downloading Stable Diffusion UI. Sorry about that, please try to:
 1. Run this installer again.
 2. Please contact support.

Thanks!


EOF
    read -p "Press any key to continue"
    exit 1

}

filesize() {
    case "$(uname -s)" in
        Linux*)     stat -c "%s" $1;;
        Darwin*)    /usr/bin/stat -f "%z" $1;;
        *)          echo "Unknown OS: $OS_NAME! This script runs only on Linux or Mac" && exit
    esac
}


