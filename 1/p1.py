
import math, sys

argsPermitted = 3

# check that the correct number of arguments has been input
if len(sys.argv[1:]) != argsPermitted:
  print("""CLI error: incorrect number of arguments supplied to the script. 
           The correct number for this script is: """ + str(argsPermitted) + ".")
  sys.exit()

mult1 = int(sys.argv[1])
mult2 = int(sys.argv[2])
lim   = int(sys.argv[3])

# check that both multiples are less than the limit
if mult1 > lim or mult2 > lim:
  print("Argument error: the limit must be greater than both multiples.")
  sys.exit()

def adder_prog (m, l):
  ans = int((m/2) * math.floor((l-1)/m) * (math.floor((l-1)/m) + 1))
  return ans

def lcm (m1, m2):
  ans = abs(m1*m2) // math.gcd(m1, m2)
  return ans

# calculate final answer by first adding all multiples below the limit, then subtracting all common multiples from that result.
# this is not necessary if the lcm is above the limit. 
if lcm(mult1, mult2) > lim:
  finalAns = adder_prog(mult1, lim) + adder_prog(mult2, lim) 
else:
  finalAns = adder_prog(mult1, lim) + adder_prog(mult2, lim) - adder_prog(lcm(mult1, mult2), lim) 
print(finalAns)

