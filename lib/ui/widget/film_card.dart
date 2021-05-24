part of 'widget.dart';

class FilmCard extends StatelessWidget {
  final Film film;
  FilmCard(this.film);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 16, 0, 16),
      child: Container(
        width: 200,
        height: 246,
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
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)),
                  image: DecorationImage(
                      image: NetworkImage(film.picturePath),
                      fit: BoxFit.cover),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(12, 12, 12, 6),
              width: 200,
              child: Text(
                film.name,
                style: blackFontStyle2,
                maxLines: 2,
                overflow: TextOverflow.clip,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Rating(rate: film.rate),
            )
          ],
        ),
      ),
    );
  }
}
