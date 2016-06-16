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

        Person myuser = new Person([firstName: params.firstname,lastName: params.lastname, email: params.email, age: params.age.toInteger()])
        myuser.save()

        session.recentlySavedUser = myuser
        if (!session.allUsers) {
            session.allUsers = []
        }
        session.allUsers.add(myuser)
        redirect(action: "show")
    }

    def list() {
        return [allUsers: session.allUsers]
    }
}