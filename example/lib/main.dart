// Developed by Eng Mouaz M AlShahmeh
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

    // Define MetaSEO object with optional needed attributes
    MetaSEO meta = MetaSEO(
      author: 'Eng Mouaz M AlShahmeh',
      description: 'Meta SEO Web Example',
      keywords: 'Flutter, Dart, SEO, Meta, Web'
    );

    // add meta seo data for web app
    meta.seoAuthor();
    meta.seoDescription();
    meta.seoKeywords();

    return const Scaffold(
      body: Center(child: Text('Meta SEO Web Example')),
    );
  }
}

