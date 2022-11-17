A simple tool written in Haskell to remove trailing whitespaces from text.

It can be invoked via the command line with
`./wstrim < inFile > outFile`
or in Vim by first selecting text in visual mode, and then typing
`:!./wstrim`

## For example..
```
---:) echo "Hi       " > test
---:) ./wstrim < test > test_out
---:) ls -n --time-style=+%H:%M test*
-rw-r--r-- 1 1000 1000 10 19:39 test
-rw-r--r-- 1 1000 1000  3 19:39 test_out
```

## Why?

Because learning Haskell is enjoyable and trailing whitespace must die.
