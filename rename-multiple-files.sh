for f in $1*; 
do 
    #DIR="$(dirname "${f}")" 
    mv "$f" "${f/$2/$3}"
done

#find -name $1* | sed "p;s/$2/$3/" | xargs -d '\n' -n 2 mv