#include <stdio.h>

int main() {
    int n, tq, i, time = 0;
    int bt[10], rt[10], wt[10] = {0}, tat[10];

    printf("Enter number of processes (max 10): ");
    scanf("%d", &n);

    // Safety check
    if (n <= 0 || n > 10) {
        printf("Invalid number of processes!\n");
        return 1;
    }

    printf("Enter burst times:\n");
    for (i = 0; i < n; i++) {
        printf("P%d: ", i + 1);
        scanf("%d", &bt[i]);
        rt[i] = bt[i];
    }

    printf("Enter time quantum: ");
    scanf("%d", &tq);

    if (tq <= 0) {
        printf("Invalid time quantum!\n");
        return 1;
    }

    while (1) {
        int done = 1;

        for (i = 0; i < n; i++) {
            if (rt[i] > 0) {
                done = 0;

                if (rt[i] > tq) {
                    time += tq;
                    rt[i] -= tq;
                } else {
                    time += rt[i];
                    wt[i] = time - bt[i];
                    rt[i] = 0;
                }
            }
        }

        if (done == 1)
            break;
    }

    for (i = 0; i < n; i++) {
        tat[i] = wt[i] + bt[i];
    }

    printf("\nProcess\tBT\tWT\tTAT\n");
    for (i = 0; i < n; i++) {
        printf("P%d\t%d\t%d\t%d\n", i + 1, bt[i], wt[i], tat[i]);
    }

    return 0;
}
