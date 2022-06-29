import 'dart:math';
import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/decoration.dart';
import 'dart:math' as math;
import 'package:qkard/common/widgets/icon_widget.dart';
import 'package:qkard/common/widgets/images_widget.dart';
import 'package:qkard/common/widgets/padding_margin.dart';
import 'package:qkard/utils/colors.dart';

@immutable
class ExampleExpandableFab extends StatelessWidget {
  const ExampleExpandableFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingOnly(bottom: 15.0),
      child: Container(
        height: 200,
        width: 200,
        margin: paddingOnly(bottom: 15.0),
        child: const ExpandableFab(
          distance: 50.0,
          initialOpen: false,
          children: [
            ActionButton(
              // onPressed: () => homePageBloc.getHomePageTab(payReceiveScreen),
              icon: Icons.arrow_upward_rounded,
              iconRotate: pi * 1.75,
            ),
            ActionButton(
              // onPressed: () => homePageBloc.getHomePageTab(scanScreen),
              // image: qrcodeImage,
              icon: Icons.arrow_upward_rounded,
            ),
            ActionButton(
              // onPressed: () => homePageBloc.getHomePageTab(payReceiveScreen),
              icon: Icons.arrow_downward_rounded,
              iconRotate: pi * 1.75,
            ),
          ],
        ),
      ),
    );
  }
}

@immutable
class ExpandableFab extends StatefulWidget {
  const ExpandableFab({
    Key? key,
    this.initialOpen,
    required this.distance,
    required this.children,
  }) : super(key: key);

  final bool? initialOpen;
  final double distance;
  final List<Widget> children;

  @override
  _ExpandableFabState createState() => _ExpandableFabState();
}

class _ExpandableFabState extends State<ExpandableFab>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _expandAnimation;
  bool _open = false;

  @override
  void initState() {
    super.initState();
    _open = widget.initialOpen ?? false;
    _controller = AnimationController(
      value: _open ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    _expandAnimation = CurvedAnimation(
      curve: Curves.fastOutSlowIn,
      reverseCurve: Curves.easeOutQuad,
      parent: _controller,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() {
      _open = !_open;
      if (_open) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        _buildTapToCloseFab(),
        ..._buildExpandingActionButtons(),
        _buildTapToOpenFab(),
      ],
    );
  }

  Widget _buildTapToCloseFab() {
    return Transform.rotate(
      angle: pi / 4,
      child: Container(
        padding: paddingAll(5.0),
        decoration: circularBoxDecoration(
          circularRadius: 10.0,
          containerColor: white,
        ),
        child: ActionButton(
          onPressed: _toggle,
          icon: Icons.add,
          angle: -pi / 2,
          // angle: math.pi,
        ),
      ),
    );
  }

  List<Widget> _buildExpandingActionButtons() {
    final children = <Widget>[];
    final count = widget.children.length;
    final step = 180.0 / (count - 1);
    for (var i = 0, angleInDegrees = 0.0;
        i < count;
        i++, angleInDegrees += step) {
      children.add(
        _ExpandingActionButton(
          directionInDegrees: angleInDegrees,
          maxDistance: widget.distance,
          progress: _expandAnimation,
          child: widget.children[i],
        ),
      );
    }
    return children;
  }

  Widget _buildTapToOpenFab() {
    return IgnorePointer(
      ignoring: _open,
      child: AnimatedContainer(
        transformAlignment: Alignment.center,
        transform: Matrix4.diagonal3Values(
          _open ? 0.7 : 1.0,
          _open ? 0.7 : 1.0,
          1.0,
        ),
        duration: const Duration(milliseconds: 250),
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
        child: AnimatedOpacity(
          opacity: _open ? 0.0 : 1.0,
          curve: const Interval(0.25, 1.0, curve: Curves.easeInOut),
          duration: const Duration(milliseconds: 250),
          child: Transform.rotate(
            angle: pi / 4,
            child: Container(
              padding: paddingAll(5.0),
              decoration: circularBoxDecoration(
                circularRadius: 10.0,
                containerColor: white,
              ),
              child: ActionButton(
                onPressed: _toggle,
                icon: Icons.close,
                angle: pi / 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

@immutable
class _ExpandingActionButton extends StatelessWidget {
  const _ExpandingActionButton({
    Key? key,
    required this.directionInDegrees,
    required this.maxDistance,
    required this.progress,
    required this.child,
  }) : super(key: key);

  final double directionInDegrees;
  final double maxDistance;
  final Animation<double> progress;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: progress,
      builder: (context, child) {
        final offset = Offset.fromDirection(
          directionInDegrees * (math.pi / 180.0),
          progress.value * maxDistance,
        );
        return Positioned(
          right: 75.0 + offset.dx,
          bottom: 50.0 + offset.dy,
          child: Transform.rotate(
            angle: (1.0 - progress.value) * math.pi / 2,
            child: child!,
          ),
        );
      },
      child: FadeTransition(
        opacity: progress,
        child: child,
      ),
    );
  }
}

@immutable
class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    this.onPressed,
    this.icon,
    this.image,
    this.iconRotate = 0,
    this.angle = math.pi / 4,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final IconData? icon;
  final String? image;
  final double angle;
  final double iconRotate;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          height: 50,
          width: 50,
          padding: paddingAll(5.0),
          decoration: circularBoxDecoration(
            circularRadius: 10.0,
            containerColor: primaryColor,
          ),
          // transform: Matrix4.rotationZ(0.8),
          child: Transform.rotate(
            angle: iconRotate,
            child: icon == null
                ? Images.instance.assetImage(
                    name: image!,
                    color: white,
                    width: 20.0,
                    height: 20.0,
                    fit: BoxFit.fill,
                  )
                : icons(icon: icon!, color: white),
          ),
        ),
      ),
    );
  }
}
