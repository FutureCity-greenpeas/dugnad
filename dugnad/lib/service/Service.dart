import 'package:flutter/material.dart';

bool visibility500 = true;
bool visibility1 = true;
bool visibility15 = true;
bool visibility18 = true;
int DistanceSliderValue = -1;

class Service extends StatefulWidget {
  int slider = -1;
  Service({Key key, this.slider}) : super(key: key);

  @override
  _ServiceState createState() => _ServiceState(slider: slider);
}

class _ServiceState extends State<Service> {
  int slider = -1;
  _ServiceState({this.slider}) {}

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DistanceSliderValue = this.slider;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage('assets/images/lakokor.png'),
                backgroundColor: Colors.transparent,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text(
                "Közeli Szolgáltatások",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Alegreya"),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Jelenleg még nem elérhető a hozzáadás',
        child: Icon(Icons.add),
      ),
      body: Center(child: _list().build(context)),
    );
  }
}

Widget searchField = Container(
  height: 80.0,
  padding: EdgeInsets.only(bottom: 5, top: 5, left: 30, right: 30),
  child: TextField(
      decoration: new InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF69B09C), width: 5.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF69B09C), width: 2.0),
          ),
          border: new OutlineInputBorder(
            borderSide: new BorderSide(color: Color(0xFF69B09C)),
          ),
          hintText: 'Mit is keresel?',
          helperText: 'Keep it short, this is just a demo.',
          labelText: 'Fodrász',
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            height: 2.0,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Color(0xFF69B09C),
          ),
          prefixText: ' ')),
);

class _list extends State {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        searchField,
        DistanceSlider(),
        Visibility(
            visible: visibility500,
            child: MarketItem(
                title: 'Vivis beauty and hair salon',
                sub: 'fodrász, köröm, smink...',
                distance: '500 m',
                imagepath: 'assets/images/beauty1.jpg')),
        Visibility(
            visible: visibility1,
            child: MarketItem(
                title: 'Napsugár',
                sub: 'fodrász',
                distance: '1 km',
                imagepath: 'assets/images/beauty2.jpg')),
        Visibility(
            visible: visibility15,
            child: MarketItem(
                title: 'A szépségért szenvedni',
                sub: 'haj, kozmetika ...',
                distance: '1.5 km',
                imagepath: 'assets/images/beauty3.jpg')),
        Visibility(
            visible: visibility18,
            child: MarketItem(
                title: 'Soma haha',
                sub: 'férfifodrészat',
                distance: '1.8 km',
                imagepath: 'assets/images/beauty4.png')),
      ],
      mainAxisAlignment: MainAxisAlignment.start,
    );
  }
}

class DistanceSlider extends StatefulWidget {
  @override
  _DistanceSliderState createState() {
    return _DistanceSliderState();
  }
}

class _DistanceSliderState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '0 m',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                new Expanded(
                  child: Slider(
                      value: DistanceSliderValue != -1
                          ? DistanceSliderValue.toDouble()
                          : 1800,
                      min: 1.0,
                      max: 2000.0,
                      divisions: 100,
                      activeColor: Color(0xFF69B09C),
                      inactiveColor: Color(0xFFC4C4C4),
                      label: (DistanceSliderValue < 1000)
                          ? DistanceSliderValue.toString() + ' m'
                          : (DistanceSliderValue / 1000).toString() + 'km',
                      onChanged: (double newValue) {
                        setState(() {
                          DistanceSliderValue = newValue.round();
                          (DistanceSliderValue > 499)
                              ? visibility500 = true
                              : visibility500 = false;
                          (DistanceSliderValue > 999)
                              ? visibility1 = true
                              : visibility1 = false;
                          (DistanceSliderValue > 1499)
                              ? visibility15 = true
                              : visibility15 = false;
                          (DistanceSliderValue > 1799)
                              ? visibility18 = true
                              : visibility18 = false;
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Service(slider: DistanceSliderValue)));
                        });
                      },
                      semanticFormatterCallback: (double newValue) {
                        return '${newValue.round()} ';
                      }),
                ),
                Text(
                  '2 km',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ]),
        ),
      ),
    );
  }
}

class RoundSliderThumbShape extends SliderComponentShape {
  const RoundSliderThumbShape({
    this.enabledThumbRadius = 10.0,
    this.disabledThumbRadius,
  });

  final double enabledThumbRadius;

  final double disabledThumbRadius;
  double get _disabledThumbRadius => disabledThumbRadius ?? enabledThumbRadius;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(
        isEnabled == true ? enabledThumbRadius : _disabledThumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double> activationAnimation,
    @required Animation<double> enableAnimation,
    bool isDiscrete,
    TextPainter labelPainter,
    Size sizeWithOverflow,
    /*The missing link*/
    double textScaleFactor,
    RenderBox parentBox,
    @required SliderThemeData sliderTheme,
    TextDirection textDirection,
    double value,
  }) {
    assert(context != null);
    assert(center != null);
    assert(enableAnimation != null);
    assert(sliderTheme != null);
    assert(sliderTheme.disabledThumbColor != null);
    assert(sliderTheme.thumbColor != null);

    final Canvas canvas = context.canvas;
    final Tween<double> radiusTween = Tween<double>(
      begin: _disabledThumbRadius,
      end: enabledThumbRadius,
    );
    final ColorTween colorTween = ColorTween(
      begin: sliderTheme.disabledThumbColor,
      end: sliderTheme.thumbColor,
    );
    canvas.drawCircle(
      center,
      radiusTween.evaluate(enableAnimation),
      Paint()..color = colorTween.evaluate(enableAnimation),
    );
  }
}

class _market extends State {
  String title;
  String sub;
  String distance;
  String imagepath;

  _market({this.title, this.sub, this.distance, this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 0, top: 5),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 65,
              padding: const EdgeInsets.only(bottom: 1),
              child: Expanded(
                child: Card(
                  elevation: 0.0,
                  color: Color(0xFF253334),
                  margin: EdgeInsets.only(bottom: 0.0),
                  child: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          this.imagepath,
                          width: 60.0,
                          height: 60.0,
                        ),
                      ),
                      title: Text(
                        this.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      subtitle: Text(
                        this.sub,
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Text(
                        this.distance,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MarketItem extends StatefulWidget {
  String title;
  String sub;
  String distance;
  String imagepath;

  MarketItem({this.title, this.sub, this.distance, this.imagepath});

  @override
  _market createState() {
    return _market(
        title: this.title,
        sub: this.sub,
        distance: this.distance,
        imagepath: this.imagepath);
  }
}
