part of 'widget.dart';

class SkillCard extends StatelessWidget {
  final Popular popular;

  SkillCard(this.popular);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 16, 0, 16),
      child: Container(
        width: 320,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(spreadRadius: 3, blurRadius: 15, color: Colors.black12)
            ]),
        child: Column(
          children: [
            Container(
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                  image: DecorationImage(image: NetworkImage(popular.picturePath), fit: BoxFit.cover),
                )),
                Container(
              margin: EdgeInsets.fromLTRB(12, 12, 12, 6),
              width: double.infinity,
              child: Text(
                popular.name,
                style: blackFontStyle2,
                maxLines: 2,
                overflow: TextOverflow.clip,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Rating(rate : popular.rate),
            )
          ],
        ),
      ),
    );
  }
}
