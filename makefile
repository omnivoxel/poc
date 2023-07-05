all:
	mkdir -p bin
	emcc main.c -O3 --closure 1 -s FILESYSTEM=0 -s USE_SDL=2 -s ENVIRONMENT=web -s TOTAL_MEMORY=256MB -I inc -o bin/index.html --shell-file t.html

run:
	emrun --browser chrome bin/index.html

release: all
	emrun --browser chrome bin/index.html


	
