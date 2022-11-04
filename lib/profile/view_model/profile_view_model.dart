import 'package:flutter/cupertino.dart';
import 'package:resume_app/services/launch_url_service.dart';

class ProfileViewModel with ChangeNotifier {
  var launch = LaunchUrlService();

}
