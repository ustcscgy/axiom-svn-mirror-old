/* mpz_congruent_ui_p -- test congruence of mpz and ulong */

/*
Copyright 2000, 2001 Free Software Foundation, Inc.

This file is part of the GNU MP Library.

The GNU MP Library is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation; either version 2.1 of the License, or (at your
option) any later version.

The GNU MP Library is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
License for more details.

You should have received a copy of the GNU Lesser General Public License
along with the GNU MP Library; see the file COPYING.LIB.  If not, write to
the Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
MA 02111-1307, USA.
*/

#include "gmp.h"
#include "gmp-impl.h"
#include "longlong.h"


/* There's some explicit checks for c<d since it seems reasonably likely an
   application might use that in a test.

   Hopefully the compiler can generate something good for r==(c%d), though
   if modexact is being used exclusively then that's not reached.  */

int
mpz_congruent_ui_p (mpz_srcptr a, unsigned long cu, unsigned long du)
{
  mp_srcptr  ap;
  mp_size_t  asize;
  mp_limb_t  c, d, r;

  if (du == 0) 
    DIVIDE_BY_ZERO;

  asize = SIZ(a);
  if (asize == 0)
    {
      if (cu < du)
        return cu == 0;
      else
        return (cu % du) == 0;
    }

  /* NEG_MOD works on limbs, so convert ulong to limb */
  c = cu;
  d = du;

  if (asize < 0)
    {
      asize = -asize;
      NEG_MOD (c, c, d);
    }

  ap = PTR (a);

  if (BELOW_THRESHOLD (asize, MODEXACT_1_ODD_THRESHOLD))
    {
      r = mpn_mod_1 (ap, asize, d);
      if (c < d)
        return r == c;
      else
        return r == (c % d);
    }

  if ((d & 1) == 0)
    {
      /* Strip low zero bits to get odd d required by modexact.  If
         d==e*2^n then a==c mod d if and only if both a==c mod 2^n
         and a==c mod e.  */

      unsigned  twos;

      if ((ap[0]-c) & LOW_ZEROS_MASK (d))
        return 0;

      count_trailing_zeros (twos, d);
      d >>= twos;
    }

  r = mpn_modexact_1c_odd (ap, asize, d, c);
  return r == 0 || r == d;
}