part of 'page.dart';

class PopularPage extends StatefulWidget {
  @override
  _PopularPageState createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
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
                                        final Popular popular =
                                            mockPopulars[index];
                                        return GestureDetector(
                                          onTap: () {
                                            Get.to(
                                                DetailPage(popular: popular));
                                          },
                                          child: Column(
                                            children: [PopularCard2(popular)],
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

TextEditingController searchController = new TextEditingController();
Widget _buildSearchTF() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 45.0,
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              fillColor: Colors.white,
              hintText: "Find the Article",
              hintStyle: TextStyle(
                color: Color(0xFFD2D9DF),
                fontSize: 12,
              ),
              suffixIcon: Icon(
                Icons.search,
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
