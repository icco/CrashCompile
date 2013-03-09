# Signin Machine

In a parallel universe, the dojo signin machine keeps a combined log of all signins, sign outs and new members. Your job is to take this log and print the top 5 members who spend the most time at the dojo.

Format: When a new member signs up, the log will include a line with the following fields: ID, email, billing address, name

When a member signs in, the log will include a line like ID, , unix time

When a member signs out, the log will include a line like ID, , unix time

If a user forgets to sign out, and signs in again later, the log will reflect this.

Any of the fields in the log file may begin with a quote, in which case it continues until the next quote. The quotes are not part of the field content. A comma appearing within quotes does not count as a field separator.

User signups are guaranteed to appear in the log before the user signs in or out. Signins and sign outs, however, are not guaranteed to be in any particular order, since users are responsible for signing themselves in or out, and occasionally make mistakes. If a user forgets to sign out, and then signs in again, your program should assume that the user's previous visit was 2 hours. If a user signs out twice, your program should ignore the second sign-out.

Occasionally, the signin machine may crash or lose power while writing the log. If this happens, a partial log entry may be written. Your program is not required to extract any data from partial log entries, but it should not crash if it encounters them. The signing machine writes a newline to the log when it starts, so each partial log entry is guaranteed to end with a newline.

The output should be the top 5 users who have spent the most time at the dojo, in descending order, in the following format:

Name1: seconds Name2: seconds Name3: seconds Name4: seconds Name5: seconds

If there are less than 5 users in the log, your program should print all of them. If two users are tied for a particular position, they should be listed in alphabetical order by name. If there are multiple users tied for the 5th place, only the first user alphabetically should be printed.

## Sample Input

```
0,a@foo.com,"1 Foo Dr, CA",Alice
1,b@foo.com,"12 Bar Dr, BZ",Bob
2,b@foo.com,"12 Bar Dr, BZ",Charlie
3,b@foo.com,"12 Bar Dr, BZ",Bar
4,b@foo.com,"12 Bar Dr, BZ",Baz
5,b@foo.com,"12 Bar Dr, BZ",Quux
6,b@foo.com,"12 Bar Dr, BZ",Foo
7,b@foo.com,"12 Bar Dr, BZ",Aob
0,IN,0
0,OUT,60
1,IN,90
1,OUT,120
```

## Sample Output

```
Alice: 60
Bob: 30
Aob: 0
Bar: 0
Baz: 0
```
