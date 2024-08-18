# ESP32 Project with bme280
I try to create a project with ESP-IDF and I will only use VIM ad my IDF.

## How to create a project with idf.py
1. Create a Project
    ```idf.py create-project YOUR_PROJECT_NAME```
2. set the target - Do this in the file with CMakeLists.txt 
    ```idf.py set-target YOUR_ESP32``` 
3. Build the target - it is used to compile the software
    ```idf.py build```
4. How to flash it on to the esp32 -> run the code
    ```idf.py flash```
5. How to monitor what is going on -> run the code
    ```idf.py monitor```
