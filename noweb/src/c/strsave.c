#line 6 "strsave.nw"
static char rcsid[] = "$Id: strsave.nw,v 2.11 2001/03/28 18:44:46 nr Exp nr $";
static char rcsname[] = "$Name: v2_10a $";
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "strsave.h"
#include "errors.h"

char *strsave (char *s) {
    char *t = malloc (strlen(s)+1);
    checkptr(t);
    strcpy(t,s);
    return t;
}
