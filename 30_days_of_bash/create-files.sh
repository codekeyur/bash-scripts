#!/bin/bash

COUNT=1
while [ $COUNT -le 30 ]
do
  touch day$COUNT.sh | echo "#!/bin/bash" > day$COUNT.sh | chmod 700 day$COUNT.sh
  ((COUNT=COUNT+1))
done
ls -la | grep day
