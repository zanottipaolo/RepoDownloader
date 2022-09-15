for repo in `cat list_repo.txt`; 
do 
    tmp=${repo:32}
    folder=${tmp%.*}
    mkdir -p "$folder"
    cd $folder
    git clone --bare $repo .git
    git config --unset core.bare
    git reset --hard
    cd ..;
done