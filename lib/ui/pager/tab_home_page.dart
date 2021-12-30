import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class TabHomePage extends StatefulWidget {
  const TabHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TabHomePageState();
  }
}

class _TabHomePageState extends State {
  List _imageUrls = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 220,
            alignment: Alignment.topCenter,
            child: Swiper(
              itemCount: _imageUrls.length,
              autoplay: true,
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                  _imageUrls[index],
                  fit: BoxFit.fill,
                );
              },
              pagination: const SwiperPagination(builder: DotSwiperPaginationBuilder(
                size: 7,
                activeSize: 7.5,
              )),
            ))
      ],
    );
  }
}
