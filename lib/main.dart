import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';
import 'package:user_app/utils/app_colors.dart';
import 'package:user_app/utils/global_keys.dart';
import 'package:user_app/utils/provider_dependencies.dart';
import 'package:user_app/utils/router.dart';
import 'package:user_app/utils/shared_pre.dart';
import 'package:flutter/cupertino.dart' as cupertino;


Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future.delayed(Duration(seconds: 3));
  runApp(const MyApp());
  FlutterNativeSplash.remove();
  SharedPre().init();

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MultiProvider(
      providers: ProviderHandler().providersList(),
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: GlobalLoaderOverlay(
          overlayColor: AppColor.appBlack.withOpacity(0.4),
          overlayWidgetBuilder:(progress)=>const Center(child: cupertino.CupertinoActivityIndicator(color:Colors.black,radius: 20)),
          useDefaultLoading: false,
          child: MaterialApp(
            initialRoute: initialRoute,
            onGenerateRoute: generateRouteNew,
            navigatorKey: GlobalVariable.navState,
            title: 'User App',
            navigatorObservers: [routeObserver],
            debugShowCheckedModeBanner: false,
          ),
        ),
      ),
    );
  }
}

