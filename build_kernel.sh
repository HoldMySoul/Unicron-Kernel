#!/bin/bash
echo "Script made by Martin Valentine && DAvinash97"
echo "If something is wrong edit paths"
export CROSS_COMPILE=/home/server/Unicron-Kernel/prebuilts_gcc_linux-x86_aarch64_aarch64-linaro-7/bin/aarch64-linux-gnu-
export ARCH=arm64
export ANDROID_MAJOR_VERSION=q
export PLATFORM_VERSION=10
export USE_CCACHE=1
CPU=`nproc --all`
clear
echo "Did you establish Build Environment?"

echo "Select"
echo "1 = Yes"
echo "2 = No, idk what that is"
clear

if [ $n -eq 1 ]; then
echo "Continuing to build"

elif [ $n -eq 2 ]; then
sudo apt-get install git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig

fi

echo "Do you have toolcahin?"

echo "1 = Yes"
echo "2 = No, i need one."

if [ $n -eq 1 ]; then
echo "Nice job"

elif [ $n -eq 2 ]; then
git clone https://github.com/HoldMySoul/prebuilts_gcc_linux-x86_aarch64_aarch64-linaro-7.git prebuilts_gcc_linux-x86_aarch64_aarch64-linaro-7
fi

echo "Select"
echo "1 = Exit"
echo "2 = Clean build"
echo "3 = A320X"
echo "4 = J7velte"
echo "5 = A6"
echo "6 = J5" 
echo "7 = J6"
echo "8 = J7xelte"
echo "9 = J7y17lte"
echo "10 = on7xelte"
echo "11 = All devices"
read n
clear  

if [ $n -eq 1 ]; then
exit
elif [ $n -eq 2 ]; then

make clean && make mrproper
rm -r /home/server/Unicron-Kernel//arch/arm64/boot/Image
rm -r /home/server/Unicron-Kernel//arch/arm64/boot/dtb.img
elif [ $n -eq 3 ]; then

echo "============="
echo "Building zImage For A320X"
echo "============="
make exynos7870-a3y17lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for A3lte"
mv /home/server/Unicron-Kernel//arch/arm64/boot/Image /home/server/Unicron-Kernel//build_folder/split_img/boot.img-zImage
mv /home/server/Unicron-Kernel//arch/arm64/boot/dtb.img /home/server/Unicron-Kernel//build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/server/Unicron-Kernel//build_folder/repackimg.sh
mv /home/server/Unicron-Kernel//build_folder/image-new.img /home/server/Unicron-Kernel//build_folder/output/Unicron-Kernel-a3y17lte.img
echo "Cleaning Please wait....."
make clean
times
echo "Done"
echo "Flashable image is at output folder"

elif [ $n -eq 4 ]; then

make exynos7870-j7velte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J7velte"
mv /home/server/Unicron-Kernel//arch/arm64/boot/Image /home/server/Unicron-Kernel//build_folder/split_img/boot.img-zImage
mv /home/server/Unicron-Kernel//arch/arm64/boot/dtb.img /home/server/Unicron-Kernel//build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/server/Unicron-Kernel//build_folder/repackimg.sh
mv /home/server/Unicron-Kernel//build_folder/image-new.img /home/server/Unicron-Kernel//build_folder/output/Unicron-Kernel_j7ve.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"
elif [ $n -eq 5 ]; then
echo "device doesn't exist lmao"
elif [ $n -eq 6 ]; then

make exynos7870-j5y17lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J5"
mv /home/server/Unicron-Kernel//arch/arm64/boot/Image /home/server/Unicron-Kernel//build_folder/split_img/boot.img-zImage
mv /home/server/Unicron-Kernel//arch/arm64/boot/dtb.img /home/server/Unicron-Kernel//build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/server/Unicron-Kernel//build_folder/repackimg.sh
mv /home/server/Unicron-Kernel//build_folder/image-new.img /home/server/Unicron-Kernel//build_folder/output/Unicron-Kernel_j5y17lte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"
times
elif [ $n -eq 7 ]; then

make exynos7870-j6lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J6lte"
mv /home/server/Unicron-Kernel//arch/arm64/boot/Image /home/server/Unicron-Kernel//build_folder/split_img/boot.img-zImage
mv /home/server/Unicron-Kernel//arch/arm64/boot/dtb.img /home/server/Unicron-Kernel//build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/server/Unicron-Kernel//build_folder/repackimg.sh
mv /home/server/Unicron-Kernel//build_folder/image-new.img /home/server/Unicron-Kernel//build_folder/output/Unicron-Kernel_j6lte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"
times
elif [ $n -eq 8 ]; then

make exynos7870-j7xelte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J7xelte"
mv /home/server/Unicron-Kernel//arch/arm64/boot/Image /home/server/Unicron-Kernel//build_folder/split_img/boot.img-zImage
mv /home/server/Unicron-Kernel//arch/arm64/boot/dtb.img /home/server/Unicron-Kernel//build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/server/Unicron-Kernel//build_folder/repackimg.sh
mv /home/server/Unicron-Kernel//build_folder/image-new.img /home/server/Unicron-Kernel//build_folder/output/Unicron-Kernel_j7xelte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"
times
elif [ $n -eq 9 ]; then

make exynos7870-j7y17lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J7y17lte"
mv /home/server/Unicron-Kernel//arch/arm64/boot/Image /home/server/Unicron-Kernel//build_folder/split_img/boot.img-zImage
mv /home/server/Unicron-Kernel//arch/arm64/boot/dtb.img /home/server/Unicron-Kernel//build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/server/Unicron-Kernel//build_folder/repackimg.sh
mv /home/server/Unicron-Kernel//build_folder/image-new.img /home/server/Unicron-Kernel//build_folder/output/Unicron-Kernel_j7y17lte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"
times
elif [ $n -eq 10 ]; then

make exynos7870-on7xelte_defconfig
make -j"$CPU"
echo "Kernel Compiled for on7xelte"
mv /home/server/Unicron-Kernel//arch/arm64/boot/Image /home/server/Unicron-Kernel//build_folder/split_img/boot.img-zImage
mv /home/server/Unicron-Kernel//arch/arm64/boot/dtb.img /home/server/Unicron-Kernel//build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/server/Unicron-Kernel//build_folder/repackimg.sh
mv /home/server/Unicron-Kernel//build_folder/image-new.img /home/server/Unicron-Kernel//build_folder/output/Unicron-Kernel_on7xelte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"
times
elif [ $n -eq 11 ]; then
echo "============="
echo "Building zImage For A320X"
echo "============="
make exynos7870-a3y17lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for A3lte"
mv /home/server/Unicron-Kernel//arch/arm64/boot/Image /home/server/Unicron-Kernel//build_folder/split_img/boot.img-zImage
mv /home/server/Unicron-Kernel//arch/arm64/boot/dtb.img /home/server/Unicron-Kernel//build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/server/Unicron-Kernel//build_folder/repackimg.sh
mv /home/server/Unicron-Kernel//build_folder/image-new.img /home/server/Unicron-Kernel//build_folder/output/Unicron-Kernel_a3y17lte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"

make exynos7870-j7velte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J7velte"
mv /home/server/Unicron-Kernel//arch/arm64/boot/Image /home/server/Unicron-Kernel//build_folder/split_img/boot.img-zImage
mv /home/server/Unicron-Kernel//arch/arm64/boot/dtb.img /home/server/Unicron-Kernel//build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/server/Unicron-Kernel//build_folder/repackimg.sh
mv /home/server/Unicron-Kernel//build_folder/image-new.img /home/server/Unicron-Kernel//build_folder/output/Unicron-Kernel_j7velte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"

make exynos7870-j5y17lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J5"
mv /home/server/Unicron-Kernel//arch/arm64/boot/Image /home/server/Unicron-Kernel//build_folder/split_img/boot.img-zImage
mv /home/server/Unicron-Kernel//arch/arm64/boot/dtb.img /home/server/Unicron-Kernel//build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/server/Unicron-Kernel//build_folder/repackimg.sh
mv /home/server/Unicron-Kernel//build_folder/image-new.img /home/server/Unicron-Kernel//build_folder/output/Unicron-Kernel_j5y17lte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"

make exynos7870-j6lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J6lte"
mv /home/server/Unicron-Kernel//arch/arm64/boot/Image /home/server/Unicron-Kernel//build_folder/split_img/boot.img-zImage
mv /home/server/Unicron-Kernel//arch/arm64/boot/dtb.img /home/server/Unicron-Kernel//build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/server/Unicron-Kernel//build_folder/repackimg.sh
mv /home/server/Unicron-Kernel//build_folder/image-new.img /home/server/Unicron-Kernel//build_folder/output/Unicron-Kernel_j6lte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"

make exynos7870-j7xelte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J7xelte"
mv /home/server/Unicron-Kernel//arch/arm64/boot/Image /home/server/Unicron-Kernel//build_folder/split_img/boot.img-zImage
mv /home/server/Unicron-Kernel//arch/arm64/boot/dtb.img /home/server/Unicron-Kernel//build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/server/Unicron-Kernel//build_folder/repackimg.sh
mv /home/server/Unicron-Kernel//build_folder/image-new.img /home/server/Unicron-Kernel//build_folder/output/Unicron-Kernel_j7xelte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"

make exynos7870-j7y17lte_defconfig
make -j"$CPU"
echo "Kernel Compiled for J7y17lte"
mv /home/server/Unicron-Kernel//arch/arm64/boot/Image /home/server/Unicron-Kernel//build_folder/split_img/boot.img-zImage
mv /home/server/Unicron-Kernel//arch/arm64/boot/dtb.img /home/server/Unicron-Kernel//build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/server/Unicron-Kernel//build_folder/repackimg.sh
mv /home/server/Unicron-Kernel//build_folder/image-new.img /home/server/Unicron-Kernel//build_folder/output/Unicron-Kernel_j7y17lte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"

make exynos7870-on7xelte_defconfig
make -j"$CPU"
echo "Kernel Compiled for on7xelte"
mv /home/server/Unicron-Kernel//arch/arm64/boot/Image /home/server/Unicron-Kernel//build_folder/split_img/boot.img-zImage
mv /home/server/Unicron-Kernel//arch/arm64/boot/dtb.img /home/server/Unicron-Kernel//build_folder/split_img/boot.img-dt
echo martins | sudo -S /home/server/Unicron-Kernel//build_folder/repackimg.sh
mv /home/server/Unicron-Kernel//build_folder/image-new.img /home/server/Unicron-Kernel//build_folder/output/Unicron-Kernel_on7xelte.img
echo "Cleaning Please wait....."
make clean
echo "Done"
echo "Flashable image is at output folder"
times
fi