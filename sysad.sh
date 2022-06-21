#! /usr/bin/bash
mkdir Headquater
cd Headquater
mkdir Branch1
cd ..
sudo useradd CEO
sudo passwd CEO

sudo useradd BranchManager
sudo passwd BranchManager

echo >> .bash_profile
alias genUser="x"
x(){

cd Branch1

if [$# -eq 0]
then 
 echo enter the name of file
 read file_name
else
touch $1
fi 

touch Branch_Current_Balance.txt
touch Branch_Transaction_History.txt

cd file_name
echo enter your name
read name_holder
sudo useradd $name_holder
sudo passwd $name_holder

touch Current_Balance.txt
touch Transaction_History.txt
500 >> Current_Balance.txt
Opening balance=500 >> Transaction_History.txt
cd ..
cd ..
}







alias permit="y"
y(){
sudo chown CEO Headquater 
sudo chmod o-wrx Headquater
sudo chmod g-wrx Headquater
cd Branch1
sudo chown BranchManager Branch1
sudo chmod o-wrx Branch1
sudo chmod g-wrx Branch1
echo enter the holders name
read name
cd $name
sudo chown BranchManager Transaction_History.txt
sudo chmod o-xw Current_Balance.txt
sudo chmod o-xw  Transaction_History.txt
}




alias updateBranch="z"
z(){
echo enter the name of branch
read branch_name
cd branch_name
echo enter the current amount
read amount
"current value in  $amount" >> Branch_Current_Balance.txt
echo enter the transaction detail 
read detail
"Transaction detail : $detail" >> Branch_Transaction_History.txt

}





alias allotinterest="v"
v(){
echo enter the no of branch 
read no_branch

for f in Headquater
do 
cd $f

echo enter the id in $f
read id_

while read id branch member type;
do
if [$id_ == $id ]
 then 
  name=type
fi  
done < "User_Accounts.txt "

while read type interest;
do 
if [$type == $name ]
then interest_=interest
fi
done < "Daily_Interest_Rates.txt "
"interest added $interest" >> Transaction_History.txt
while read deatail amount ;
do
an=$((($interest_*amount)/100))
"current amount $an">Current_Balance.txt
done < "Current_Balance.txt"

done 
cd ..

}






alias makeTransaction="ab"
ab(){

while read deatail amount ;
do
if [amount>0]
then 
echo enter the amount to be reduced
read amount_
"amount withdrawn $amount_" >> Transaction_History.txt
"current amount $an-$amount">Current_Balance.txt
done < "Current_Balance.txt"

}
