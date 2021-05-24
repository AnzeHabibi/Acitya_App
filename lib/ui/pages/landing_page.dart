part of "page.dart";

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - (2 * 24),
                height: 312,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/3d.png",
                        ),
                        fit: BoxFit.cover)),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Text("Lets Read",
                    style: whiteFontStyle.copyWith(
                        fontSize: 32, fontWeight: FontWeight.w900)),
              ),
              SizedBox(height: 6),
              Text("By Reading here, you can discover\nyour hidden skill!",
                  style: whiteFontStyle.copyWith(
                    color: Color(0xffE5E3E6),
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 36,
              ),
              Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width - (2 * 32),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPage();
                      }));
                    },
                    color: Color(0xffF62C2C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      "Start  The Journey",
                      style: whiteFontStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ))
            ],
          ),
        ));
  }
}
