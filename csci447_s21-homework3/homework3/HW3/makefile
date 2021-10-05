
all: os

Runtime.o: Runtime.s
	asm Runtime.s

Switch.o: Switch.s
	asm Switch.s

System.s: System.h System.k
	kpl System -unsafe

System.o: System.s
	asm System.s

List.s: List.h List.k System.h
	kpl List -unsafe

List.o: List.s
	asm List.s

Thread.s: Thread.h Thread.k System.h List.h
	kpl Thread -unsafe

Thread.o: Thread.s
	asm Thread.s

Synch.s: Synch.h Synch.k Thread.h List.h System.h
	kpl Synch

Synch.o: Synch.s
	asm Synch.s

Main.s: Main.h Main.k Thread.h List.h System.h Synch.h
	kpl Main -unsafe

Main.o: Main.s
	asm Main.s


os: System.o List.o Thread.o Switch.o Synch.o Main.o Runtime.o
	lddd System.o List.o Thread.o Switch.o Synch.o Main.o Runtime.o -o os

clean:
	rm -f *.o *~ List.s Main.s Synch.s System.s Thread.s  os
