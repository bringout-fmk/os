
liball: 
	make -C dok/1g
	make -C main/1g
	make -C main/2g
	make -C db/1g
	make -C db/2g
	make -C rpt/1g
	make -C sif/1g
	make -C param/1g
	make -C 1g exe
	
cleanall:	
	make -C dok/1g clean
	make -C main/1g clean
	make -C main/2g clean
	make -C db/1g clean
	make -C db/2g clean
	make -C rpt/1g clean
	make -C sif/1g clean
	make -C param/1g clean
	make -C 1g clean

os:   cleanall liball
