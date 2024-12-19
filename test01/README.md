cd ..

sudo apt install fasm

./make_bootstrap.sh

./stas -h

./stas test01/t01.stas -o test01/t01.out

./stas examples/fib.stas -r
