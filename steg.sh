echo " Enter your choice What to do "e
echo "Encrypt"
echo "Decrypt"
echo "Lets begin Enter your choice"
read -p "Choice:--->>>" Choice
case $Choice in

	  Encrypt)
		      echo "Enter the Location"
		      read -p "Location--->>>" Location 
		      cd $Location
		      ls
		      echo "Enter the Cover image File_Name"
		      read -p "Cower_Image_File_Name--->>>" Cower_Image_File_Name
		      echo "Enter Secret File Name"
		      read -p "Secret_File_Name--->>>" Secret_File_Name
		      echo "Enter the Secret Message Here"
		      read -p "Secret Message " Secret_Message 
		      echo "$Secret_Message" >> $Secret_File_Name
		      steghide --embed -ef $Secret_File_Name -cf $Cower_Image_File_Name 




		          ;;

			    Decrypt)
				      echo "Let's Decrypt"
				      echo "Enter the Encrypted File To Decrypt"
				      read -p "Encrypted_File_Name" Encrypted_File_Name
				      steghide --extract -sf $Encrypted_File_Name 
					    ;;

					      *)
						          echo -n "unknown"
							      ;;
					      esac

