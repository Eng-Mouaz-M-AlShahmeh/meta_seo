// Developed by Eng Mouaz M AlShahmeh
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Meta SEO Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Add MetaSEO just into Web platform condition
    if (kIsWeb) {
      // Define MetaSEO object
      MetaSEO meta = MetaSEO();
      // add meta seo data for web app as you want
      meta.seoAuthor('Eng Mouaz M AlShahmeh');
      meta.seoDescription('Meta SEO Web Example');
      meta.seoKeywords('Flutter, Dart, SEO, Meta, Web');
    }

    return const Scaffold(
      body: Center(child: Text('Meta SEO Web Example')),
    );
  }
}
