import 'package:flutter/material.dart';

///Padding
EdgeInsetsGeometry paddingOnly({
  double top = 0,
  double right = 0,
  double bottom = 0,
  double left = 0,
}) =>
    EdgeInsets.only(
      top: top,
      right: right,
      bottom: bottom,
      left: left,
    );

EdgeInsetsGeometry paddingSymmetric({
  double horizontal = 0,
  double vertical = 0,
}) =>
    EdgeInsets.symmetric(
      horizontal: horizontal,
      vertical: vertical,
    );

EdgeInsetsGeometry paddingAll(double all) => EdgeInsets.all(all);

///Margin
EdgeInsetsGeometry marginSymmetric({
  double horizontal = 0,
  double vertical = 0,
}) =>
    EdgeInsets.symmetric(
      horizontal: horizontal,
      vertical: vertical,
    );

EdgeInsetsGeometry marginAll(double all) => EdgeInsets.all(all);

EdgeInsetsGeometry marginOnly({
  double top = 0,
  double right = 0,
  double bottom = 0,
  double left = 0,
}) =>
    EdgeInsets.only(
      top: top,
      right: right,
      bottom: bottom,
      left: left,
    );
