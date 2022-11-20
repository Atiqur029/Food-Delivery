// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

class OnboardingModel {
  final int id;
  final String? imgPath;
  final Widget title;
  final String message;
  OnboardingModel({
    required this.id,
    this.imgPath,
    required this.title,
    required this.message,
  });
}
