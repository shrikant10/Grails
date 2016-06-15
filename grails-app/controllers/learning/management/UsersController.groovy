package learning.management

class UsersController {

    def create() {}

    def show() {
        return [recentlySavedUser: session.recentlySavedUser]
    }

    def save() {
        println("Parameters Received")
        println params.firstname
        println params.lastname
        println params.email
        println params.age

        User u1 = new User([myfirstname: params.firstname, mylastname: params.lastname, myemail: params.email, myage: params.age])

        session.recentlySavedUser = u1
        if (!session.allUsers) {
            session.allUsers = []
        }
        session.allUsers.add(u1)
        redirect(action: "show")
    }

    def list() {
        return [allUsers: session.allUsers]
    }
}