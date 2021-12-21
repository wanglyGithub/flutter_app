import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/constant/mock_data.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TabMySelfPage extends StatefulWidget {
  const TabMySelfPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TabMySelfPageState();
  }
}

class _TabMySelfPageState extends State<TabMySelfPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const TopBarWidgetState();
  }
}

class TopBarWidgetState extends StatelessWidget {
  const TopBarWidgetState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 24,
                      backgroundImage:
                          AssetImage('assets/images/icon_auth.jpeg'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '昵称：技术客栈',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Icon(
                              Icons.wine_bar_outlined,
                              size: 15,
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Text(
                              "Lv.15",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.stars,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Text(
                              "高级用户",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.keyboard_arrow_right, size: 16),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.notifications_none,
                            size: 28,
                            color: Colors.red,
                          ),
                          Text(
                            "消息通知",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.star_rate_outlined,
                            size: 28,
                            color: Colors.red,
                          ),
                          Text(
                            "收藏",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          )
                        ],
                      ),
                      const SizedBox(width: 16),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.history,
                            size: 28,
                            color: Colors.red,
                          ),
                          Text(
                            "历史记录",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          )
                        ],
                      ),
                      const SizedBox(width: 16),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.cloud_download_outlined,
                            size: 28,
                            color: Colors.red,
                          ),
                          Text(
                            "收藏",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text("记录新鲜事"),
                  const Spacer(),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          minimumSize: const Size(1, 1),
                          padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
                          side:
                              const BorderSide(width: 0.5, color: Colors.green),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      child: const Text(
                        "发布",
                        style: TextStyle(fontSize: 12),
                      ))
                ],
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Fluttertoast.showToast(msg :"点击全部");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text("更多服务"),
                      Spacer(),
                      Text(
                        "全部",
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_sharp,
                        size: 14,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const MoreServiceWidget(),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class MoreServiceWidget extends StatelessWidget {
  const MoreServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 20.0, //左右距离
          mainAxisSpacing: 20.0),
      itemBuilder: _getItem,
      itemCount: MockData.settingList.length,
      shrinkWrap: true,
    );
  }

  Widget _getItem(context, index) {
    return InkWell(
        onTap: () {
          Fluttertoast.showToast(
              msg: "msg ${MockData.settingList[index].label}");
        },
        child: Column(
          children: [
            Icon(MockData.settingList[index].icon),
            const SizedBox(height: 5),
            Text(
              MockData.settingList[index].label ?? "",
              style: const TextStyle(fontSize: 13),
            )
          ],
        ));
  }
}
