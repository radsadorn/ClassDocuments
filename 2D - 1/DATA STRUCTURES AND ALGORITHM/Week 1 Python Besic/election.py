print('*** Electrion ***')
n = int(input('Enter a number of voter(s) : '))

votes = [int(x) for x in input().split()]
candidate = 0
max_ = 0
for v in votes:
    if votes.count(v) > max_ and v > 0:
        max_ = votes.count(v)
        candidate = v

if candidate == 0:
    print('*** No Candidate Wins ***')
else:
    print(candidate)
