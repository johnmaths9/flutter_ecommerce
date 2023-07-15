import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/bloc/auth/auth_bloc.dart';
import 'package:ecommerce_app/bloc/product/product_bloc.dart';
import 'package:ecommerce_app/bloc/user/user_bloc.dart';
import 'package:ecommerce_app/config/app_router.dart';
import 'package:ecommerce_app/repositories/auth/auth_repos.dart';
import 'package:ecommerce_app/repositories/category/category_repos.dart';
import 'package:ecommerce_app/repositories/product/product_repos.dart';
import 'package:ecommerce_app/repositories/user/user_repos.dart';
import 'package:ecommerce_app/screens/auth/signin_screen.dart';
import 'package:ecommerce_app/screens/home/intro_screen.dart';
import 'package:ecommerce_app/screens/product/product_detail.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/cart/cart_bloc.dart';
import 'bloc/category/category_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepository(
              firebaseAuth: FirebaseAuth.instance,
              firestore: FirebaseFirestore.instance),
        ),
        RepositoryProvider(
          create: (context) =>
              UserRepository(firebaseFirestore: FirebaseFirestore.instance),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(
              authRepository: context.read<AuthRepository>(),
            )..add(InitializeAuthEvent()),
          ),
          BlocProvider(
            create: (context) => CartBloc()..add(CartStarted()),
          ),
          BlocProvider(
            create: (context) => CategoryBloc(categoryRepos: CategoryRepos())
              ..add(LoadCategories()),
          ),
          BlocProvider(
            create: (context) =>
                ProductBloc(productRepos: ProductRepos())..add(LoadProducts()),
          ),
          BlocProvider(
            lazy: false,
            create: (context) => UserBloc(
              authBloc: context.read<AuthBloc>(),
              userRepository: context.read<UserRepository>(),
            )..add(StartUserEvent()),
          ),
        ],
        child: MaterialApp(
          title: 'Ecommerce App',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: SplashScreen.routeName,
        ),
      ),
    );
  }
}
