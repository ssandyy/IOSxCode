import Foundation

//DataType+?  --> String?  or Int? Or Bool? ..


// Bool -> means There is always a value and it is a Boolean
let myBool: Bool = false


// Bool?  -> it means, we dont know there will be value or not, but if yes then that should be 'Bool' type varible
let myOptionalBool: Bool? = true

//=========================================================================================================================
/*Question: How to UnWrap Optional ?
 Answer: there are 3 approch to unwrap Optional
            1. we can use 'nil' call and give it a default value
            2. use 'if-let' then enter the clouser
            3. using 'guard' statement and return if there is no-value
 */
//=========================================================================================================================


//examples below:-

var boolValue: Bool? = nil
print(boolValue)  // nil

boolValue = false
print(boolValue)  //Optional(false)

boolValue = nil
print(boolValue)  //nil


//means check if there is any value in myOptionalBool the asign the same otherwise print the default value/message
let checkValueOtherwise = myOptionalBool ?? false
print(checkValueOtherwise)


//=========================================================================================================================
print("=================================== bigneer Level =======================================================")

var userIsPremium: Bool? = nil
print("userIsPremium -->",userIsPremium)

func checkIfUserIsPremium() -> Bool? {
    userIsPremium
}
print("checkIfUserIsPremium --> ",checkIfUserIsPremium())


func checkIfUserIsPremium2()-> Bool {
    userIsPremium ?? false  // if useIsPremium is 'nil' then take default value 'false'
}
print("checkIfUserIsPremium2  --> ",checkIfUserIsPremium2())


//If-let
let isPremium = checkIfUserIsPremium2()

func checkIfUserIsPremium3() -> Bool {
    if let newValue = userIsPremium{  // when if- let is successfull then enter the clouser
        newValue
    }
    return false
}
print("checkIfUserIsPremium3  --> ",checkIfUserIsPremium3())


func checkIfUserIsPremium4() -> Bool {
    if let userIsPremium{
        userIsPremium
    }
    return false
}
print("checkIfUserIsPremium4  --> ",checkIfUserIsPremium4())

func checkIfUserIsPremium5() -> Bool {
    guard let newValue = userIsPremium else{
        return false
    }
    return newValue
}
print("checkIfUserIsPremium5  --> ",checkIfUserIsPremium5())


//=========================================================================================================================
print("=================================== Mid Level =======================================================")


