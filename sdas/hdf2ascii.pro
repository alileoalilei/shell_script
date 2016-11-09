pt1 = [26,35] & pt2 = [37,37]
f = findfile('*.hdf')
n = n_elements( f )
for i=0, n-1 do begin & $
pos = STRPOS(f[i], '/', /REVERSE_SEARCH) & $
sensor = STRMID(f[i], pos+1, 1) & $
seadisp & $
ascii2 = f[i] + '_latlon.asc' & $
load, f[i],ftype='PFV5', prod_name='sst' & $
out_ascii, ascii2, band_no=1, region=[pt1,pt2], vars=[3,4,2], $
format='(F10.2, F10.2, F10.4)', $
titles=['Latitude', 'Longitude', 'SST'], /ll_flag & $
clear_up & $
endfor

