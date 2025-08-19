REM CREAR UN RAID-5
select disk 2
convert dynamic
select disk 3
convert dynamic
select disk 4
convert dynamic
create volume raid size= disk=2,3,4
REM No le asigno tamaño para que coja el mayor volumen
REM en este caso será el disco entero de 10 GB
assign letter=F
format fs=ntfs label=”DATOS SEDES”



