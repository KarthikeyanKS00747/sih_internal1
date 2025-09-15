import 'package:flutter/material.dart';
import 'package:sih_internal_app_1/ui/home/view_model/home_view_model.dart';
import 'routes/router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => HomeViewModel())],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) {
        return MaterialApp.router(
          theme: ThemeData.light(),
          routerConfig: router,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
