#include <LiquidCrystal.h>
const int backled = 10, rs = 8, en = 9, d4 = 4, d5 = 5, d6 = 6, d7 = 7;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

void setup() {
  lcd.begin(16, 2);
  lcd.setCursor(5, 0);
  lcd.print("GHRIET");
  lcd.setCursor(3, 1);
  lcd.print("MIA PRACTICAL");
  delay(10000);
}

void loop() {
  lcd.clear();
  lcd.setCursor(0, 1);
  lcd.print("FOURTH SEM");
  lcd.setCursor(3, 1);
  lcd.print("ETC");
  delay(5000);
}

