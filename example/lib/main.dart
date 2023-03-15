// Developed by Eng Mouaz M AlShahmeh
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';

void main() {
  // It is required to add the following to run the meta_seo package correctly
  // before the running of the Flutter app
  if (kIsWeb) {
    MetaSEO().seoMetaConfig();
  }
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
      // Add meta seo data for web app as you want
      meta.seoAuthor(author: 'Eng Mouaz M AlShahmeh');
      meta.seoDescription(description: 'Meta SEO Web Example');
      meta.seoKeywords(keywords: 'Flutter, Dart, SEO, Meta, Web');
    }

    return const Scaffold(
      body: Center(child: Text('Meta SEO Web Example')),
    );
  }
}
