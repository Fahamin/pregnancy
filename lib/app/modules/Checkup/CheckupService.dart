import '../../../model/PregnancyCheckup.dart';

class CheckupService {
  static List<PregnancyCheckup> getCheckupList() {
    return [
      // First Trimester (1-12 weeks)
      PregnancyCheckup(
        trimester: "First",
        weekRange: "Weeks 4-8",
        checkupName: "Initial Prenatal Visit",
        description: "Complete physical exam, medical history review, blood tests, urine tests",
        importance: "Establishes baseline health, detects potential risks",
      ),
      PregnancyCheckup(
        trimester: "First",
        weekRange: "Week 8-12",
        checkupName: "Dating Ultrasound",
        description: "Confirms pregnancy, checks fetal heartbeat, estimates due date",
        importance: "Verifies viable pregnancy, detects multiples",
      ),
      PregnancyCheckup(
        trimester: "First",
        weekRange: "Week 10-12",
        checkupName: "NIPT (Non-Invasive Prenatal Testing)",
        description: "Blood test screening for chromosomal abnormalities",
        importance: "Early detection of Down syndrome & other conditions",
      ),

      // Second Trimester (13-28 weeks)
      PregnancyCheckup(
        trimester: "Second",
        weekRange: "Week 16-20",
        checkupName: "Anatomy Scan",
        description: "Detailed ultrasound examining fetal anatomy",
        importance: "Checks organ development, detects abnormalities",
      ),
      PregnancyCheckup(
        trimester: "Second",
        weekRange: "Week 24-28",
        checkupName: "Glucose Screening",
        description: "Blood test for gestational diabetes",
        importance: "Early detection prevents complications",
      ),
      PregnancyCheckup(
        trimester: "Second",
        weekRange: "Week 28",
        checkupName: "Rh Factor Test",
        description: "Blood test for Rh incompatibility",
        importance: "Prevents immune response in future pregnancies",
      ),

      // Third Trimester (29-40 weeks)
      PregnancyCheckup(
        trimester: "Third",
        weekRange: "Week 32-36",
        checkupName: "Group B Strep Test",
        description: "Vaginal/rectal swab for bacteria screening",
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