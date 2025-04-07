import '../../../model/PregnancyCheckup.dart';

class CheckupService {
  static List<PregnancyCheckup> getCheckupList() {
    return [
      // First Trimester (1-12 weeks)
      PregnancyCheckup(
        trimester: "First",
        weekRange: "Weeks 4-8",
        checkupName: "Initial Prenatal Visit",
        description: "When you find out you're pregnant, make your first prenatal appointment. Set aside time for the first visit to go over your medical history and talk about any risk factors for pregnancy problems that you may have.",
        importance: "Establishes baseline health, detects potential risks",
      ),
      PregnancyCheckup(
        trimester: "First",
        weekRange: "Week 8-12",
        checkupName: "Dating Ultrasound",
        description: "Measurements are taken such that the dates of the pregnancy can be confirmed or determined. Other information obtained includes whether the pregnancy is in the uterus or outside the uterus (an ectopic pregnancy), how many embryos there are, and whether there are any complications surrounding the pregnancy at this early stage. The ovaries and kidneys are also examined.",
        importance: "Verifies viable pregnancy, detects multiples",
      ),
      PregnancyCheckup(
        trimester: "First",
        weekRange: "Week 10-12",
        checkupName: "NIPT (Non-Invasive Prenatal Testing)",
        description: "NIPT tests (noninvasive prenatal testing test) use a pregnant woman's blood to detect congenital abnormalities in the fetus’s DNA. The DNA is examined for genetic conditions, such as Down syndrome. NIPT tests don’t diagnose conditions. They tell your provider how likely it is that a condition exists. This test can be done beginning at 10 weeks of pregnancy.",
        importance: "Early detection of Down syndrome & other conditions",
      ),

      // Second Trimester (13-28 weeks)
      PregnancyCheckup(
        trimester: "Second",
        weekRange: "Week 16-20",
        checkupName: "Anatomy Scan",
        description: "A 20-week ultrasound, sometimes called an anatomy scan or anomaly scan, is a prenatal ultrasound performed between 18 and 22 weeks of pregnancy. It checks on the physical development of the fetus and can detect certain congenital disorders as well as major anatomical abnormalities. Your healthcare provider will use a 2D, 3D or even 4D ultrasound to take images of the fetus inside your uterus. The ultrasound technician, or sonographer, will take measurements and make sure the fetus is growing appropriately for its age. You may also learn the sex of the fetus at this appointment.",
        importance: "Checks organ development, detects abnormalities",
      ),
      PregnancyCheckup(
        trimester: "Second",
        weekRange: "Week 24-28",
        checkupName: "Glucose Screening",
        description: "Gestational diabetes is a common condition during pregnancy that affects up to 10% of pregnant women. It means you have too much glucose, or sugar, in your blood. A glucose screening checks for signs of gestational diabetes. A glucose test is how pregnancy care providers diagnose gestational diabetes. If left untreated, gestational diabetes can cause problems for both you and the fetus.",
        importance: "Early detection prevents complications",
      ),
      PregnancyCheckup(
        trimester: "Second",
        weekRange: "Week 28",
        checkupName: "Rh Factor Test",
        description: "The Rh factor test is a simple blood test (called a type and screen) that every pregnant woman gets in the first trimester of pregnancy (usually at your first prenatal appointment). The Rh factor test determines your Rh factor. This is important during pregnancy because if you’re Rh-negative and the fetus is Rh-positive, you have a condition called Rh factor incompatibility.",
        importance: "Prevents immune response in future pregnancies",
      ),

      // Third Trimester (29-40 weeks)
      PregnancyCheckup(
        trimester: "Third",
        weekRange: "Week 32-36",
        checkupName: "Group B Strep Test",
        description: "Group B strep infection (also GBS or group B Streptococcus) is caused by bacteria typically found in your vagina or rectal area. About 25% of pregnant women have GBS, but don't know it because it doesn't cause symptoms. If you have GBS, you can pass the bacteria to your baby during vaginal delivery. Infants, older adults or people with a weakened or underdeveloped immune system are more likely to develop complications from group B strep.",
        importance: "Prevents newborn infection during delivery",
      ),
      PregnancyCheckup(
        trimester: "Third",
        weekRange: "Week 36+",
        checkupName: "Weekly Checkups",
        description: "Blood pressure, fetal monitoring, cervical checks",
        importance: "Monitors readiness for labor",
      ),
    ];
  }
}