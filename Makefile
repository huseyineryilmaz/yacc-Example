lang : calc.l calc.c
	yacc -d calc.y
	lex calc.l
	gcc lex.yy.c y.tab.c -o calc

run : calc
	./calc

remove : 
	rm -rf lex.yy.c y.tab.c y.tab.h calc
