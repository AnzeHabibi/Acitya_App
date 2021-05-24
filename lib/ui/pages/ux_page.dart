part of 'page.dart';

class UXPage extends StatefulWidget {
  @override
  _UXPageState createState() => _UXPageState();
}

class _UXPageState extends State<UXPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(color: Colors.white),
              SafeArea(
                  child: Container(
                color: Color(0xFFFBFCFD),
              )),
              SafeArea(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(MainPage());
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(24, 16, 24, 0),
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
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
                          SizedBox(width: 8),
                          Text("Back", style: blackFontStyle2),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(24, 16, 24, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildSearchTF(),
                            SizedBox(
                              height: 12,
                            ),
                            Column(
                              children: [
                                Container(
                                    height: 840,
                                    child: ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemBuilder: (context, index) {
                                        final UX ux = mockUXs[index];
                                        return GestureDetector(
                                          onTap: () {
                                            Get.to(DetailPageUX(ux: ux));
                                          },
                                          child: Column(
                                            children: [UXCard2(ux)],
                                          ),
                                        );
                                      },
                                      itemCount: mockPopulars.length,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )),
            ],
          ),
        ],
      ),
    );
  }
}
