#!/bin/bash
source build/envsetup.sh
make installclean
# mako
lunch rascarlo_mako-user && make installclean && make otapackage -j12
# grouper
lunch rascarlo_grouper-user && make installclean && make otapackage -j12
