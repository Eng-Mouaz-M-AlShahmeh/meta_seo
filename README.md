# Meta Seo

Flutter package for Meta SEO.

## Screenshots

<img width="1420" alt="Screen Shot 2022-10-08 at 12 01 33 PM" src="https://user-images.githubusercontent.com/86870601/194700597-d6e51757-60a8-451d-b359-2e211aad2929.png">


## About:
- Meta SEO is package for adding meta data for html document in head tag
  which meta tags or meta data make search engine optimization for web apps.

## Installation and Basic Usage

First: Add to pubspec.yaml:

```yaml
dependencies:
  meta_seo: ^2.0.1
```

Second: import it to your project:

```dart
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
```

Then add the config **MetaSEO** method before the running of the Flutter app into main.dart file

```dart
void main() {
  // It is required to add the following to run the meta_seo package correctly
  // before the running of the Flutter app
  if (kIsWeb) {
    MetaSEO().seoMetaConfig();
  }
  runApp(const MyApp());
}
```

Finally add **MetaSEO** into your target web pages:

```dart
@override
Widget build(BuildContext context) {

  // Add MetaSEO just into Web platform condition
  if(kIsWeb) {
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
```

## Other example with GoRouter package

First: The same as before

Second: Add to pubspec.yaml:

```yaml
dependencies:
  meta_seo: ^2.0.1
  go_router: ^5.2.0 # Add the latest version
```

Then follow GoRouter configuration steps and latest add MetaSEO into your GoRouter as you want:

```dart
final router = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        // Add MetaSEO just into Web platform condition
        if(kIsWeb) {
          // Define MetaSEO object
          MetaSEO meta = MetaSEO();
          // add meta seo data for web app as you want
          meta.seoOGTitle('First Screen');
          meta.seoDescription('First Screen');
          meta.seoKeywords('Flutter, Dart, SEO, Meta, Web');
        }

        return const FirstScreen();
      },
    ),
    GoRoute(
      path: '/second_screen',
      builder: (BuildContext context, GoRouterState state) {
        // Add MetaSEO just into Web platform condition
        if(kIsWeb) {
          // Define MetaSEO object
          MetaSEO meta = MetaSEO();
          // add meta seo data for web app as you want
          meta.seoOGTitle('Second Screen');
          meta.seoDescription('Second Screen');
          meta.seoKeywords('Flutter, Dart, SEO, Meta, Web');
        }

        return const SecondScreen();
      },
    ),
  ],
);
```

Make sure to check out [go_router_meta_seo_example project](https://github.com/Eng-Mouaz-M-AlShahmeh/meta_seo_with_go_router_example).
If you find this package useful, star my example GitHub [repository](https://github.com/Eng-Mouaz-M-AlShahmeh/meta_seo_with_go_router_example).


## Thank you

Make sure to check out [example project](https://github.com/Eng-Mouaz-M-AlShahmeh/meta_seo/tree/main/example).
If you find this package useful, star my GitHub [repository](https://github.com/Eng-Mouaz-M-AlShahmeh/meta_seo).

Flutter plugin was developed by: [Eng Mouaz M. Al-Shahmeh](https://twitter.com/mouaz_m_shahmeh)
