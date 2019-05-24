#!/bin/zsh

p="../../PiscinePHP/d02/"

echo Exercice 00
echo You should see:
	$p/ex00/another_world.php | cat -e
	$p/ex00/another_world.php "" | cat -e
	echo Cette phrase contient des espaces et des tabulations$
	$p/ex00/another_world.php "Cette   phrase   contient des espaces et        des      tabulations" | cat -e
	echo "Ce param est traite$"
	$p/ex00/another_world.php "  Ce param   est        traite  " "mais pas celui   la" | cat -e

	echo "O k a l m$"
	$p/ex00/another_world.php " O          k               a           l              m    " "mais pas celui   la" | cat -e


echo "\n\n"

echo Exercice 01
echo You should see:
	$p/ex01/one_more_time.php | cat -e
	echo "Wrong Format$"
	$p/ex01/one_more_time.php "Mercreday 1stJuily 99"| cat -e
	echo "Wrong Format$"
	$p/ex01/one_more_time.php "Mercredi 1 July 1999"| cat -e
	echo "Wrong Format$"
	$p/ex01/one_more_time.php ""| cat -e
	echo "Wrong Format$"
	$p/ex01/one_more_time.php ""| cat -e
	echo "Wrong Format$"
	$p/ex01/one_more_time.php "Mardi 12 Novembre 2013 12 02:21" | cat -e
	echo "Wrong Format$"
	$p/ex01/one_more_time.php "Mardi 12 Novembre 213 12:02:21" | cat -e
	echo "Wrong Format$"
	$p/ex01/one_more_time.php "Mardi -1 Novembre 2013 12:02:21" | cat -e

	echo "1384254141$"
	$p/ex01/one_more_time.php "Mardi 12 Novembre 2013 12:02:21" | cat -e
	echo "1558167141$"
	$p/ex01/one_more_time.php "samedi 18 mai 2019 10:12:21" | cat -e

echo "\n\n"

echo Exercice 02
	$p/ex02/loupe.php | cat -e

	$p/ex02/loupe.php page1.html > myres1
	diff myres1 res_page1

	# $p/ex02/loupe.php page2.html > myres2
	# diff myres2 res_page2

	rm myres1 # myres2


echo "\n\n"

echo Exercice 03
	$p/ex03/who.php | cat -e > myres
	who | cat -e > res
	diff res myres
	rm res myres

echo Exercie 04
	$p/ex04/photos.php | cat -e
	$p/ex04/photos.php http://www.42.fr
	$p/ex04/photos.php http://www.disney.fr
	$p/ex04/photos.php https://www.disney.com
