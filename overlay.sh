echo package category
read category
echo package name
read name
doas mkdir /var/db/repos/gentoo/$category/
doas mkdir /var/db/repos/gentoo/$category/$name/
ls -t1 /home/pablo/Downloads | head -n 1 | xargs cp -t /home/pablo
x=$(ls -t1 /home/pablo/Downloads | head -n 1)
doas mv /home/pablo/Downloads/$x /var/db/repos/gentoo/$category/$name
sleep 2
doas ebuild /var/db/repos/gentoo/$category/$name/$x digest
doas emerge -av --autounmask $category/$name -q
doas etc-update
doas emerge -av --autounmask $category/$name -q
