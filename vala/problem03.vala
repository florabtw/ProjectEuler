using GLib.Math;

const int64 NUMBER = 600851475143;

int64 largest_prime_factor(int64 num) {
    int64 numSqrt = (int64) floor( sqrt(num) );
    for (int64 i = 2; i < numSqrt; i++) {
        if (num % i == 0) {
            return largest_prime_factor(num / i);
        }
    }

    return num;
}

void main() {
    stdout.printf(@"$( largest_prime_factor(NUMBER) )\n");
}
