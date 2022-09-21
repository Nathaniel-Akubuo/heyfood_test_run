import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// PADDING
const kMainPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 8);
const k4pxPadding = EdgeInsets.symmetric(horizontal: 4, vertical: 4);
const k8pxPadding = EdgeInsets.symmetric(horizontal: 8, vertical: 8);
const k16pxPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 16);
const kTextFieldPadding = EdgeInsets.symmetric(horizontal: 12, vertical: 14);

//Text styles
TextStyle kTitleTextStyle = GoogleFonts.poppins(
    color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold);
TextStyle kSubtitleTextStyle =
    GoogleFonts.poppins(color: Colors.black, fontSize: 14);

TextStyle kAppBarTextStyle = kSubtitleTextStyle.copyWith(
    fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black);

TextStyle kButtonTextStyle = GoogleFonts.poppins(
    color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);

TextStyle kHomeTitleTextStyle = kTitleTextStyle.copyWith(fontSize: 16);

// DECORATIONS
const kRoundedTopBorder = BorderRadius.vertical(top: Radius.circular(24));
const k8pxRoundedTopBorder = BorderRadius.vertical(top: Radius.circular(8));
const k4pxRoundedTopBorder = BorderRadius.vertical(top: Radius.circular(4));
const k8pxRoundedBottomBorder =
    BorderRadius.vertical(bottom: Radius.circular(8));
const k4pxRoundedBottomBorder =
    BorderRadius.vertical(bottom: Radius.circular(4));
const k32pxBorderRadius = BorderRadius.all(Radius.circular(32));
const k24pxBorderRadius = BorderRadius.all(Radius.circular(24));
const k16pxBorderRadius = BorderRadius.all(Radius.circular(16));
const k12pxBorderRadius = BorderRadius.all(Radius.circular(12));
const k8pxBorderRadius = BorderRadius.all(Radius.circular(8));
const k4pxBorderRadius = BorderRadius.all(Radius.circular(4));
const kSentMessageBorderRadius = BorderRadius.only(
  bottomRight: Radius.circular(16),
  bottomLeft: Radius.circular(16),
  topLeft: Radius.circular(16),
);
const kReceivedMessageBorderRadius = BorderRadius.only(
  bottomRight: Radius.circular(16),
  bottomLeft: Radius.circular(16),
  topRight: Radius.circular(16),
);
const k8pxNoLeft = BorderRadius.only(
  topRight: Radius.circular(8),
  bottomLeft: Radius.circular(8),
  bottomRight: Radius.circular(8),
);
const k8pxNoRight = BorderRadius.only(
  topLeft: Radius.circular(8),
  bottomLeft: Radius.circular(8),
  bottomRight: Radius.circular(8),
);

// HORIZONTAL-SPACING
const Widget horizontalSpaceTiny = SizedBox(width: 5.0);
const Widget horizontalSpaceSmall = SizedBox(width: 10.0);
const Widget horizontalSpaceRegular = SizedBox(width: 15.0);
const Widget horizontalSpaceMedium = SizedBox(width: 25.0);
const Widget horizontalSpaceLarge = SizedBox(width: 50.0);

Widget horizontalSpaceCustom(double width) => SizedBox(width: width);

// VERTICAL-SPACING
const Widget verticalSpaceTiny = SizedBox(height: 5.0);
const Widget verticalSpaceSmall = SizedBox(height: 10.0);
const Widget verticalSpaceRegular = SizedBox(height: 15.0);
const Widget verticalSpaceMedium = SizedBox(height: 25.0);
const Widget verticalSpaceLarge = SizedBox(height: 50.0);

Widget verticalSpaceCustom(double height) => SizedBox(height: height);
