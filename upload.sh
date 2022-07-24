#/usr/bin/zsh

tmp_dir=$(mktemp -d)
rsync -rv --exclude=.git . $tmp_dir
cd $tmp_dir
/root/bin/upx sync $tmp_dir --delete
