package learning.management

class FormController {

    def saveUser() {
        println("Parameters Recived")
        println params.firstname
        println params.lastname
        println params.email
        println params.password

        render("Thank you for sign-up.<br>" +
                "You Submitted following details:<br>"
                + "$params.firstname $params.lastname $params.email")

