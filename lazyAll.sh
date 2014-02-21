#!/bin/bash
source build/envsetup.sh
make installclean
# hammerhead
lunch rascarlo_hammerhead-user && make installclean && make otapackage -j12
# manta
lunch rascarlo_manta-user && make installclean && make otapackage -j12
# mako
lunch rascarlo_mako-user && make installclean && make otapackage -j12
# grouper
lunch rascarlo_grouper-user && make installclean && make otapackage -j12
