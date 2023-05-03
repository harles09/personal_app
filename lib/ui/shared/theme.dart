import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const white = Color(0xffFFFFFF);
const black = Color(0xff000000);
const grey = Color(0xffcccccc);
const newGreyPallete = Color(0xfff9f8fd);
const newLightBlack = Color(0xff647a98);
const red = Color(0xffED1D25);
const paleRed = Color(0xffDE5050);
const rogue = Color(0xff98252b);
const buttonDisabledBg = Color(0xffFF8E8E);
const lightGrey = Color(0xff666666);
const green = Color(0xff4ed07d);
const barBG = Color(0xff424242);
const barButton = Color(0xff4DD0E1);
const starColor = Color(0xffffbe18);
const whiteGrey = Color(0xffF0F0F0);
const radicalRed = Color(0xffFA3F70);
const softPink = Color(0xffFED3E0);
const darkGrey = Color(0xffDBDBDB);
const lightBlack = Color(0xff333333);
// Belum di ubah
// cargBg: '#FA4560',
// contrast: '#ffffff',
// buttonTextColor: '#ffffff',
// disabledGrey: '#cac6c6',
// containerGrey: 'rgba(0,0,0, 0.09)',
// borderGrey: 'rgba(0,0,0, 0.09)',
// cardGrey: 'rgba(201, 198, 198, 0.2)',
// cardVerticalSpacing: 10,
// overlayBackground: 'rgba(37, 8, 10, 0.78)',
// primaryUnHighlighted: '#FF8E8E',
// text: '#000',
// header: '#FA3F70',
// textLightGrey: '#666',
// background: '#FFF',
// buttonBg: '#FA3F70',
// errorColor: '#F00',
// primary: '#FA3F70',
// brand: '#FA3F70',
// inputBackground: '#ededed',
// buttonPickerColor: '#007AFF',
// textGrey: '#9E9E9E',
// scrambleKeyboardBackground: '#ECEFF1',
// greyLine: '#ECECEC',
// qrCouponIcon: '#44E77B',
// darkBrand: '#C10C19',
// darkBlue: '#2F476D',
// qrPromoTurqoise: '#00C4C1',
// darkGrey: '#DBDBDB',
// opacityBlack: 'rgba(0,0,0, 0.5)',
// opacityWhite: 'rgba(255, 255, 255, 0.25)',
// opacityMidWhite: 'rgba(255, 255, 255, 0.55)',
// opacityExtremeWhite: 'rgba(255, 255, 255, 0.05)',
// transparent: 'rgba(0,0,0,0)',
// softGrey: '#949494',
// gold: '#C4AF4C',
// couponGrey: '#F8F8F8',
// amount: '#4ed07d',
// wallet: '#c38a05',
// purchase: '#0787e3',
// brown: '#A52A2A',
// lightBlue: '#0299d1',
// opacityBrand: 'rgba(242,24,53,0.5)',
// gradientMiddle: '#FAFAFA',
// pink: '#FF9999',
// darkRed: '#E30717',
// orange: '#FF841C',
// darkGreen: '#0ba042',
// lightBlack: '#333333',
// blueAmount: '#3892FC',
// darkOrange: '#ff6300',
// emoneyGold: '#D8A101',
// dashLine: '#C7C7C7',
// pinkBrand: '#FA3F70',
// lightPink: '#FFEFF4',
// superLightpurple: '#F9F8FD',
// superlightGrey: '#F1F3F6',
// lightPurple: '#7B7F9E',
// lightPinkNew: '#fb658c',
// orangeWallet: '#ffe8e1',
// lightDenim: '#060142',
// newLightGrey: '#F1F3F6',
// blueDisable: '#B1BAC8',
// softBlue: '#ECF3FD',
// ligtBlueNew: '#7A82A7',
// blueText: '#7D7F9E',
// redSplitbill: '#FE2B00',
// orangeSplitbill: '#FF9501',
// blueSoftSplitBill: '#7A7D9E',
// textGreyBlue: '#767C9E',
// orangeWalletBg: '#FFE8E2',
// paleGrey: '#f2f2f2',
// textSoftDarkBlue: '#727691',
// textSoftDarkBlue2: '#7B7EA1',
// pinkPopUp: '#FB3F71',
// softPink: '#FED3E0',
// bluePastel: '#4489EB',
// greyText: '#797979',
// silver: '#B0C2CF',
// goldMember: '#FFD700',
// platinum: '#565D6C',
// diamond: '#4B93BA',
// textOrange: '#F76762',
// textYellow: '#EECF3E',
// textSoftGreen: '#6BBB23',
// textLightGreen: '#0BA411',
TextStyle greyTextStyle = GoogleFonts.roboto(
  color: grey,
);
TextStyle greyTitleSubContent = GoogleFonts.roboto(
  color: barBG,
  fontSize: 16.0,
  fontWeight: bold,
);
TextStyle blackTextStyle = GoogleFonts.roboto(
  color: black,
);
TextStyle whiteTextStyle = GoogleFonts.roboto(
  color: white,
);
TextStyle whiteBoldStyle = GoogleFonts.roboto(
  color: white,
  fontWeight: bold,
);
TextStyle greyBoldTextStyle = GoogleFonts.roboto(
  color: grey,
  fontWeight: bold,
  fontSize: 16.0,
);
TextStyle fullNameStyle = GoogleFonts.roboto(
  color: white,
  fontWeight: bold,
);
TextStyle cardTitleStyle = GoogleFonts.roboto(
  color: black,
  fontWeight: bold,
  fontSize: 14.0,
);
TextStyle subTitleStyle = GoogleFonts.roboto(
  color: black,
  fontWeight: bold,
  fontSize: 16.0,
);
TextStyle seeAllStyle = GoogleFonts.roboto(
  color: radicalRed,
);
TextStyle titlePageStyle = GoogleFonts.roboto(
  color: white,
  fontWeight: bold,
  fontSize: 20.0,
);
TextStyle easyTitleStyle = GoogleFonts.roboto(
  color: white,
  fontWeight: bold,
  fontSize: 24.0,
);
TextStyle transferTitleStyle = GoogleFonts.roboto(
  color: black,
  fontSize: 14.0,
);
TextStyle transferDescStyle = GoogleFonts.roboto(
  color: lightBlack,
  fontSize: 12.0,
  fontWeight: light,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight bold = FontWeight.w700;

//  fontSizeXS: 10,
//   fontSizeSmall: 12,
//   fontSizeNormal: 14,
//   fontSizeMedium: 16,
//   fontSizeLarge: 18,
//   fontSize20: 20,
//   fontSize22: 22,
//   fontSizeXL: 24,
//   fontSize26: 26,
//   fontSizeExtraXL: 28,
//   fontSize30: 30,
//   fontSizeXXL: 60,
//   fontWeightLight: '300',
//   fontWeightRegular: '400',
//   fontWeightMedium: '500',
//   fontWeightBold: '700',