package learning.management

class HelloController {

    def index() {
         render("Hello this is shrikant ")
    }

    def salman() {
         render("This is salman khan")
    }

    def signup() {
        render(""" <h1> SIGN-UP FORM</h1>
                <form action="/learning-management/form/saveUser">
                <label>Firstname :</label>
                <input type="text" name="firstname"><br><br>
                <label>Lastname :</label>
                <input type="text" name="lastname"><br><br>
                <label>Email :</label>
                <input type="email" name="email"><br><br>
                <label>Password :</label>
                <input type="password" name="password"><br><br>
                <input type="submit" value="submit">
                </form>"""
        )
    }


}
