echo "
      \_/      No disassemble!
     (* *)   /
    __)#(__
   ( )...( )(_)
   || |_| ||//
>==() | | ()/
    _(___)_
   [-]   [-]
"
read -p "Johnny-Five: Hello, "$(whoami)". Are you sure you want to continue? (yes/no) " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
  echo "
    \_\    Let's go!
   (_**) /
  __) #_
 ( )...()
 || | |I|
 || | |()__/
 /\(___)
_-""""""""-_
-,,,,,,,,--``
"
else
  exit 0
fi
