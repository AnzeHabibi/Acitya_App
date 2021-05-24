part of 'page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {


  
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
                    child: Text("Sign Up", style: blackFontStyle1.copyWith(fontSize: 32, fontWeight: FontWeight.bold)),
                  ),
                  Text("Let's read to improve your skills and knowledge!",
                      style: blackFontStyle2),
                  Container(
                      margin: EdgeInsets.only(top: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 16,
                          ),
                          _buildEmailTF(),
                          _buildNickTF(),
                          _buildPasswordTF(),
                          _buildPhoneTF(),
                          _buildRoleTF(),
                          _buildSpecialistTF(),
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
                              "Continue",
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
                            phoneController.text.isEmpty
                                ? _validatePhone = true
                                : _validatePhone = false;
                            roleController.text.isEmpty
                                ? _validateRole = true
                                : _validateRole = false;
                            specialistController.text.isEmpty
                                ? _validateSpecialist = true
                                : _validateSpecialist = false;
                          });
                          if (_validateEmail == false &&
                              _validatePassword == false &&
                              _validateNick == false &&
                              _validatePhone == false &&
                              _validateRole == false &&
                              _validateSpecialist == false) {
                            Get.to(LandingPage());
                          }
                        },
                        color: Color(0xFF1D2A64),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(SignInPage());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Have an account ? ",
                            style: TextStyle(
                                color: Color(0xFF424874),
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Sign In",
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

bool _validatePhone = false;
bool _validateNick = false;
bool _validateRole = false;
bool _validateSpecialist = false;

TextEditingController nickController = new TextEditingController();
Widget _buildNickTF() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 0, 12),
          child: Text("Nickname", style: blackFontStyle2),
        ),
        Container(
          height: 45.0,
          child: TextField(
            controller: nickController,
            decoration: InputDecoration(
              fillColor: Colors.white,
              errorText: _validateNick ? 'Inputan tidak\'bisa kosong' : null,
              hintText: "Input Nickname",
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

TextEditingController phoneController = new TextEditingController();
Widget _buildPhoneTF() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 0, 12),
          child: Text("Phone", style: blackFontStyle2),
        ),
        Container(
          height: 45.0,
          child: TextField(
            controller: phoneController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              fillColor: Colors.white,
              errorText: _validatePhone ? 'Inputan tidak\'bisa kosong' : null,
              hintText: "Input Phone",
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

TextEditingController roleController = new TextEditingController();
Widget _buildRoleTF() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 0, 12),
          child: Text("Role", style: blackFontStyle2),
        ),
        Container(
          height: 45.0,
          child: TextField(
            controller: roleController,
            decoration: InputDecoration(
              fillColor: Colors.white,
              errorText: _validateRole ? 'Inputan tidak\'bisa kosong' : null,
              hintText: "Input role",
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

TextEditingController specialistController = new TextEditingController();
Widget _buildSpecialistTF() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 0, 12),
          child: Text("Specialist", style: blackFontStyle2),
        ),
        Container(
          height: 45.0,
          child: TextField(
            controller: specialistController,
            decoration: InputDecoration(
              fillColor: Colors.white,
              errorText:
                  _validateSpecialist ? 'Inputan tidak\'bisa kosong' : null,
              hintText: "Input specialist",
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