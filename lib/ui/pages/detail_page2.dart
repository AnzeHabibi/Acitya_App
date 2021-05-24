part of 'page.dart';

class DetailPageUX extends StatelessWidget {
  final UX ux;

  DetailPageUX({@required this.ux});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            ux.picturePath),
                        fit: BoxFit.cover)),
              ),
              ListView(
                children: [
                  SizedBox(
                    height: 328,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(ux.name,
                        style: whiteFontStyle.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        boxShadow: [
                                          BoxShadow(
                                              spreadRadius: 3,
                                              blurRadius: 15,
                                              color: Colors.black12)
                                        ],
                                        border: Border.all(
                                            color: Colors.white, width: 2),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                ux.photoCreator),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ux.nameCreator,
                                        style: blackFontStyle2.copyWith(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: 6),
                                      Text(
                                        "Writter",
                                        style: blackFontStyle3.copyWith(
                                            color: greyColor),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 16),
                              Text("Article",
                                  style: blackFontStyle2.copyWith(
                                      fontSize: 16,fontWeight: FontWeight.w600)),
                              SizedBox(height: 8),
                              Text(
                                  ux.deskripsi,
                                  style: blackFontStyle3.copyWith(
                                      height: 1.5,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xff404040))),
                              
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            width: MediaQuery.of(context).size.width - (2 * 16),
                            height: 50,
                            child: RaisedButton(
                              onPressed: () {
                                  Get.to(MainPage());
                              },
                              child: Text("Mark as Done",
                                  style: whiteFontStyle.copyWith(
                                    fontSize: 18,
                                  )),
                              color: mainColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)),
                            ),
                          ),
                        ),
                        SizedBox(height: 24),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(MainPage());
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 3,
                                blurRadius: 15,
                                color: Colors.black12)
                          ],
                          image: DecorationImage(
                              image: AssetImage("assets/btn_back.png"),
                              fit: BoxFit.cover)),
                    ),
                  ))
            ],
          )),
    );
  }
}