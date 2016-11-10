ncdump OVR_01683072_restart.nc | sed -e 's/_,\ /NaN,\ /g' | ncgen -o restart_new.nc 
