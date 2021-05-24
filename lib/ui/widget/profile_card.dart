part of 'widget.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - (16 * 2),
                height: 340,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Container(
                        height: 292,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Color(0xffE6EAF2)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white, width: 2),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://scontent.fcgk18-1.fna.fbcdn.net/v/t1.6435-9/159902851_2023597117781416_8920989103309733742_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeF7JV6Ak-Jk3EtljOwrYnh9GKkqCuNh1agYqSoK42HVqKSLlcOXmFUDFDsgCzTkCaArAqhMNA-HB-wK_Gl65koI&_nc_ohc=CCQpLjHnk8QAX9nyu3Z&_nc_ht=scontent.fcgk18-1.fna&oh=f911eb1807b21f57787fd6537a4124ce&oe=60CFEFA8"),
                              fit: BoxFit.cover)),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 100),
                        Text(
                          nickController.text,
                          style: blackFontStyle1.copyWith(fontSize: 24),
                        ),
                        SizedBox(height: 8),
                        Text(
                          emailController.text,
                          style: blackFontStyle3.copyWith(
                              fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Role",
                                  style: blackFontStyle1.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  roleController.text,
                                  style: blackFontStyle3.copyWith(
                                      fontSize: 12,
                                      color: mainColor,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            Container(
                              height: 24,
                              width: 1,
                              color: Color(0xffC9CBD3),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Specialist",
                                  style: blackFontStyle1.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  specialistController.text,
                                  style: blackFontStyle3.copyWith(
                                      fontSize: 12,
                                      color: mainColor,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 32),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 16, left: 16, bottom: 16),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Container(
                              width: 400,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                child: Text(
                                  "Sign Out",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return SignInPage();
                              }));
                            },
                            color: Color(0xFFD43F51),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
