#!/bin/bash
make clobber
make -j12
source build/envsetup.sh
# hammerhead
lunch rascarlo_hammerhead-user && make otapackage -j12
# manta
lunch rascarlo_manta-user && make otapackage -j12
# mako
lunch rascarlo_mako-user && make otapackage -j12
# grouper
lunch rascarlo_grouper-user && make otapackage -j12
