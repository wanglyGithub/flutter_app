import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreBean {
  String? image = "";
  String? label = "";

  IconData? icon;

  StoreBean(this.label,this.image,{this.icon});
}