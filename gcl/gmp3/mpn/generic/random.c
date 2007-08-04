/* mpn_random -- Generate random numbers.

Copyright 2001 Free Software Foundation, Inc.

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
MA 02111-1307, USA. */

#include "gmp.h"
#include "gmp-impl.h"

void
mpn_random (mp_ptr ptr, mp_size_t size)
{
  gmp_randstate_ptr  rands;

  /* FIXME: Is size==0 supposed to be allowed? */
  ASSERT (size >= 0);

  if (size == 0)
    return;

  rands = RANDS;
  _gmp_rand (ptr, rands, size * BITS_PER_MP_LIMB);

  /* Make sure the most significant limb is non-zero.  */
  while (ptr[size-1] == 0)
    _gmp_rand (&ptr[size-1], rands, BITS_PER_MP_LIMB);
}