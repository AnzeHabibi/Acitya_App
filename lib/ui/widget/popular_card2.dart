part of 'widget.dart';

class PopularCard2 extends StatelessWidget {
  final Popular popular;

  PopularCard2(this.popular);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,16,0,0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffFBFCFD),
          border: Border.all(color: Color(0xffE6EAF2)),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18), topRight:Radius.circular(18)
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                          popular.picturePath,
                        ),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Text(
                popular.name,
                style: blackFontStyle2.copyWith(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Row(
                children: [
                  Rating(rate: popular.rate),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
