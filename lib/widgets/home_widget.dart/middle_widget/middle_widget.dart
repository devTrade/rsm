import 'package:flutter/material.dart';
import 'package:rsm/app/shared/ui_helper.dart';

class MiddleAreaWidget extends StatelessWidget {
  const MiddleAreaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Personalize your fincancial plan ',
                    style: Theme.of(context).textTheme.headline5,
                  )),
            ),
            Expanded(
              flex: 5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image(image: AssetImage('assets/img.png')),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Column(
                        children: [
                          Text(
                              'Take our decorating style quiz to discover your unique style, so you can start designing your dream home.At Havenly, \n \n we believe your home should reflect you. We’ll match you with the perfect designer—no matter what your style or budget is.'),
                          verticalSpaceLarge,

                          ButtonBar(
                            alignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              TextButton(
                                child: Text('CANCEL'),
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 150,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Get Started'),
                                ),
                              )
                            ],
                          ),
                          // RSButton(title: 'Start'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
