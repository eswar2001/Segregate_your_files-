#! /bin/sh
for i in *; do
    dir=$(file "$i" | awk -F ': |, ' '{print $2}');
    if [[ "$i" != "directory" ]]; then
        mkdir -p "${dir%% *}"
        mv "$i" "${dir%% *}/$i"
    fi
done
echo "Cheers the task is done.Happy Coding"
