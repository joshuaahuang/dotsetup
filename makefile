default:
	SHELL=sh ./dotbot/bin/dotbot -c install.conf.yaml

git-submodule:
	git submodule update --init --recursive .
