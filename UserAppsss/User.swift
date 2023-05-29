//
//  User.swift
//  UserAppsss
//
//  Created by Serj on 29.05.2023.
//

struct User: Equatable {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    static func getUser() -> [User] {
        var users = [User]()
        while users.count < UserStore.shared.names.count{

        let user = User(
            name: UserStore.shared.names.randomElement() ?? "",
            surname: UserStore.shared.surnames.randomElement() ?? "",
            email: UserStore.shared.emails.randomElement() ?? "",
            phone: UserStore.shared.phones.randomElement() ?? ""
        )

            if users.firstIndex(of: User(name: user.name, surname: user.surname, email: user.email, phone: user.phone)) == nil {
                users.append(user)
            }
        }
        return users
    }
}
    
