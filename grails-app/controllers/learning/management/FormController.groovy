package learning.management

class FormController {

    def saveUser() {
        println("Parameters Recived")
        println params.firstname
        println params.lastname
        println params.email
        println params.password

        /*render("Thank you for sign-up.<br>" +
                "You Submitted following details:<br>"
                + "$params.firstname $params.lastname $params.email")

        return [firstname: params.firstname,lastname:params.lastname,email:params.email,password:params.password,currentDate: new Date(),rating:23,age:100]*/

        User myuser =new User([myfirstname: params.firstname,mylastname:params.lastname,myemail:params.email,myage:params.age])
        myuser.myTask()
        return [recentlySavedUser: myuser]
    }
}