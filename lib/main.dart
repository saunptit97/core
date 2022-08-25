import 'package:base_getx/base.dart';
import 'package:flutter/material.dart';
import 'package:travel/config/theme.dart';
import 'package:travel/routes/config.dart';
import 'package:travel/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Config.setting();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: GetMaterialApp(
        theme: defaultTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        locale: const Locale('vi', 'VN'),
        initialRoute: RouteNames.initial,
        debugShowCheckedModeBanner: false,
        getPages: Pages.pages(),
      ),
    );
  }
}
