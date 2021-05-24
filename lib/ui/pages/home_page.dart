part of 'page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 24, 32, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome, ",
                          style: blackFontStyle1.copyWith(
                              fontSize: 24, fontWeight: FontWeight.w400)),
                      Text(nickController.text,
                          style: blueFontStyle1.copyWith(
                              fontSize: 24, fontWeight: FontWeight.w900)),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue[100].withOpacity(0.5),
                            spreadRadius: 0.5,
                            blurRadius: 3,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://scontent.fcgk18-1.fna.fbcdn.net/v/t1.6435-9/159902851_2023597117781416_8920989103309733742_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeF7JV6Ak-Jk3EtljOwrYnh9GKkqCuNh1agYqSoK42HVqKSLlcOXmFUDFDsgCzTkCaArAqhMNA-HB-wK_Gl65koI&_nc_ohc=CCQpLjHnk8QAX9nyu3Z&_nc_ht=scontent.fcgk18-1.fna&oh=f911eb1807b21f57787fd6537a4124ce&oe=60CFEFA8"),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: MediaQuery.of(context).size.width - (2 * 24),
              height: 141,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12),
                    Text(
                      "Upgrade your plan",
                      style: whiteFontStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 6),
                    Text(
                        "Education is important, so\nlearn more to be successful!",
                        style: whiteFontStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Color(0xffE5E3E6))),
                    SizedBox(height: 12),
                    Container(
                      height: 30,
                      width: 122,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16)),
                      child: RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        color: Color(0xffF62C2C),
                        child: Text("Upgrade Now",
                            style: whiteFontStyle.copyWith(fontSize: 12)),
                      ),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      image: AssetImage("assets/banner.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: MediaQuery.of(context).size.width - (2 * 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Categories",
                      style: blackFontStyle1.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: MediaQuery.of(context).size.width - (2 * 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage("assets/code.png"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(height: 4),
                      Text("Code",
                          style: blackFontStyle1.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage("assets/film.png"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(height: 4),
                      Text("Film Maker",
                          style: blackFontStyle1.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage("assets/bisnis.png"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(height: 4),
                      Text("Business",
                          style: blackFontStyle1.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage("assets/pencil.png"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(height: 4),
                      Text("Writter",
                          style: blackFontStyle1.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Container(
              width: MediaQuery.of(context).size.width - (2 * 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Course",
                      style: blackFontStyle1.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return PopularPage();
                      }));
                    },
                    child: Text(
                      "see all",
                      style: blackFontStyle3.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: mainColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 278,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final Popular popular = mockPopulars[index];
                    return GestureDetector(
                      onTap: () {
                        Get.to(DetailPage(popular: popular));
                      },
                      child: Row(
                        children: [SkillCard(popular)],
                      ),
                    );
                  },
                  itemCount: mockPopulars.length,
                )),
            SizedBox(height: 24),
            Container(
              width: MediaQuery.of(context).size.width - (2 * 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("UX Course",
                      style: blackFontStyle1.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return UXPage();
                      }));
                    },
                    child: Text(
                      "see all",
                      style: blackFontStyle3.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: mainColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 278,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final UX ux = mockUXs[index];
                    return GestureDetector(
                      onTap: () {
                        Get.to(DetailPageUX(ux: ux));
                      },
                      child: Row(
                        children: [UXCard(ux)],
                      ),
                    );
                  },
                  itemCount: mockUXs.length,
                )),
                SizedBox(height: 24),
            Container(
              width: MediaQuery.of(context).size.width - (2 * 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Film Maker",
                      style: blackFontStyle1.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return FilmPage();
                      }));
                    },
                    child: Text(
                      "see all",
                      style: blackFontStyle3.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: mainColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 278,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final Film film = mockFilms[index];
                    return GestureDetector(
                      onTap: () {
                         Get.to(DetailPageFilm(film : film));
                      },
                      child: Row(
                        children: [FilmCard(film)],
                      ),
                    );
                  },
                  itemCount: mockFilms.length,
                )),
          ],
        ),
        SizedBox(height: 70),
      ],
    );
  }
}
