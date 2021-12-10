import 'package:flutter/material.dart';

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
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  backgroundImage: AssetImage('assets/images/icon_auth.jpeg'),
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
                          "普通用户",
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

                      side: const BorderSide(width: 0.5, color: Colors.green),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),

                  onPressed: () {

                  },
                  child: const Text("发布",style: TextStyle(fontSize: 12),))
            ],
          ))
    ]);
  }
}
