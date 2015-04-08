if [ ! -d users/alice ]
then
	mkdir -p users/alice
fi

if [ ! -d users/bob ]
then
	mkdir users/bob
fi

alias echo_current_owner='git config --global user.name; git config --global user.email;'

ROOT=`pwd`
alias go_to_alice='cd $ROOT/users/alice/; git config --global user.name "Alice"; git config --global user.email alice@example.com'
alias go_to_bob='cd $ROOT/users/bob/; git config --global user.name "Bob"; git config --global user.email bob@example.com'
alias reset_user='cd $ROOT; sh reset.sh'
