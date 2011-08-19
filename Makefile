all: process

process:
	ttree --suffix tt2=html -r -f ttree.cfg -s src/ -d build/
	
dist: process
	tar cvvf stockholm-pm-web.tar -C build/ .

view: process
	open build/index.html
	