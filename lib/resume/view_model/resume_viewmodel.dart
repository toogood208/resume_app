import 'package:flutter/cupertino.dart';
import 'package:resume_app/resume/model/resume_model.dart';
import 'package:resume_app/services/api_service.dart';

class ResumeViewModel with ChangeNotifier {
  var api = ApiService();

  Future<List<Steps>> getResume() async {
    return await api.getSteps();
  }

  Future<List<Steps>> getProfile() async {
    return await api.getPortfolioSteps();
  }

}
