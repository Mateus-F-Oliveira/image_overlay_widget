library image_overlay_widget;
import 'package:flutter/material.dart';
import 'dart:core';

enum ImageFrom { assets, network, memory, file }

class ImageOverlay
{
  ImageOverlay();
  Widget simpleImagesOverlay(
  {
    required dynamic image1,
    required dynamic image2,
    required ImageFrom imageFrom,
    required double height,
    required double width
  })
  {
    switch (imageFrom)
    {
      case ImageFrom.assets:
      {
        return Stack(
          children: [
            Image.asset(
              image1,
              height: height,
              width: width,
            ),
            Image.asset(
              image2,
              height: height,
              width: width,
            ),
          ],
        );
      }
      case ImageFrom.file:
      {
        return Stack(
          children: [
            Image.file(
              image1,
              height: height,
              width: width,
            ),
            Image.file(
              image2,
              height: height,
              width: width,
            ),
          ],
        );
      }
      case ImageFrom.memory:
      {
        return Stack(
          children: [
            Image.memory(
              image1,
              height: height,
              width: width,
            ),
            Image.memory(
              image2,
              height: height,
              width: width,
            ),
          ],
        );
      }
      case ImageFrom.network:
      {
        return Stack(
          children: [
            Image.network(
              image1,
              height: height,
              width: width,
            ),
            Image.network(
              image2,
              height: height,
              width: width,
            ),
          ],
        );
      }
    }
  }
  Widget dynamicImagesOverlay(
  {
    required dynamic image1,
    required dynamic image2,
    required ImageFrom imageFrom,
    double? heightImage1,
    double? heightImage2,
    double? widthImage1,
    double? widthImage2,
    dynamic alignmentImage1,
    dynamic alignmentImage2,
    BoxFit? fitImage1,
    BoxFit? fitImage2
  })
  {
    switch (imageFrom)
    {
      case ImageFrom.assets:
      {
        return Stack(
          children: [
            Align(
              alignment: alignmentImage1,
              child: Image.asset(
                image1,
                height: heightImage1,
                width: widthImage1,
                fit: fitImage1,
              ),
            ),
            Align(
              alignment: alignmentImage2,
              child: Image.asset(
                image2,
                height: heightImage2,
                width: widthImage2,
                fit: fitImage2,
              ),
            ),
          ],
        );
      }
      case ImageFrom.file:
      {
        return Stack(
          children: [
            Align(
              alignment: alignmentImage1,
              child: Image.file(
                image1,
                height: heightImage1,
                width: widthImage1,
                fit: fitImage1,
              ),
            ),
            Align(
              alignment: alignmentImage2,
              child: Image.file(
                image2,
                height: heightImage2,
                width: widthImage2,
                fit: fitImage2,
              ),
            ),
          ],
        );
      }
      case ImageFrom.memory:
      {
        return Stack(
          children: [
            Align(
              alignment: alignmentImage1,
              child: Image.memory(
                image1,
                height: heightImage1,
                width: widthImage1,
                fit: fitImage1,
              ),
            ),
            Align(alignment: alignmentImage2,
              child: Image.memory(
                image2,
                height: heightImage2,
                width: widthImage2,
                fit: fitImage2,
              ),
            ),
          ],
        );
      }
      case ImageFrom.network:
      {
        return Stack(
          children: [
            Align(
              alignment: alignmentImage1,
              child: Image.network(
                image1,
                height: heightImage1,
                width: widthImage1,
                fit: fitImage1,
              ),
            ),
            Align(
              alignment: alignmentImage2,
              child: Image.network(
                image2,
                height: heightImage2,
                width: widthImage2,
                fit: fitImage2,
              ),
            ),
          ],
        );
      }
    }
  }
}