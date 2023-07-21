import 'package:flutter/material.dart';
import 'font_size.dart';

const _normalRegular =  TextStyle(
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,  
);

final TextStyle h10 = const TextStyle(fontSize: FontSize.pt10).merge(_normalRegular);
final TextStyle h12 = const TextStyle(fontSize: FontSize.pt12).merge(_normalRegular);
final TextStyle h14 = const TextStyle(fontSize: FontSize.pt14).merge(_normalRegular);
final TextStyle h16 = const TextStyle(fontSize: FontSize.pt16).merge(_normalRegular);
final TextStyle h18 = const TextStyle(fontSize: FontSize.pt18).merge(_normalRegular);
final TextStyle h20 = const TextStyle(fontSize: FontSize.pt20).merge(_normalRegular);
final TextStyle h24 = const TextStyle(fontSize: FontSize.pt24).merge(_normalRegular);
final TextStyle h26 = const TextStyle(fontSize: FontSize.pt26).merge(_normalRegular);
final TextStyle h32 = const TextStyle(fontSize: FontSize.pt32).merge(_normalRegular);
final TextStyle h40 = const TextStyle(fontSize: FontSize.pt40).merge(_normalRegular);
final TextStyle h50 = const TextStyle(fontSize: FontSize.pt50).merge(_normalRegular);
