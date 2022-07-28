import 'package:flutter/material.dart';
import 'package:screenTest/widget/app_text.dart';

class HeightTestScreen extends StatefulWidget {
  const HeightTestScreen({Key key}) : super(key: key);

  static const route = 'Height Test Screen';

  static Future<dynamic> to(BuildContext context) {
    return Navigator.pushNamed(context, route);
  }

  @override
  _HeightTestScreenState createState() => _HeightTestScreenState();
}

class _HeightTestScreenState extends State<HeightTestScreen> {
  bool showAppBar = false;

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: showAppBar
          ? AppBar(
              title: AppText.withFontSize('Ini Adalah Appbar', 16),
            )
          : null,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showAppBar = !showAppBar;
          });
        },
        child: Icon(showAppBar ? Icons.visibility_off : Icons.visibility),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [100, 80, 60, 40, 20]
            .map<Widget>((e){

          final height= MediaQuery.of(context).size.height * e / 100;
          final width=  MediaQuery.of(context).size.width * 0.18;
              return Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  height: height,
                  width: width,
                  color: Colors.deepPurple.withBlue((e / 100 * 255).floor()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText.withFontSize(
                        '$e%',
                        20,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 8),
                      AppText.withFontSize(
                        '${height.floor()} px',
                        16,
                        color: Colors.white.withOpacity(0.66),
                      ),
                    ],
                  ),
                );
  }
        )
            .toList(),
      ),
    );
  }
}
