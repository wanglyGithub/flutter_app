import 'package:flutter_app/api/api.dart';
import 'package:flutter_app/http/net_manager.dart';

class APiService{


  void getBanner(Function callback){
    HttpManager().dio.get(Api.getBanner).then((response) {
      callback();
    });
  }
}