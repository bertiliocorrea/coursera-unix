correct_value=$(ls|wc -l)
guess=0
tries=0

while [[ $tries -lt 10 ]]
do
  echo "How many files are in this directory?"
  read guess
  if [[ $guess -gt $correct_value ]]
  then
    echo "too high"
  elif [[ $guess -lt $correct_value ]]
  then
    echo "too low"
  else
    echo "congrats that's it"
    let tries=10
  fi
  let tries=$tries+1
done
