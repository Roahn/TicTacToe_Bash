#!/lbin/sh
arr=('11' '12' '13' '14' '15' '16' '17' '18' '19' '20' '21') 


#echo "${arr[@]}"

player1=$1
player2=$2
echo "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo "|||||||||||||||||||||||||||||||||!!!!!!!!!!!!Welcome!!!!!!!!!!!!!!!!!!|||||||||||||||||||||||||||||||||"

echo "|||||||||||||||||||||||||||||||||||||||||Let start Tic Tac Toe|||||||||||||||||||||||||||||||||||||||||"

echo "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo -n ""
echo "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
echo "|||||||||||||||||||||||||||||||||Player 1 is $player2 and marker is 99||||||||||||||||||||||||||||||||||||"

echo "|||||||||||||||||||||||||||||||||Player 2 is $player1 and marker is 66||||||||||||||||||||||||||||||||||||"

echo "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
n=0
id=99
printmatrix()
{

echo "|-----|-----|-----|"

echo "| ${arr[7]}  | ${arr[8]}  |  ${arr[9]} |"

echo "|-----|-----|-----|"


echo "| ${arr[4]}  | ${arr[5]}  |  ${arr[6]} |"

echo "|-----|-----|-----|"



echo "| ${arr[1]}  | ${arr[2]}  | ${arr[3]}  |"


echo "|-----|-----|-----|"
}

#printmatrix 

while [ $n -ne 9  ]
do


     
        echo -n " "
        echo -n " "

    

     
################################################
    

    if [ $id -eq  100 ]
    then
       
        id=$(($id-1))
        value=66
        echo "This turn is of :$player1 --66"
    else
        
        id=$(($id+1))
        value=99
         echo "This turn is of :$player2 --99"

    fi
       printmatrix 
    
   
    
   


    read choice

    case $choice in
        1 )
            
            arr[1]=$value
            
             n=$((n+1))

           ;;
        2 )
            
            arr[2]=$value
            
             n=$((n+1))

             ;; 
            
        3 )
           
            arr[3]=$value

            n=$((n+1))
            ;; 
        4 )
            
            
            n=$((n+1))
            arr[4]=$value

             ;; 
        5 )
            
            n=$((n+1)) 
            arr[5]=$value
            ;; 
        6 )
            
            n=$((n+1))
            arr[6]=$value

            ;; 
        7 )
            
            arr[7]=$value
            
            n=$((n+1))
            ;; 
        8 )
            
            
            n=$((n+1)) 
            arr[8]=$value

            ;; 
        9 )
            
            arr[9]=$value
            
            n=$((n+1))

            ;; 
        * )
            echo "Enter correct input "
            echo "Enter correct or leave the match "
            if [$id -eq   100 ]
            then
                id=$(($id-1))
                value=66
                
            else
                
                id=$(($id+1))
                value=99
                

            fi
        
  
    
    

    esac
    
    if [  ${arr[1]} -eq ${arr[2]} ] && [ ${arr[2]} -eq  ${arr[3]} ]
    then
        if [ $value -eq 66 ]
        then 
            echo "$player1 1 Won the Match"
            break
            
        else
            echo "$player2 1 Won the Match"
            break
            
        fi
    fi
    if  [ ${arr[4]} -eq ${arr[5]} ] && [ ${arr[5]} -eq  ${arr[6]} ]
 
    then
        if [ $value -eq 66 ]
        then 
            echo "$player1 1 Won the Match"
            break
            
        else
            echo "$player2 1 Won the Match"
            break
            
        fi
    fi
    if  [ ${arr[7]} -eq ${arr[8]} ] && [ ${arr[8]} -eq  ${arr[9]} ]
 
    then
        if [ $value -eq 66 ]
        then 
            echo "$player1 1 Won the Match"
            break
            
        else
            echo "$player2 1 Won the Match"
            break
            
        fi
    fi
    if  [ ${arr[1]} -eq ${arr[4]} ] && [ ${arr[4]} -eq  ${arr[7]} ]
 
    then
        if [ $value -eq 66 ]
        then 
            echo "$player1 1 Won the Match"
            break
            
        else
            echo "$player2 1 Won the Match"
            break
            
        fi
    fi
    if  [ ${arr[2]} -eq ${arr[5]} ] && [ ${arr[8]} -eq  ${arr[5]} ]
 
    then
        if [ $value -eq 66 ]
        then 
            echo "$player1 1 Won the Match"
            break
            
        else
            echo "$player2 1 Won the Match"
            break
            
        fi
    fi
    if  [ ${arr[3]} -eq ${arr[6]} ] && [ ${arr[6]} -eq  ${arr[9]} ]
 
    then
        if [ $value -eq 66 ]
        then 
            echo "$player1 1 Won the Match"
            break
            
        else
            echo "$player2 1 Won the Match"
            break
            
        fi
    fi
    if  [ ${arr[1]} -eq ${arr[5]} ] && [ ${arr[5]} -eq  ${arr[9]} ]
    
        then
            if [ $value -eq 66 ]
            then 
                echo "$player1 1 Won the Match"
                break
                
            else
                echo "$player2 1 Won the Match"
                break
                
            fi
        fi

     if  [ ${arr[7]} -eq ${arr[5]} ] && [ ${arr[5]} -eq  ${arr[3]} ]
    
        then
            if [ $value -eq 66 ]
            then 
                echo "$player1 1 Won the Match"
                break
                
            else
                echo "$player2 1 Won the Match"
                break
                
            fi
        fi



done
printmatrix 