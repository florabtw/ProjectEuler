void main() {
    int[] mults = {};
    
    // mults of 5
    for (int i = 5; i < 1000; i += 5) {
        mults += i;
    }

    // mults of 3
    for (int i = 3; i < 1000; i += 3) {
        if (i % 5 != 0) {
            mults += i;
        }
    }

    int sum = 0;
    for (int i = 0; i < mults.length; i++) {
        sum += mults[i];
    }

    stdout.printf(@"Sum: $sum\n");
}
