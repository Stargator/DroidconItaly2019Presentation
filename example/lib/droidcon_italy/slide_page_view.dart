import 'package:example_flutter/droidcon_italy/animations/android_animation_widget.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:example_flutter/droidcon_italy/animations/animated_builder.dart';
import 'package:example_flutter/droidcon_italy/animations/fade_animation_animated_widget.dart';
import 'package:example_flutter/droidcon_italy/animations/fade_transition_example.dart';
import 'package:example_flutter/droidcon_italy/animations/gravity_example.dart';
import 'package:example_flutter/droidcon_italy/animations/move_icon_animated_widget.dart';
import 'package:example_flutter/droidcon_italy/flutter-animations/lib/main.dart';
import 'package:example_flutter/droidcon_italy/styles.dart';
import 'package:example_flutter/droidcon_italy/widgets/base_slide_widget.dart';
import 'package:example_flutter/droidcon_italy/widgets/center_statement_widget.dart';
import 'package:example_flutter/droidcon_italy/widgets/intro_slide.dart';
import 'package:example_flutter/droidcon_italy/widgets/title_subtitle_widget.dart';
import 'package:flare_flutter/flare_actor.dart' show FlareActor;

///
/// Main Slide Widget
///
class SlidePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          BaseSlideWidget(
            mainContentWidget: EntrySlide(),
          ),
          BaseSlideWidget(
            mainContentWidget: AboutMeSlide(),
          ),
          BaseSlideWidget(
            mainContentWidget: CenterStatementWidget('What is Flutter?'),
          ),
          BaseSlideWidget(
            mainContentWidget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  'assets/reflectly.gif',
                  width: 350,
                ),
                Image.asset(
                  'assets/history.gif',
                  width: 350,
                ),
                Image.asset(
                  'assets/flutter_gallery.gif',
                  width: 350,
                ),
              ],
            ),
          ),
          BaseSlideWidget(
            mainContentWidget:
                CenterStatementWidget('Why animations are important?'),
          ),
          BaseSlideWidget(
            mainContentWidget: CenterStatementWidget('Animations in Flutter'),
          ),
          BaseSlideWidget(
            mainContentWidget: TitleSubtitleWidget(
              titleText: 'Animation Types',
              subtitleElements: const [
                'Tween animations',
                'Physics-based animations'
              ],
            ),
          ),
          BaseSlideWidget(
            mainContentWidget: TitleSubtitleWidget(
              titleText: 'Base concepts to create an animation',
            ),
          ),
          BaseSlideWidget(
            mainContentWidget: TitleSubtitleWidget(
              titleText: 'Animation<T>',
              subtitleElements: const [
                'The primary building block of the animation system is the Animation class.',
                'Animation object knows nothing about what is onscreen. An Animation is an abstract class that understands its current value and its state (completed or dismissed).'
              ],
            ),
          ),
          BaseSlideWidget(
            mainContentWidget: TitleSubtitleWidget(
              titleText: 'AnimationController',
              subtitleElements: const [
                'As well as being an animation itself, an AnimationController lets you control the animation.',
                'By default, an AnimationController linearly produces the numbers from 0.0 to 1.0 during a given duration.',
                'Once you’ve created an animation controller, you can start building other animations based on it.',
              ],
            ),
          ),
          BaseSlideWidget(
            mainContentWidget: FadeAnimationExample(),
          ),
          BaseSlideWidget(
            mainContentWidget: TitleSubtitleWidget(
              titleText: 'AnimatedWidget',
              subtitleElements: const [
                'The AnimatedWidget base class allows you to separate out the core widget code from the animation code. ',
                'AnimatedWidget doesn’t need to maintain a State object to hold the animation. '
              ],
            ),
          ),
          BaseSlideWidget(
            mainContentWidget:
                SizedBox.expand(child: FadeAnimationAnimatedWidget()),
          ),
          BaseSlideWidget(
            mainContentWidget: TitleSubtitleWidget(
              titleText: 'Tween',
              subtitleElements: const [
                'If you need a different range or a different data type, you can use a Tween to configure an animation to interpolate to a different range or data type.',
                'Interpolates between its begin and end values.',
                'CurveTween, ColorTween, IntTween, RectTween...'
              ],
            ),
          ),
          BaseSlideWidget(
            mainContentWidget: TitleSubtitleWidget(
              titleText: 'Curve',
              subtitleElements: const [
                'Easing curves are used to adjust the rate of change of an animation over time.',
                'It is allowing them to speed up and slow down, rather than moving at a constant rate.'
              ],
            ),
          ),
          BaseSlideWidget(
              mainContentWidget: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset('assets/images/curve_bounce_in.png'),
                  Image.asset('assets/images/curve_bounce_in_out.png'),
                  Image.asset('assets/images/curve_bounce_out.png'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset('assets/images/curve_decelerate.png'),
                  Image.asset('assets/images/curve_fast_out_slow_in.png'),
                  Image.asset('assets/images/curve_ease_in.png'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset('assets/images/curve_ease_in_out.png'),
                  Image.asset('assets/images/curve_ease_out.png'),
                  Image.asset('assets/images/curve_elastic_in.png'),
                ],
              ),
            ],
          )),
          BaseSlideWidget(
            mainContentWidget: MoveIconAnimatedWidget(),
          ),
          BaseSlideWidget(
            mainContentWidget: TitleSubtitleWidget(
              titleText: 'AnimatedBuilder',
              subtitleElements: const [
                'AnimatedBuilder is useful for more complex widgets that wish to include an animation as part of a larger build function. ',
                'An AnimatedBuilder doesn’t know how to render the widget, nor does it manage the Animation object.',
                'An AnimatedBuilder understands how to render the transition.',
                'To use AnimatedBuilder, simply construct the widget and pass it a builder function.',
              ],
            ),
          ),
          BaseSlideWidget(
            mainContentWidget: AnimatedBuilderExampleWidget(),
          ),
          BaseSlideWidget(
            mainContentWidget: TitleSubtitleWidget(
              titleText: 'Physics-based animations',
              subtitleElements: const [
                'In physics-based animation, motion is modeled to resemble real-world behavior.',
                'There are simulators that you can use to immitate behaviour. GravitySimulation, SpringSimulation...'
              ],
            ),
          ),
          BaseSlideWidget(
            mainContentWidget: GravityExample(),
          ),
          BaseSlideWidget(
            mainContentWidget: TitleSubtitleWidget(
              titleText: 'Bonus: Flare!',
              subtitleElements: const [
                'Vector design and animation tool',
                'Free to use as part of the Open Design movement. You can create unlimited public files for free.',
                'Flare currently supports exporting for Flutter and for websites.'
              ],
            ),
          ),
          BaseSlideWidget(
            mainContentWidget: SizedBox.expand(
              child: Image.asset('assets/images/flare.png'),
            ),
          ),
          BaseSlideWidget(
            mainContentWidget: FlareActor(
              'flare_animation/droidcon_italy_first.flr',
              animation: 'Demo Mode',
            ),
          ),
          BaseSlideWidget(
            mainContentWidget: AndroidAnimationWidget()
          ),
          BaseSlideWidget(
            mainContentWidget: CenterStatementWidget('Conclusion'),
          ),
          BaseSlideWidget(
            mainContentWidget: Image.asset('assets/concept.gif'),
          ),
          BaseSlideWidget(
            mainContentWidget: MyApp(),
          ),
          BaseSlideWidget(
            mainContentWidget: TitleSubtitleWidget(
              titleText: 'What to do now?',
              subtitleElements: const [
                'Read the introduction document on flutter.io',
                'Check out the codelab',
                'Check the Flutter Medium page for the animations blog of Mikkel Ravn',
                'Check my blog post :)',
                'Start implementing.'
              ],
            ),
          ),
          BaseSlideWidget(
            mainContentWidget: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Center(
                    child: Text(
                      'Thank you',
                      style: mediumTitleStyle,
                    ),
                  ),
                  Text(
                    'Twitter: @salihgueler',
                    style: smallTitleStyle,
                  ),
                  Text(
                    'GitHub: @salihgueler',
                    style: smallTitleStyle,
                  ),
                  Text(
                    'E-mail: muhammedsalihguler@gmail.com',
                    style: smallTitleStyle,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AboutMeSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'About Me',
          style: largeTitleStyle,
        ),
        TextImageView('Android Engineer', 'assets/images/company.png'),
        TextImageView('Flutter and Dart GDE', 'assets/images/gde.png'),
      ],
    );
  }
}

class TextImageView extends StatelessWidget {
  final String text;
  final String image;

  TextImageView(this.text, this.image);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Text(
            text,
            style: mediumTitleStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 32,
            ),
            child: Image.asset(
              image,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}


