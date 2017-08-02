all:
	nim js -o:main.js main.nim

clean:
	rm -f *.js
