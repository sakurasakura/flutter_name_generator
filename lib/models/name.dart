import 'package:flutter/material.dart';
class Name{
  String? id;
  String? name;
  bool? isMaleName=false;
  bool? isFemaleName=false;
  String? meaning='';

  Name({required this.id, required this.name, this.isMaleName, this.isFemaleName, this.meaning});

}