import sys
import time

sys.set_int_max_str_digits(2147483647)

def main():
    n = int(input("Enter a number to calculate factorial: "))
    start_time = time.time()
    sum = 1
    for i in range(1, n + 1):
        sum *= i
    finished_time = time.time()
    overall_time = finished_time - start_time
    print(f'The result of {n}! is: {sum}')
    print(f'The overall time is {overall_time} seconds.')

if __name__ == "__main__":
    main()
