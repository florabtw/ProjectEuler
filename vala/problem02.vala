const int FOUR_MILLION = 4000000;

void main() {
    int sum = 0;

    int current = 1;
    int prev = 1;
    int temp;
    while (current < FOUR_MILLION) {
        if (current % 2 == 0) {
            sum += current;
        }

        temp = current;
        current += prev;
        prev = temp;
    }

    stdout.printf(@"Sum: $sum\n");
}
