

# CONSTANTS FOR THE PROGRAM
IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=100
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20


# VARIABLES
totalEmpHrs=0
totalWorkingDays=0

declare -A dailWage

function getWorkHrs() {
  local empCheck=$1
  case $empCheck in
       $IS_FULL_TIME)
          empHrs=8
             ;;
       $IS_PART_TIME)
          empHrs=6
             ;;
       *)
          empHrs=0
             ;;
    esac
    echo $empHrs
}

function getEmpWage() {
        local empHr=$1
        echo $(($empHr*$EMP_RATE_PER_HR))
}
echo "Welcome to Employee Wage Program"
echo "Dayno           DailyWage       TotalWage"

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH &&
    $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
   ((totalWorkingDays++))
   empCheck=$((RANDOM%3))
   empHrs="$( getWorkHrs $empCheck )"
   totalEmpHrs=$(($totalEmpHrs+$empHrs))
   dailWage["Day "$totalWorkingDays]="$( getEmpWage $empHrs )"
done

totalSalery=$(($totalEmpHrs*$EMP_RATE_PER_HR))
echo ${dailWage[@]}
echo ${!dailWage[@]}
