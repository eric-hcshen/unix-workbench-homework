count=$(ls -l | grep -v ^total | wc -l)
echo "Guess number of file in current foldor and then press Enter"
read guess
while [[ $guess -ne $count ]]
do
        if  [[ $guess -gt $count ]]
        then
                echo "Your guess is much bigger"
        else
                echo "Your guess is much smaller"
        fi
        echo "Guess number of file in current foldor and then press Enter"
        read guess
done
echo "Your guess is right"
