import 'package:appwrite_web/feature/home/screen/homepage.dart';
import 'package:appwrite_web/routing/namesroute.dart';
import 'package:get/get.dart';

class WebRouting {
  List<GetPage<dynamic>> getPages() {
    return [
      GetPage(
        name: NamesRoutes.home,
        page: ()=> const HomePage(),
      ),
    ];
  }
}
