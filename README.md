# ob
Материалы для учебника по Основному богословию 

Этот проект предназначен для работы над материалами будущего учебника на основе курса лекций для семинарии (КДС).

Основу многих глав составляет материал из книги Эванса и Мэниса 
"Философия религии. Разговор о вере".

Ведется работа над добавлением учебных диалогов.

## Книжка собирается следующей командой:

pandoc --latex-engine=xelatex --variable mainfont="DejaVu Sans"  --filter pandoc-citeproc --bibliography ../references.bib --csl ../csl/mygost.csl -H ../preamble.tex $(cat ../cont.txt) -S -N -o -o file_name.pdf

Мобильная версия:

'pandoc --latex-engine=xelatex --variable mainfont="DejaVu Sans"  --filter pandoc-citeproc --bibliography ../references.bib --csl ../csl/mygost.csl -H ../preamble_m.tex $(cat ../cont.txt) -S -N -o '

## скрипт для чистки лишних md файлов:

Создаем временную ветку prerelease, переходим, в директории input выполняем:

ls -1 | sort ../cont.txt ../cont.txt - | uniq -u | xargs rm



