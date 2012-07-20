#!/usr/bin/perl
use Cwd;

my $currentDir = $ENV{PWD};

system("rm $ENV{HOME}/.vimrc");
system("rm -r -f $ENV{HOME}/.vim");

chdir($ENV{HOME});
system("ln -s $currentDir/vim .vim");

system("cp $currentDir/vimrc .vimrc");

chdir($currentDir);

