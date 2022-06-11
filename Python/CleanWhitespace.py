# This script is to clean a specific google sheet/excel document for better ease of reading after entering data 
# by removing extra whitespace from external sources

# may get extended later to fully automate a specific tab
# currently used in IDLE

import re
data= " "
while data!="done":
    data = input("Input: ")
    data = re.sub('"',"",data)
    data = re.sub('^\s+|\s+$',"",data)
    data= " ".join(re.split("\s+",data))
    print("Output: \n"+data)
