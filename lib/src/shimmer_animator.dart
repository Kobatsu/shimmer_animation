import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:shimmer_animation/src/custom_shimmer_animation.dart';

class ShimmerAnimator extends StatefulWidget {
  final Color color;
  final double opacity;
  final Duration duration;
  final Duration interval;
  final Duration? delay;
  final ShimmerDirection direction;
  final Widget child;

  ShimmerAnimator(
      {required this.child,
      required this.color,
      required this.opacity,
      required this.duration,
      required this.interval,
      required this.direction,
      this.delay});

  @override
  _ShimmerAnimatorState createState() => _ShimmerAnimatorState();
}

//Animator state controls the animation using all the parameters defined
class _ShimmerAnimatorState extends State<ShimmerAnimator>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: widget.duration);
    animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: controller,
      curve: Interval(0, 0.6, curve: Curves.decelerate),
    ))
      ..addListener(() async {
        if (controller.isCompleted)
          Future.delayed(widget.interval,
              () => mounted ? controller.forward(from: 0) : null);
        setState(() {});
      });
    if (widget.delay == null) {
      controller.forward();
    } else {
      Future.delayed(
          widget.delay!, () => mounted ? controller.forward() : null);
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: CustomSplashAnimation(
        context: context,
        position: animation.value,
        color: widget.color,
        opacity: widget.opacity,
        begin: widget.direction.begin,
        end: widget.direction.end,
      ),
      child: widget.child,
    );
  }
}
