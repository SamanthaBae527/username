

#! /bin/bash
# username.sh
# author
echo "Enter a username: "
echo "It must be 3-12 digits, must start with a lowercase, and you can only use digits, lowercase letters, the underscore character."
read USERNAME
a = 12
hehe=true
check = ${#USERNAME}
while [ "$hehe" == true  ]
do
	if  echo $USERNAME | egrep "^[a-z]"
	then
		echo "The username starts with a lowercase."
		if  echo $USERNAME | grep -v "[A-Z]"
	        then
        	        echo "The username consists of only lowercase letters, digits, the underscore character."
			if [ $check -ge  3 ] && [ $check -le 12 ]
       			then
                		echo "The username is between 3 to 12 characters."
				hehe = false
        		else
                		echo "The username is not in between 3 to 12 characters."
        		fi 
        	else
                	echo "The username does not match the conditions."
       		 fi
	
	else
		echo "The username does not start with a lowercase." 
	fi
done
