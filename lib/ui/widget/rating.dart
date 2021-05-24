part of 'widget.dart';

class Rating extends StatelessWidget {
  final double rate;

  Rating({this.rate});
  @override
  Widget build(BuildContext context) {
    int numberOfStars = rate.round();
    return Row(
      children: List<Widget>.generate(
              5,
              (index) => Icon(
                    (index < numberOfStars)
                        ? MdiIcons.star
                        : MdiIcons.starOutline,
                    size: 14,
                    color: Color(0xffF2C94C),
                  )) +
          [
            SizedBox(width: 6),
            Text(rate.toString(),
                style: blackFontStyle2.copyWith(
                    fontSize: 14,
                    color: Color(0xff515B69),
                    fontWeight: FontWeight.w600)),
                    SizedBox(width: 4),
                    Text("(36 Reviews)", style: blackFontStyle2.copyWith(
                    fontSize: 10,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400))
          ],
    );
  }
}
