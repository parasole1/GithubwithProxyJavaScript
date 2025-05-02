#!/bin/bash

echo "Starting leak_token.sh execution..."
bash ./secret_leak.sh  # Call the actual script
bash ./statuscode.sh # Call the actual script
bash ./push.sh  # Call the actual script
bash ./mimetype.sh  # Call the actual script
echo "Execution completed."
