cd ~/dotfiles/envvars

for f in *
do
   . "./$f"
done

cd ~

stty stop ^J
