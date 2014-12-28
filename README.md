# nonblocking

cat stdin to stdout nonblockingly until all data waiting has been read.
return true (0) if nothing was read (input is flushed) else false (1).

## Why?

Because I needed it and `read -t1` on shell level did wait too long.
