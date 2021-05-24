part of 'page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: 56),
                  ProfileCard(),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - (2 * 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Last Seen",
                            style: blackFontStyle2.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                )),
                        Text(
                          "see all",
                          style: blackFontStyle2.copyWith(
                            color: mainColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w200,
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
                        child: 
                        Row(
                          children: [
                            SkillCard(popular)
                          ],
                        ),
                      );
                    }, itemCount: mockPopulars.length,)),
                  SizedBox(
                    height: 90 ,
                  ),
                  
                ],
              ),
            ],
          ),
        ],
      )),
    );
  }
}