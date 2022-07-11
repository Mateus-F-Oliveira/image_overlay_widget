library image_overlay_widget;
import 'package:flutter/material.dart';
import 'dart:core';

enum ImageFrom { assets, network, memory, file }

class ImageOverlay
{
  ImageOverlay();
  Widget simpleImagesOverlay(
  {
    required String image1,
    required String image2,
    required ImageFrom imageFrom,
    required double height,
    required double width
  })
  {
    switch (imageFrom)
    {
      case ImageFrom.assets:
      {
        return Stack();
      }
      case ImageFrom.file:
      {
        return Stack();
      }
      case ImageFrom.memory:
      {
        return Stack();
      }
      case ImageFrom.network:
      {
        return Stack();
      }
    }
  }
  Widget dynamicImagesOverlay(
  {
    required String image1,
    required String image2,
    required ImageFrom imageFrom,
    double? heightImage1,
    double? heightImage2,
    double? widthImage1,
    double? widthImage2,
    Alignment? alignmentImage1,
    Alignment? alignmentImage2,
    BoxFit? fitImage1,
    BoxFit? fitImage2
  })
  {
    return Stack();
  }
}