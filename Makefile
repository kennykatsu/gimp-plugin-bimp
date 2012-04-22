GIMPARGS = $(shell gimptool-2.0 --cflags --libs)
make: 
	gcc -o ./bin/bimp -Wall -Wno-unused-variable -Wno-pointer-sign -Wno-parentheses src/*.c src/manipulation-gui/*.c $(GIMPARGS) -DGIMP_DISABLE_DEPRECATED 
	
install: 
	gimptool-2.0 --install-bin ./bin/bimp
	
uninstall: 
	gimptool-2.0 --uninstall-bin bimp

clean:
	rm ./bin/bimp
