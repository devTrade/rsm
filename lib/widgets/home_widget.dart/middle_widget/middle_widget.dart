import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:rsm/app/shared/lib/delayed_widget.dart';
import 'package:rsm/ui/main/main_view_model.dart';

class MainHeadline extends StatelessWidget {
  const MainHeadline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: DelayedDisplay(
        delay: Duration(milliseconds: 300),
        child: Text(
          'Personalize your fincancial plan ',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      tablet: FittedBox(
        fit: BoxFit.contain,
        child: DelayedDisplay(
          delay: Duration(milliseconds: 300),
          child: Text(
            'Personalize your fincancial plan ',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}

class MainLeftImage extends StatelessWidget {
  const MainLeftImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Image(image: AssetImage('assets/img.png')),
      ),
    );
  }
}

class MainButtonBar extends StatelessWidget {
  final MainViewModel model;
  const MainButtonBar(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        TextButton(
          child: Text('CANCEL'),
          onPressed: () {},
        ),
        SizedBox(
          width: 150,
          child: ElevatedButton(
            onPressed: () {
              model.startOnBoarding();
            },
            child: Text('Get Started'),
          ),
        )
      ],
    );
  }
}

class MainRightSubText extends StatelessWidget {
  const MainRightSubText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        'Take our decorating style quiz to discover your unique style, so you can start designing your dream home.At Havenly, \n \n we believe your home should reflect you. We’ll match you with the perfect designer—no matter what your style or budget is.');
  }
}
