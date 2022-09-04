import 'package:flutter/material.dart';

class ListObject{

  final String fileName;
  final String imagePath;
  final String fileSize;
  final String mediaType;
  final Color color;
  final int percentage;

  ListObject({

    required this.fileName,
    required this.imagePath,
    required this.fileSize,
    required this.mediaType,
    required this.color,
    required this.percentage

  });
}