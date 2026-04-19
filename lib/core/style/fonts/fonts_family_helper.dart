class FontsFamilyHelper {
  static const String arabicFont = 'Cairo';
  static const String englishFont= 'poppins';

  static String getFontByLocale(){
    final isArabic='ar';
    if(isArabic=='ar'){
      return arabicFont;
    }else{
      return englishFont;
    }
  }
  
}
