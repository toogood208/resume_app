import 'package:url_launcher/url_launcher.dart';

class LaunchUrlService {
  launchLink({required String link}) async {
    final url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    }
  }
}
