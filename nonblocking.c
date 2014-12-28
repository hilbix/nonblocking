/*
 * This Works is placed under the terms of the Copyright Less License,
 * see file COPYRIGHT.CLL.  USE AT OWN RISK, ABSOLUTELY NO WARRANTY.
 */

#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

void inline IGUR() {}

int
main(int argc, char **argv)
{
  char	buf[10*BUFSIZ];
  int	got, fl, have;

  fl	= fcntl(0, F_GETFL);
  fcntl(0, F_SETFL, fl|O_NONBLOCK);
  have = 0;
  while ((got=read(0, buf, sizeof buf))>0)
    {
      IGUR(write(1, buf, got));
      have = 1;
    }
  fcntl(0, F_SETFL, fl);
  return have;
}

