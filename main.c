#include <pthread.h>
#include <stdio.h>
#include <unistd.h> // For sleep

// Function that will be executed by the POSIX thread
void *thread_function(void *arg) {
    char *message = (char *)arg;
    for (int i = 0; i < 5; i++) {
        printf("Thread says: %s\n", message);
       // sleep(1); // Simulate some work
    }
    return NULL;
}

int main(void) {
   printf("!!!.\n");

    pthread_t my_pthread;
    char *thread_arg = "Hello from POSIX thread!";

    // Create the POSIX thread
    if (pthread_create(&my_pthread, NULL, thread_function, (void *)thread_arg) != 0) {
        perror("Failed to create pthread");
        return 1;
    }

    printf("Main thread continues...\n");
/*
    // Wait for the POSIX thread to finish
    if (pthread_join(my_pthread, NULL) != 0) {
        perror("Failed to join pthread");
        return 1;
    }*/
pthread_join(my_pthread, NULL);
    printf("POSIX thread finished. Main thread exiting.\n");

    return 0;
}