import 'package:matule/layers/presentation/screens/screen1.dart';
import 'package:matule/layers/presentation/screens/screen2.dart';
import 'package:matule/layers/presentation/screens/screen3.dart';
import 'package:matule/layers/presentation/screens/user_screen.dart';
import 'package:matule/layers/presentation/screens/no_password_srceen.dart';
import 'package:matule/layers/presentation/screens/petuh_screen.dart';
import 'package:matule/layers/presentation/screens/registration_screen.dart';
import 'package:matule/layers/presentation/screens/hello_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/layers/presentation/screens/petuh_screen.dart';

class RouterConfigGO {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SigninScreen(),
        routes: [
          GoRoute(
            path: '/pass',
            builder: (context, state) => ForgotPasswordsrceen(),
            routes: [],
          ),
          GoRoute(
            path: '/create',
            builder: (context, state) => CreateUser(),
            routes: [],
          ),
          GoRoute(
            path: '/mailr',
            builder: (context, state) => MailRegistration(),
            routes: [],
          ),
          GoRoute(
            path: '/home',
            builder: (context, state) => PetuhScreen(),
            routes: [],
          ),

          GoRoute(
            path: '/',
            builder: (context, state) => SigninScreen(),
            routes: [],
          ),

          GoRoute(
            path: '/gg',
            builder: (context, state) => Screen2(),
            routes: [],
          ),
          GoRoute(
            path: '/ggg',
            builder: (context, state) => Screen3(),
            routes: [],
          ),
        ],
      ),
    ],
  );
}
