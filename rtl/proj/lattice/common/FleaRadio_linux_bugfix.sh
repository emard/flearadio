#!/bin/sh
# fix bugs when diamond garbles file names
# diamond 3.6 needs this, probably all earlier
# versions need it as well

mkdir -p FleaRadio
cd FleaRadio
ln -s FleaRadio_FleaRadio.prf FleFleaRadio_FleaRadio.prf
ln -s FleaRadio_FleaRadio_map.ncd FleaRadFleaRadio_map.ncd
ln -s FleaRadio_FleaRadio_map.ncd FleaRadio_FleaRadio_mapd.ncd