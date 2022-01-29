for file in *
do
    git add $file
    git commit -m $file
    git push
done