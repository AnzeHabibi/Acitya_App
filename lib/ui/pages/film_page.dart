part of 'page.dart';

class FilmPage extends StatefulWidget {
  @override
  _FilmPageState createState() => _FilmPageState();
}

class _FilmPageState extends State<FilmPage> {
  
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
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
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
                      final Film film = mockFilms[index];
                      return GestureDetector(
                        onTap: () {
                          Get.to(DetailPageFilm(film: film));
                        },
                        child: 
                        Column(
                          children: [
                            FilmCard2(film)
                          ],
                        ),
                      );
                    }, itemCount: mockPopulars.length,)),
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
