import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PCheckboxTheme{
  PCheckboxTheme._(); // to avoid create instance

static CheckboxThemeData lightCheckboxThemeData = CheckboxThemeData(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  checkColor: MaterialStateProperty.resolveWith((states){
    if(states.contains(MaterialState.selected)){
      return Colors.white;
    }else{
      return Colors.black;
  }
  }),
  fillColor: MaterialStateProperty.resolveWith((states){
    if(states.contains(MaterialState.selected)){
      return Colors.blue;
    }else{
      return Colors.transparent;
    }
  })
);

/// Customize dark Text Theme
static CheckboxThemeData darkCheckboxThemeData = CheckboxThemeData(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  checkColor: MaterialStateProperty.resolveWith((states){
    if(states.contains(MaterialState.selected)){
      return Colors.white;
    }else{
      return Colors.black;
  }
  }),
  fillColor: MaterialStateProperty.resolveWith((states){
    if(states.contains(MaterialState.selected)){
      return Colors.blue;
    }else{
      return Colors.transparent;
    }
  })
);


}