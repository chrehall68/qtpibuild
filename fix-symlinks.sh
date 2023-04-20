TARGET_SYSROOT=$HOME/rpi-sysroot
wget https://raw.githubusercontent.com/riscv/riscv-poky/master/scripts/sysroot-relativelinks.py
chmod +x sysroot-relativelinks.py 
python3 sysroot-relativelinks.py $TARGET_SYSROOT