# Results
## Python: 
the maximum input is 1558.      
we can increase that by using sys.set_int_max_str_digits().     
maximum change is 2,147,483,647 which is 2^31 - 1.      
time to calculate 100,000! = 2.2968742847442627 seconds.
time to calculate 500,000! = 72.59339737892151 seconds.

## Java
Using the long type we can only calculate up to 20!, at 21! it flips to minus and wrong results.        
Using BigInteger we can up that limit.      
Time to calculate 100,000! = 2.2410638 seconds.     
Time to calculate 500,000! = 60.4222949 seconds.        

## Assembly
Using normal 64-bit registers we can get up to 20! (Same as Java).  
