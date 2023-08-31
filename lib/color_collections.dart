import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
appbarStyle1(){
  return GoogleFonts.nunito(
    fontSize: 14 ,
    fontWeight: FontWeight.w600,
    color: blackClr,
  );
}
appbarStyle2(){
  return GoogleFonts.nunito(
    fontSize: 16 ,
    fontWeight: FontWeight.w600,
    color: blackClr,
  );
}
categoryStyle(){
  return GoogleFonts.nunito(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: blackClr,
    height: 2,
  );
}
normalStyle(){
  return GoogleFonts.nunito(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: blackClr,
    height: 1,
  );
}
boldStyle(){
  return GoogleFonts.nunito(
    fontSize: 18 ,
    fontWeight: FontWeight.bold,
    color: blackClr,
    height: 2,
  );
}
myFontStyle(double FS,[FontWeight? Fw, Color? clr, double? height]){
  return GoogleFonts.nunito(
    fontSize:FS ,
    fontWeight: Fw,
    color:clr ,
    height: height,
  );
}
regularStyle(){
  return GoogleFonts.nunito(
    fontSize:16 ,
    fontWeight: FontWeight.w500,
    color: blackClr,
  );
}

const Color scaffoldBgClr=Color(0xffdce3ea);
const Color drawerBg=Color(0xff1a2530);
const Color blackClr=Color(0xff0B0B0B);
const Color textBlack=Color(0xff0B0B0B);
const Color textWhite=Color(0xffEEF5FC);
Color cardColor=const Color(0xffEEF5FC).withOpacity(0.2);
const Color secondaryColor=Color(0xff01BDF3);
Color secondaryColorWithOpacity=Color(0xff01BDF3).withOpacity(0.2);
const Color primaryColors=Color(0xff0671E0);
const Color levelClr=Color(0xff8A8A8E);
const Color text2Clr=Color(0xff575F75);
const Color iconClr=Color(0xffFF5733);
const Color textOrange=Color(0xffFF5733);
const Color rowText=Color(0xffDFFF00);
const Color text2=Color(0xffFFBF00);
const Color text3=Color(0xffFF7F50);
const Color text4=Color(0xffDE3163);
const Color text5=Color(0xff9FE2BF);
const Color text6=Color(0xff40E0D0);
const Color text7=Color(0xff6495ED);
const Color text8=Color(0xffCCCCFF);
