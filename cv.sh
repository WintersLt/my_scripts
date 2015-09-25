
echo "1. mock_twitter"
echo "2. LIB_SYS"
echo "Enter a view num :"

read in

if [ $in -eq 1 ] 
then
	export CODE_ROOT_DIR='/home/bekaar/views/my_projects/mock_twitter'
	cd $CODE_ROOT_DIR
	export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u-MOCK_TWITTER-\[\033[01;34m\] \W \$\[\033[00m\]"
	echo $PWD;ls
fi

if [ $in -eq 2 ] 
then
	export CODE_ROOT_DIR='/home/bekaar/views/my_projects/lib_sys/lib_sys'
	cd $CODE_ROOT_DIR
	export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u-LIB_SYS-\[\033[01;34m\] \W \$\[\033[00m\]"
	echo $PWD;ls
fi
