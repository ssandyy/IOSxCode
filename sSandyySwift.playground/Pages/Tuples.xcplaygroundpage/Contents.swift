import Foundation


// multiple type of data in single function return

var userName = "Sandy"
var userIsPremium: Bool = false
var userIsNew: Bool = true

func getUserName() -> String {
    userName
}
getUserName()


func checkNewUser() -> Bool {
    return userIsPremium
}
checkNewUser()


// tuple can combine multiple type of data in one
func checkNewUserWithPremiumAndName()-> (String, Bool, Bool) {
    return (userName, userIsPremium, userIsNew)
}
checkNewUserWithPremiumAndName()
