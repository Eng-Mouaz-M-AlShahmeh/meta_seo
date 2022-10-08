# Meta Seo

Flutter package for Meta SEO.

## Screenshots

<img width="1420" alt="Screen Shot 2022-10-08 at 12 01 33 PM" src="https://user-images.githubusercontent.com/86870601/194700597-d6e51757-60a8-451d-b359-2e211aad2929.png">


## About:
- Meta SEO is package for adding meta data for html document in head tag
  which meta tags or meta data make search engine optimization for web apps.

## Installation and Basic Usage

First: Add the bellow MetaSEO JS functions into web/index.html

```
.....
  <script>
      window.addEventListener('load', function(ev) {
      .....

  // add  MetaSEO JS functions here
  function seoNameJS(name, content) {
      var meta = document.createElement('meta');
      meta.setAttribute('name', name);
      meta.setAttribute('content', content);
      document.getElementsByTagName('head')[0].appendChild(meta);
  }

  function seoPropertyJS(property, content) {
      var meta = document.createElement('meta');
      meta.setAttribute('property', property);
      meta.setAttribute('content', content);
      document.getElementsByTagName('head')[0].appendChild(meta);
  }

  function seoAttributeJS(key, val) {
      var meta = document.createElement('meta');
      meta.setAttribute(key, val);
      document.getElementsByTagName('head')[0].appendChild(meta);
  }
  </script>
</body>
</html>
```

Second: Add to pubspec.yaml:

```yaml
dependencies:
  meta_seo: ^1.0.1
```

Then import it to your project:

```dart
import 'package:meta_seo/meta_seo.dart';
```

Finally add **MetaSEO** into your target web pages:

```dart
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
```

## Thank you

Make sure to check out [example project](https://github.com/Eng-Mouaz-M-AlShahmeh/meta_seo/tree/main/example).
If you find this package useful, star my GitHub [repository](https://github.com/Eng-Mouaz-M-AlShahmeh/meta_seo).

Flutter plugin was developed by: [Eng Mouaz M. Al-Shahmeh](https://twitter.com/mouaz_m_shahmeh)
