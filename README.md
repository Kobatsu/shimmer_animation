# Shimmer Animation

[![pub package](https://img.shields.io/pub/v/shimmer_animation.svg)](https://pub.dev/packages/shimmer_animation)
![Libraries.io dependency status for latest release](https://img.shields.io/librariesio/release/pub/shimmer_animation)
![License](https://img.shields.io/github/license/maddyb99/shimmer_animation)

_**Supports Null Safety**_

This shimmer animation widget can help you bring simple yet beautiful skeleton loaders to your project with ease.

Shimmer is very widely used as the default animation for skeleton loaders or placeholder widgets throughout the development community.
Therefore, having an easy to use, yet customizable widget ready to use for Android, iOS and Web, gives developers an advantage to focus on their actual functionality, let shimmer make the loading experience smoother.

## Examples

An example can be found in the example directory of this repository.

A list of detailed examples can be found in this [Examples Repository](https://github.com/maddyb99/shimmer_examples)

|  Full Screen |  Loading Widgets | Loading Buttons |
|---|---|---|
|<img  height="400" src="https://github.com/maddyb99/shimmer_animation/blob/master/screenshots/shimmer.gif?raw=true">| <img height="400" src="https://github.com/maddyb99/shimmer_examples/blob/master/loading_cards/screenshots/shimmer.gif?raw=true">| <img height="400" src="https://github.com/maddyb99/shimmer_examples/blob/master/buttons/screenshots/shimmer.gif?raw=true">|

## How to use

Add `shimmer_animation` to `pubspec.yaml` of your project:

```yaml
dependencies:
  shimmer_animation: ^2.1.0
```

Import it in your Dart code:

```dart
import 'package:shimmer_animation/shimmer_animation.dart';
```

Wrap any widget with `Shimmer()` widget to apply animaton:

```dart
  Shimmer(
    child: Container(
      color: Colors.deepPurple,
    ),
  ),
```

A number of parameters can be passed to customise the look and feel of this animation:

```dart
  Shimmer(
    duration: Duration(seconds: 3), //Default value
    interval: Duration(seconds: 5), //Default value: Duration(seconds: 0)
    color: Colors.white, //Default value
    colorOpacity: 0, //Default value
    enabled: true, //Default value
    direction: ShimmerDirection.fromLTRB(),  //Default Value
    child: Container(
      color: Colors.deepPurple,
    ),
  ),
```


### Parameters:

- @required _**child**_ : accepts a child _Widget_ over which the animation is to be displayed
- _**color**_ : accepts a parameter of type _Color_ and sets the color of the animation overlay. Default value is _Colors.white_
- _**color**_ : accepts a parameter of type _double_ and sets the Opacity of the color of the animation overlay. Default value is _0.3_
- _**enabled**_ : accepts a _bool_ which toggles the animation on/off. Default value is _true_
- _**duration**_ : accepts a _Duration_ that would be the time period of animation. Default value is _Duration(seconds: 3)_
- _**interval**_ : accepts a _Duration_ that would be the interval between the repeating animation. Default value is _Duration(seconds: 0)_ i.e. no interval
- _**direction**_ : accepts a _ShimmerDirection_ and aligns the animation accordingly. Default value is _ShimmerDirection.fromLBRT()_

A detailed API Reference can be found [here](https://pub.dev/documentation/shimmer_animation/latest/shimmer_animation/shimmer_animation-library.html).

## License

[MIT License](https://github.com/maddyb99/shimmer_animation/blob/master/LICENSE).

[Shimmer Animation]: #shimmer-animation
[Examples]: #examples
[How to use]: #how-to-use
[Parameters]: #parameters
[License]: #license

