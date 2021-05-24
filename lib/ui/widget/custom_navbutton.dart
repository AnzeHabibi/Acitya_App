part of 'widget.dart';

class CustomNavbutton extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  CustomNavbutton({this.selectedIndex = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(0);
              }
            },
            child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/ic1" +
                          ((selectedIndex == 0) ? ".png" : "_normal.png")),
                      fit: BoxFit.contain),
                )),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(1);
              }
            },
            child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/ic4" +
                          ((selectedIndex == 1) ? ".png" : "_normal.png")),
                      fit: BoxFit.contain),
                )),
          ),
        ],
      ),
    );
  }
}
