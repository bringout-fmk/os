/* 
 * This file is part of the bring.out FMK, a free and open source 
 * accounting software suite,
 * Copyright (c) 1996-2011 by bring.out doo Sarajevo.
 * It is licensed to you under the Common Public Attribution License
 * version 1.0, the full text of which (including FMK specific Exhibits)
 * is available in the file LICENSE_CPAL_bring.out_FMK.md located at the 
 * root directory of this source code archive.
 * By using this software, you agree to be bound by its terms.
 */


#include "os.ch"

/*! \defgroup ini Parametri rada programa - fmk.ini
 *  @{
 *  @}
 */
 
/*! \defgroup params Parametri rada programa - *param.dbf
 *  @{
 *  @}
 */

/*! \defgroup TblZnacenjePolja Tabele - znacenje pojedinih polja
 *  @{
 *  @}
 */

/*! \file fmk/os/main/1g/e.prg
 *  \brief
 */


#ifndef CPP
EXTERNAL RIGHT,LEFT,FIELDPOS
#endif

#ifdef LIB

/*! \fn Main(cKorisn,cSifra,p3,p4,p5,p6,p7)
 *  \brief
 */

function Main(cKorisn,cSifra,p3,p4,p5,p6,p7)
*{
	MainOs(cKorisn,cSifra,p3,p4,p5,p6,p7)
return
*}

#endif



/*! \fn MainOs(cKorisn,cSifra,p3,p4,p5,p6,p7)
 *  \brief
 */

function MainOs(cKorisn,cSifra,p3,p4,p5,p6,p7)
*{
local oOs

oOs:=TOsModNew()
cModul:="OS"

PUBLIC goModul

goModul:=oOs
oOs:init(NIL, cModul, D_OS_VERZIJA, D_OS_PERIOD , cKorisn, cSifra, p3,p4,p5,p6,p7)

oOs:run()

return 
*}

