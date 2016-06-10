package learning.management

class FormController {

    def saveUser() {
        println("Parameters Recived")
        println params.firstname
        println params.lastname
        println params.email
        println params.password

        render("Thank you for sign-up." +
                "You Submitted following details"
         + "$params.firstname $params.lastname $params.email")
    }

}
