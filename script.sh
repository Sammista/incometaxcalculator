calculate_20percenttaxdue()
{
taxr=20
taxableat20="$(($salary-12570))"   
echo $taxableat20 "is taxable at standard rate"
taxat20="$(($taxableat20*$taxr/100))"
echo $taxat20 "is due at standard rate"
}

calculate_40percenttaxdue()
{
taxr=40
taxableat40="$(($salary-50270))"   
echo $taxableat40 "is taxable at higher rate"
taxat40="$(($taxableat40*$taxr/100))"
echo $taxat40 "is due at higher rate"
}

calculate_45percenttaxdue()
{
taxr=45
taxableat45="$(($salary-125140))"   
echo $taxableat40 "is taxable at higher rate"
taxat45="$(($taxableat45*$taxr/100))"
echo $taxat40 "is due at higher rate"
}
taxr=0
calculatetaxdue()
{
total="$(($taxat20+$taxat40+$taxat45))"
echo $total "is your total amount of tax due"
}
echo enter salary 
read salary
if [ $salary -le 12570 ]; then 
taxableat20=0
taxat20=0
taxableat40=0
taxat40=0
taxat45=0
echo "you have no tax to pay, lucky you"
elif [ $salary -ge 12571 ] && [ $salary -le 50270 ]; then
calculate_20percenttaxdue

elif [ $salary -ge 50271 ] && [ $salary -le 125140 ]; then
calculate_20percenttaxdue
calculate_40percenttaxdue

elif [ $salary -gt 125140 ]; then
calculate_20percenttaxdue
calculate_40percenttaxdue
calculate_45percenttaxdue
fi 

calculatetaxdue
echo "save results y or n?"
read saveresults

if [ $saveresults = "y" ]; then
echo "you earned $salary, your tax breakdown is as follows tax due at standard rate = $taxat20, tax due at higher rate = $taxat40, tax due at additional rate = $taxat45. Your total tax due is $total "> report.txt
fi
