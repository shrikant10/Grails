package learning.management

class UsersController {

    def create() {}

    def save() {
        println("Parameters Received")
        println params.firstname
        println params.lastname
        println params.email
        println params.age

        Person myuser = new Person([firstName: params.firstname,lastName: params.lastname, email: params.email,
                                    age:params.age.toInteger()])
        myuser.save()

        /*session.recentlySavedUser = myuser
        if (!session.allUsers) {
            session.allUsers = []
        }
        session.allUsers.add(myuser)*/

        redirect(action: "list")
    }

    def edit() {
        return [edit1: Person.get(params.id)]
    }
    def show() {
        Person myPerson = Person.get(params.id)
        return [recentlySavedUser: myPerson]
    }

    def list() {
        return [allUsers: Person.list()]
    }

    def update() {
        println "Received parameters to update: ${params}"
        Person myPerson = Person.get(params.id)
        myPerson.firstName=params.firstname
        myPerson.lastName=params.lastname
        myPerson.email=params.email
        myPerson.age=params.age.toInteger()

        myPerson.save(flush: true)
        redirect(action:"list" )
    }
    def delete() {
        println "Deleting the record with id: ${params.id}"
        Person personInstance = Person.get(params.id)
        personInstance.delete(flush: true)
        redirect(action: "list")
    }
}