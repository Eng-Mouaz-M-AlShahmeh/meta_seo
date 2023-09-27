<p align="center">
<image src="https://raw.githubusercontent.com/gist/Eng-Mouaz-M-AlShahmeh/aef287fb9b7775a3758bc141dd4e8dd6/raw/7e7569a2dab96a2beaff6ac78599859cc1b78057/meta_seo_logo.svg" height="150" alt="MetaSEO Package"/>
</p>

<p align="center">
<a href="https://pub.dev/packages/meta_seo"><img src="https://img.shields.io/pub/v/meta_seo.svg" alt="Pub"></a>
<a href="https://github.com/Eng-Mouaz-M-AlShahmeh/meta_seo" rel="ugc"><img src="https://img.shields.io/github/stars/Eng-Mouaz-M-AlShahmeh/meta_seo.svg?style=flat&amp;logo=github&amp;colorB=deeppink&amp;label=stars" alt="Star on Github"></a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License: MIT"></a>
</p>

---

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
  meta_seo: ^3.0.6
```

Second: import it to your project:

```dart
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
```

Then add the config **MetaSEO** method before the running of the Flutter app into main.dart file:

```dart
void main() {
  // It is required to add the following to run the meta_seo package correctly
  // before the running of the Flutter app
  if (kIsWeb) {
    MetaSEO().config();
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
    meta.author(author: 'Eng Mouaz M AlShahmeh');
    meta.description(description: 'Meta SEO Web Example');
    meta.keywords(keywords: 'Flutter, Dart, SEO, Meta, Web');
  }

  return const Scaffold(
    body: Center(child: Text('Meta SEO Web Example')),
  );
}
```

## Other example with GoRouter package

First: Add to pubspec.yaml:

```yaml
dependencies:
  meta_seo: ^3.0.6
  go_router: ^5.2.0 # Add the latest version
```

Second: The same as before and add the config **MetaSEO** method before the running of the Flutter app into main.dart file:

```dart
void main() {
  // It is required to add the following to run the meta_seo package correctly
  // before the running of the Flutter app
  if (kIsWeb) {
    MetaSEO().config();
  }
  runApp(const MyApp());
}
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
          meta.ogTitle(ogTitle: 'First Screen');
          meta.description(description: 'First Screen');
          meta.keywords(keywords: 'Flutter, Dart, SEO, Meta, Web');
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
          meta.ogTitle(ogTitle: 'Second Screen');
          meta.description(description: 'Second Screen');
          meta.keywords(keywords: 'Flutter, Dart, SEO, Meta, Web');
        }

        return const SecondScreen();
      },
    ),
  ],
);
```

## Extended **MetaSEO** tags

If you want to use Open Graph or Twitter Card meta tags

Note: You must be in live server not as a local host.

Note: The package delete any duplicated meta tags and keep the latest in order.

The same as before and if you want to use any tags does not exist into the main package 
methods just add extended tags as the below:

```dart
@override
Widget build(BuildContext context) {
  
    // Add MetaSEO just into Web platform condition
    if(kIsWeb) {
      // Define MetaSEO object
      MetaSEO meta = MetaSEO();
      // add meta seo open graph tags as you want
      meta.facebookAppID(facebookAppID: 'your_app_id');
      meta.ogTitle(ogTitle: 'Example Screen');
      meta.ogDescription(ogDescription: 'Example Screen Description');
      meta.ogImage(ogImage: 'https://example.com/example.png');

      // here you can add any tags does not exist in the package as this
      meta.propertyContent(property: 'og:site_name', content: 'example');
      
      // or if you want to add twitter card meta tags just as the following
      meta.twitterCard(twitterCard: TwitterCard.summaryLargeImage);
      meta.twitterTitle(twitterTitle: 'Example Screen');
      meta.twitterDescription(twitterDescription: 'Example Screen Description');
      meta.twitterImage(twitterImage: 'https://example.com/example.png');
    
      // here you can add any tags does not exist in the package as this
      meta.nameContent(name: 'twitter:site', content: '@mouaz_m_shahmeh');
    }
    
    return const Scaffold(
      body: Center(child: Text('Extended Meta SEO Web Example')),
    );
}
```

Make sure to check out [go_router_meta_seo_example project](https://github.com/Eng-Mouaz-M-AlShahmeh/meta_seo_with_go_router_example).
If you find this package useful, star my example GitHub [repository](https://github.com/Eng-Mouaz-M-AlShahmeh/meta_seo_with_go_router_example).

## Thank you

Make sure to check out [example project](https://github.com/Eng-Mouaz-M-AlShahmeh/meta_seo/tree/main/example).
If you find this package useful, star my GitHub [repository](https://github.com/Eng-Mouaz-M-AlShahmeh/meta_seo).

Flutter plugin was developed by: [Eng Mouaz M. Al-Shahmeh](https://twitter.com/mouaz_m_shahmeh)
