# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/quark/esp-idf/components/bootloader/subproject"
  "/home/quark/esp-idf/git/temperatur-esp32-project/wMeter/build/bootloader"
  "/home/quark/esp-idf/git/temperatur-esp32-project/wMeter/build/bootloader-prefix"
  "/home/quark/esp-idf/git/temperatur-esp32-project/wMeter/build/bootloader-prefix/tmp"
  "/home/quark/esp-idf/git/temperatur-esp32-project/wMeter/build/bootloader-prefix/src/bootloader-stamp"
  "/home/quark/esp-idf/git/temperatur-esp32-project/wMeter/build/bootloader-prefix/src"
  "/home/quark/esp-idf/git/temperatur-esp32-project/wMeter/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/quark/esp-idf/git/temperatur-esp32-project/wMeter/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/quark/esp-idf/git/temperatur-esp32-project/wMeter/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
