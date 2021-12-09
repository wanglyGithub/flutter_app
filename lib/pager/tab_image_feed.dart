import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/constant/mock_data.dart';

class TabImageFeed extends StatefulWidget{
  const TabImageFeed({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState()  => _TabImageFeed();

}

class _TabImageFeed extends State<TabImageFeed> {

  @override
  Widget build(BuildContext context) {
    return const TabImageFeedContent();
  }
}


class TabImageFeedContent extends StatelessWidget{
  const TabImageFeedContent({Key? key}) : super(key: key);

  Widget _getListData(context, index){
    return Container(
      // 此时设置高度没有反应，高度根据里面元素决定的
      alignment: Alignment.center,
      // listView会自适应高度或宽度，会平铺，而Column不会平铺，是多大就多大
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.network(MockData.list[index].image ?? ""),
          //距离，可代替Container
          const SizedBox(height: 10),
          Expanded(child: Text(
              MockData.list[index].label ?? "",
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
              )
          ))

        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromRGBO(233, 233, 233, 0.9),
              width: 1
          )
      ),
    );

  }


  @override
  Widget build(BuildContext context) {
    return GridView.builder( //高度宽度会自适应
      itemCount: MockData.list.length,//个数
      itemBuilder: _getListData,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        // padding: EdgeInsets.all(10),//没有
        crossAxisCount: 3,
        mainAxisSpacing: 6.0,//上下距离
        crossAxisSpacing: 6.0,//左右距离
      ),
    );
  }
}
