clear
echo -e "
	    #####
           #     #   \e[3;34m BRUTE FORCE\e[0m
           #	     \e[3;35m ATTACK\e[0m
          #########  \e[3;31m TOOL\e[0m
          #### ####
          ###   ###   User: admin
          #########   Password: admin

               \e[35m [\e[3;31m By d4rk.py\e[35m ]

	  \e[34m --------------------------\e[0m
	  \e[3;36m TikTok: d4rk.py
	  \e[3;32m Github: d4rk0101
	  \e[34m --------------------------\e[0m
\e[3;35m
           01 decrypt hash md5
           02 decrypt hash sha1
           03 bruteforce facebook
           04 bruteforce instagram(ighack)
           05 bruteforce twitter(tweetshell - root)
          \e[3;31m enter to exit\e[3;36m
"
read -p "[ Choose ] > " c

case $c in
	01 | 1)
	cd $HOME
	cd $HOME/bat/hash
	python md5.py
	;;
	02 | 2)
	cd $HOME
	cd $HOME/bat/hash
	python sha1.py
	;;
	03 | 3)
	python fb.py
	;;
	04 | 4)
	cd $HOME
	cd $HOME/ighack
	bash ighack.sh
	;;
	05 | 5)
	cd $HOME
	cd $HOME/tweetshell
	bash tweetshell.sh
	;;
	"")
	echo -e "\n\e[3;31m[ thanks for using the tool, bye ]\e[0m"
	exit
	;;
esac
