cd ~/
rm -rf ~/hackbench
pkg install -y git clang libllvm
git clone https://github.com/geekydoc/hackbench
cd hackbench
gcc -Wall -O2 hackbench.c -o hackbench -lpthread
mv hackbench ../../usr/bin/
echo " Hackbench Installed successful "
rm -rf ~/hackbench
echo " Type "hackbench -pipe 20 thread 2000" to test "
