#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "wifi.h"  // Include the Wi-Fi header file
#include "ethernet_thread.h"  // Include Ethernet thread header
#include "control_thread.h"   // Include Control thread header

// Function prototypes for the tasks
void ethernet_thread(void *pvParameter);
void control_thread(void *pvParameter);

void app_main(void)
{
    // Initialize Non-Volatile Storage (NVS)
    ESP_ERROR_CHECK(nvs_flash_init());

    // Initialize Wi-Fi in Station mode
    wifi_init_sta();

    // Create the ethernet_thread task
    xTaskCreate(&ethernet_thread, "ethernet_thread", 4096, NULL, 5, NULL);

    // Create the control_thread task
    xTaskCreate(&control_thread, "control_thread", 4096, NULL, 5, NULL);

    // The scheduler starts automatically after app_main exits
}

// Ethernet Thread (Task)
void ethernet_thread(void *pvParameter)
{
    while (1)
    {
        // Your Ethernet handling code here
        // For example, polling the network, sending/receiving data
        vTaskDelay(1000 / portTICK_PERIOD_MS);  // Delay for 1 second
    }
}

// Control Thread (Task)
void control_thread(void *pvParameter)
{
    while (1)
    {
        // Your control logic code here
        // For example, reading sensors, adjusting outputs
        vTaskDelay(1000 / portTICK_PERIOD_MS);  // Delay for 1 second
    }
}
