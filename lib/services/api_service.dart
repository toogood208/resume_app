import '../resume/model/resume_model.dart';

class ApiService{
  Future<List<Steps>> getSteps() async {
  return [
    Steps('Zuri Internship', "Aug 2021-Nov2021",'Develop Mobile App at Zuri Internship.'),
    Steps('HNG9',"NOV 2022-Present",
        'Develop Mobile App at Zuri Internship..'),
        Steps('Codeclan Intern',"NOV 2022-Present",
        'Develop Mobile App at Zuri Internship..'),
  ];
}

Future<List<Steps>> getPortfolioSteps() async {
  return [
    Steps('Ajocard Sales Kit', "app info: ",'A sales kit for ajocard limited'),
    Steps('Leads Generator',"app info:",
        'A simple leads generator for marketing teams'),
        Steps('Checkit',"app info:",
        'A simple app that compares prices of various product'),
        Steps('Weather App',"app info:",
        'A Simple App to help out with your weather'),
         Steps('Motivation',"app info:",
        'A simple App of moltivation to keep you going in your week days'),
  ];
}
}