import 'package:book_ly/core/function/custom_show_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl(context, String? url) async {
  if (url != null) {
    Uri _url = Uri.parse(url);
    if (await canLaunchUrl(_url)) {
      await launchUrl(_url);
    } else {
      customShowDialog(context, 'Canot Launch $url');
    }
  }
}
