git clone https://github.com/turbowarp/scratch-gui.git
cd scratch-gui/
ls
npm install
npm run build

tar cvzf ../turbowarp.tar.gz build/
# wbn usage:
# Usage: wbn [options]
# 
# Options:
#   -V, --version                        output the version number
#   -d, --dir <directory>                input root directory (required)
#   -b, --baseURL <URL>                  base URL (required)
#   -f, --formatVersion <formatVersion>  webbundle format version, possible values are "b1" and "b2" (default: "b2")
#                                        (default: "b2")
#   -p, --primaryURL <URL>               primary URL (defaults to base URL, only valid with format version "b1")
#   -m, --manifestURL <URL>              manifest URL (only valid with format version "b1")
#   -o, --output <file>                  webbundle output file (default: "out.wbn")
#   -h, --help                           output usage information

wbn --dir build/ --baseURL "https://turbowarp.org/" --formatVersion b1 --primaryURL "https://turbowarp.org/" --manifestURL "https://turbowarp.org/manifest.webmanifest" --output ../turbowarp.wbn
