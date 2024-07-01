import Foundation

struct DatabaseUser {
    let userName: String
    let userIsPremium: Bool
    let order: Int
}

var allUsers: [DatabaseUser] = [
    DatabaseUser(userName:"sandy", userIsPremium: true, order: 10),
    DatabaseUser(userName:"arya", userIsPremium: true, order: 4),
    DatabaseUser(userName:"mahadev", userIsPremium: false, order: 3),
    DatabaseUser(userName:"Tulsi", userIsPremium: true, order: 6),
    DatabaseUser(userName:"anju", userIsPremium: false, order: 2),
    DatabaseUser(userName:"Gauri", userIsPremium: true, order: 9),
    DatabaseUser(userName:"Laxmi", userIsPremium: false, order: 1),
    DatabaseUser(userName:"Nikita", userIsPremium: false, order: 2)
]

print(allUsers)
print("==========================   Using Manually   ===================================")

var allPremiumUsers: [DatabaseUser] = []

for user in allUsers{
    if user.userIsPremium {
        allPremiumUsers.append(user)
        print()
    }
    
}
print(allPremiumUsers)

print("=======================  Using filter =====================================")

var allPremiumUsers2: [DatabaseUser] = allUsers.filter { user in
    if user.userIsPremium{
        return true
    }
    return false
}
print(allPremiumUsers2)

// OR
var allPremiumUsers3: [DatabaseUser] = allUsers.filter { user in user.userIsPremium }
print(allPremiumUsers3)


// OR
//var allPremiumUsers4: [DatabaseUser] = allUsers.filter { $0.userIsPremium }  // also work fine
var allPremiumUsers4: [DatabaseUser] = allUsers.filter ({ $0.userIsPremium })  // shorthand way $0,$1...
print(allPremiumUsers4)

print("=======================  Using sorted =====================================")

var OrderWiseUser: [DatabaseUser] = allUsers.sorted{user1, user2 in
    return user1.order>user2.order}
print(OrderWiseUser)

//OR
var OrderWiseUser2: [DatabaseUser] = allUsers.sorted(by: {$0.order > $1.order})
print(OrderWiseUser2)


print("=======================  Maping =====================================")
var mappingUserName: [String] = allUsers.map({$0.userName})
print(mappingUserName)
