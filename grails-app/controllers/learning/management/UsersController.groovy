package learning.management

class UsersController {

    def create() {
        [myUser: new Person()]
    }

    def save() {
        println("Parameters Received")
        println params.firstname
        println params.lastname
        println params.email
        println params.age

        Person myPersonInstance = new Person([firstName: params.firstname, lastName: params.lastname, email: params.email,
                                              age      : params.age.toInteger()])
        myPersonInstance.save()
        println myPersonInstance.errors
        if (myPersonInstance.hasErrors()) {
            render(view: "create", model: [myUser: myPersonInstance])
            return
        }

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
        myPerson.firstName = params.firstname
        myPerson.lastName = params.lastname
        myPerson.email = params.email
        myPerson.age = params.age.toInteger()

        myPerson.save(flush: true)
        redirect(action: "list")
    }

    def delete() {
        println "Deleting the record with id: ${params.id}"
        Person personInstance = Person.get(params.id)
        personInstance.delete(flush: true)
        redirect(action: "list")
    }

    def search() {
    }

    def test() {
        List myPersons = []
        List name =params.sName.split(" ")
        String firstName = name[0]
        String lastName = name.size()==2?name[1]:null
        if (!params.sEmail || !params.sAge) {
            if (params.sEmail) {
                myPersons = Person.findAllByEmailLike("%" + params.sEmail + "%")
            }
            else if (params.sAge && params.ageChoice == "exact") {
                myPersons = Person.findAllByAgeLike(params.sAge)
            }
            else if (params.sAge && params.ageChoice == "less") {
                myPersons = Person.findAllByAgeLessThan(params.sAge)
            }
            else if (params.sAge && params.ageChoice == "more") {
                myPersons = Person.findAllByAgeGreaterThan(params.sAge)
            }
        }

        else {
            if (params.ageChoice == "exact") {
                myPersons = Person.findAllByAgeLikeAndEmailLike(params.sAge,"%" + params.sEmail + "%")
            }
            else if (params.ageChoice == "less") {
                myPersons = Person.findAllByAgeLessThan(params.sAge,"%" + params.sEmail + "%")
            }
            else if (params.ageChoice == "more") {
                myPersons = Person.findAllByAgeGreaterThan(params.sAge,"%" + params.sEmail + "%")
            }
        }
        render(view: "search", model: [allUsers: myPersons])
    }
}