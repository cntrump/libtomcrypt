/* LibTomCrypt, modular cryptographic library -- Tom St Denis */
/* SPDX-License-Identifier: Unlicense */

#ifndef TOMCRYPT_H_
#define TOMCRYPT_H_
#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stddef.h>
#include <time.h>
#include <ctype.h>
#include <limits.h>

/* use configuration data */
#include "tomcrypt_custom.h"

/* version */
#define CRYPT   0x0118
#define SCRYPT  "1.18.2-develop"

#include "tomcrypt_cfg.h"
#include "tomcrypt_macros.h"
#include "tomcrypt_cipher.h"
#include "tomcrypt_hash.h"
#include "tomcrypt_mac.h"
#include "tomcrypt_prng.h"
#include "tomcrypt_pk.h"
#include "tomcrypt_math.h"
#include "tomcrypt_misc.h"
#include "tomcrypt_argchk.h"
#include "tomcrypt_pkcs.h"

#endif /* TOMCRYPT_H_ */

