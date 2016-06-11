package learning.management

class HelloController {

    def index() {
         render("Hello this is shrikant ")
    }

    def register() {
         render(view:"signup")
    }

    def signup() {

        /*Map m1 = [firstname:"Shrikant",lastname:"Gupta",email:"gupta.shri16@gmail.com",password:"qwerty"]
        return m1*/
    }
}

