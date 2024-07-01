import Foundation

func Hello(){
    print("Hello this function in swift xCode..!")
}
Hello()


var HelloVar: String {
    return "Hello this is calculated variables..!";
}
print(HelloVar)


print("======================================")
checkEmployee()
func checkEmployee() {
    var isEmployeePunchIn: Bool = true
    var isEmployeeCompletedTask: Bool = true
    employeeDayPerformance(checkIn:isEmployeePunchIn, taskComplition: isEmployeeCompletedTask)
}

func employeeDayPerformance(checkIn:Bool, taskComplition:Bool){
    if checkIn && taskComplition {
        print("Employee has good skill set..!")
    }else{
        print("Employee is lacking somewhere..!")
    }
}


print("================ with return ======================")
checkEmployee1()
func checkEmployee1() {
    var isEmployeePunchIn: Bool = true
    var isEmployeeCompletedTask: Bool = false
    let status = employeeDayPerformance1(checkIn:isEmployeePunchIn, taskComplition: isEmployeeCompletedTask)
    
    if status == true {
        print("Employee has good skill set..!")
    }else{
        print("Employee is lacking somewhere..!")
    }
}

func employeeDayPerformance1(checkIn:Bool, taskComplition:Bool) -> Bool{
    if checkIn && taskComplition {
        return true
    }else{
        return false
    }
}



print("================With guard ======================")
checkEmployee2()
func checkEmployee2() {
    var isEmployeePunchIn: Bool = true
    var isEmployeeCompletedTask: Bool = false
    let status = employeeDayPerformance2(checkIn:isEmployeePunchIn, taskComplition: isEmployeeCompletedTask)
    
    guard status == true else{
        print("Employee is lacking somewhere..!")
        return
    }
        print("Employee has good skill set..!")
}

func employeeDayPerformance2(checkIn:Bool, taskComplition:Bool) -> Bool{
    if checkIn && taskComplition {
        return true
    }else{
        return false
    }
}



