import 'package:flutter/material.dart';

class FirstPackage extends StatefulWidget {
  FirstPackage(
      {Key? key,
      required this.color,
      required this.imgUrl,
      required this.title,
      required this.subTitle,
      this.titleTextStyle,
      this.subTitleTextStyle,
      required this.margin,
      required this.shape})
      : super(key: key);

  Color color;
  String imgUrl;
  String title;
  String subTitle;
  EdgeInsets margin;

  TextStyle? titleTextStyle =
      TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);
  TextStyle? subTitleTextStyle =
      TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400);

  BoxShape shape;

  @override
  State<FirstPackage> createState() => _FirstPackageState();
}

class _FirstPackageState extends State<FirstPackage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: 300,
      width: width,
      decoration: BoxDecoration(color: widget.color),
      child: Card(
        margin: widget.margin,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: height * 0.2,
                width: width * 0.3,
                decoration: BoxDecoration(
                  shape: widget.shape,
                  image: DecorationImage(image: NetworkImage(widget.imgUrl)),
                )),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    style: widget.titleTextStyle,
                  ),
                ),
                Expanded(
                  child: Text(
                    widget.subTitle,
                    style: widget.subTitleTextStyle,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
