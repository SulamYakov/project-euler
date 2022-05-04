// Project Euler : Problem 1

#include <stdio.h>

long gcd(long a, long b);

int main(int argc, char*argv[]) {
    int args_allowed = 4;
    if (argc == args_allowed) {
        long mult1 = *argv[1], mult2 = *argv[2], lim = *argv[3];
        if (mult1 > lim || mult2 > lim) {
            printf("Argument error: the limit must be greater than both multiples."); 
            return -1;
        } else {
            printf("%l", gcd(mult1, mult2));
        }
    } else { 
        printf("CLI error: incorrect number of arguments supplied to the script.\n The correct number for this script is: %d", args_allowed);
        return -1;
    }
}

long gcd(long a, long b) {

}
