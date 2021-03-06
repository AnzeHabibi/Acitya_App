part of 'page.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFBFBFB),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(16, 48, 16, 0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text("Sign In",
                        style: blackFontStyle1.copyWith(
                            fontSize: 32, fontWeight: FontWeight.w900)),
                  ),
                  Text("Let's read to improve your skills and knowledge!",
                      style: blackFontStyle2),
                  Container(
                      margin: EdgeInsets.only(top: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          _buildEmailTF(),
                          _buildNickTF(),
                          _buildPasswordTF(),
                        ],
                      )),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 32, 0, 0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Container(
                          width: 400,
                          height: 45,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                            child: Text(
                              "Sign In",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            emailController.text.isEmpty
                                ? _validateEmail = true
                                : _validateEmail = false;
                            passwordController.text.isEmpty
                                ? _validatePassword = true
                                : _validatePassword = false;
                            nickController.text.isEmpty
                                ? _validateNick = true
                                : _validateNick = false;
                          });
                          if (_validateEmail == false &&
                              _validatePassword == false && _validateNick == false) {
                            setState(() {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return MainPage();
                              }));
                            });
                          }
                        },
                        color: Color(0xFF1D2A64),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(SignUpPage());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                                color: Color(0xFF424874),
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Color(0xFF424874),
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

TextEditingController emailController = new TextEditingController();
bool _validateEmail = false;
bool _validatePassword = false;
Widget _buildEmailTF() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 0, 12),
          child: Text("Email", style: blackFontStyle2),
        ),
        Container(
          height: 45.0,
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(
              fillColor: Colors.white,
              errorText: _validateEmail ? 'Inputan tidak\'bisa kosong' : null,
              hintText: "Example@sample.com",
              hintStyle: TextStyle(
                color: Color(0xFFD2D9DF),
                fontSize: 12,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffD2D9DF), width: 1.5),
                borderRadius: const BorderRadius.all(
                  const Radius.circular(30.0),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffD2D9DF), width: 1.5),
                borderRadius: const BorderRadius.all(
                  const Radius.circular(30.0),
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}

TextEditingController passwordController = new TextEditingController();
Widget _buildPasswordTF() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 0, 12),
          child: Text("Password", style: blackFontStyle2),
        ),
        Container(
          height: 45.0,
          child: TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              fillColor: Colors.white,
              errorText:
                  _validatePassword ? 'Inputan tidak\'bisa kosong' : null,
              hintText: "Input Password",
              hintStyle: TextStyle(
                color: Color(0xFFD2D9DF),
                fontSize: 12,
              ),
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: mainColor,
                size: 20,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffD2D9DF), width: 1.5),
                borderRadius: const BorderRadius.all(
                  const Radius.circular(30.0),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffD2D9DF), width: 1.5),
                borderRadius: const BorderRadius.all(
                  const Radius.circular(30.0),
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
