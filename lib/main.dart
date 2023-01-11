import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:aws_amplify_todoapp/screens/home.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'amplifyconfiguration.dart';
Future<void> _configureAmplify() async {
  try{
    final amplifyAuthCognito = AmplifyAuthCognito();
    await Amplify.addPlugins([amplifyAuthCognito]);
    await  Amplify.configure(amplifyconfig);
  }catch(e){
    print('Failed to configure Amplify $e');
  }}
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _configureAmplify();

  runApp(
    // DevicePreview(
    //     builder: (context) =>
        const MyApp()); // Wrap your app
  //);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Authenticator(
      child: MaterialApp(
        builder: Authenticator.builder(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}
