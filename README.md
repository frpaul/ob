# ob
Материалы для учебника по Основному богословию 

Этот проект предназначен для работы над материалами будущего учебника на основе курса лекций для семинарии (КДС).

Основу многих глав составляет материал из книги Эванса и Мэниса 
"Философия религии. Разговор о вере".

Ведется работа над добавлением учебных диалогов.

## Книжка собирается следующей командой:

pandoc --latex-engine=xelatex --variable mainfont="DejaVu Sans"  --filter pandoc-citeproc --bibliography ../references.bib --csl ../csl/mygost.csl -H ../preamble.tex $(cat ../cont.txt) -S -N -o file_name.pdf

Мобильная версия:

... --filter pandoc-citeproc --bibliography ../references.bib file.md -o file.pdf
=======
'pandoc --latex-engine=xelatex --variable mainfont="DejaVu Sans"  --filter pandoc-citeproc --bibliography ../references.bib --csl ../csl/mygost.csl -H ../preamble_m.tex $(cat ../cont.txt) -S -N -o '




