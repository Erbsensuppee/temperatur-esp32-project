# ESP32 Project with bme280
I try to create a project with ESP-IDF and I will only use VIM ad my IDF.

## How to create a project with IDF.py
1. Create a Project
    ```
    idf.py create-project YOUR_PROJECT_NAME
    ```
2. set the target - Do this in the file with CMakeLists.txt 
    ```
    idf.py set-target YOUR_ESP32
    ``` 

3. Build the target - it is used to compile the software
    ``` 
    idf.py build 
    ```

4. How to flash it on to the esp32 -> run the code
    ```
    idf.py flash
    ```

5. How to monitor what is going on -> run the code
    ```
    idf.py monitor
    ```
    
## Folder Structure
ESP32_Project/
│
├── components/         # Contains all custom components
│   ├── bme280/
│   │   ├── bme280.c
│   │   ├── bme280.h
│   │   └── CMakeLists.txt
│   │
│   ├── pt1000/
│   │   ├── pt1000.c
│   │   ├── pt1000.h
│   │   └── CMakeLists.txt
│   │
│   ├── ph_sensor/
│   │   ├── ph_sensor.c
│   │   ├── ph_sensor.h
│   │   └── CMakeLists.txt
│   │
│   ├── tds_sensor/
│   │   ├── tds_sensor.c
│   │   ├── tds_sensor.h
│   │   └── CMakeLists.txt
│   │
│   └── network/
│       ├── wifi.c
│       ├── wifi.h
│       ├── access_point.c
│       ├── access_point.h
│       └── CMakeLists.txt
│
├── main/                # Main application code
│   ├── main.c           # Entry point of the application
│   ├── ethernet_thread.c
│   ├── ethernet_thread.h
│   ├── control_thread.c
│   ├── control_thread.h
│   └── CMakeLists.txt
│
├── sdkconfig            # SDK configuration file
│
└── CMakeLists.txt       # Main CMake file for the project

