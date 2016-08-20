#!/bin/sh

for ORIGINAL_TEXI in $(ls original_texis/*.texi)
do
    TEXI=$(basename ${ORIGINAL_TEXI})
    PO183=../gettext-0.18.3-doc/${TEXI}.po
    POT1981=./${TEXI}.pot
    PO1981=./${TEXI}.po
    if [ -f ${PO183} ]
    then
	po4a-gettextize -M utf8 -f texinfo -m ${ORIGINAL_TEXI} -p ${POT1981}
	msgmerge --previous -C ${PO183} /dev/null ${POT1981} >${PO1981}
	rm -f ${POT1981}
    fi
done
