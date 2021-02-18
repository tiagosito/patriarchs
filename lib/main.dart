import 'package:flutter/material.dart';

import 'model/patriarch.dart';
import 'repository/patriarch_repository.dart';
import 'shared/patriarch_body_to_compare.dart';
import 'shared/patriarch_from.dart';

void main() {
  runApp(MyApp());
}

//930 - (130+105+90+70+65+162+65+187)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patriarch',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Patriarch'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Patriarch patriarchFrom;
  Patriarch patriarchToCompare;
  List<Patriarch> patriarchList = List<Patriarch>();

  @override
  void initState() {
    patriarchList = PatriarchRepository().fatchPatriarchList();
    patriarchFrom = patriarchList != null && patriarchList.length > 0 ? patriarchList[0] : null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width - 16,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: patriarchList.length,
                      itemBuilder: (context, index) {
                        var patriarch = patriarchList[index];
                        var color = patriarch.name == patriarchFrom?.name ? Colors.grey.withOpacity(0.3) : null;
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: buildPatriarchFrom(patriarch, color),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: patriarchList.length,
                itemBuilder: (context, index) {
                  var patriarchTo = patriarchList[index];
                  bool selected = patriarchToCompare?.name == patriarchTo.name ? true : false;
                  return patriarchTo.name != patriarchFrom.name
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: buildPatriarchToCompare(patriarchFrom, patriarchTo, selected),
                        )
                      : Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPatriarchFrom(Patriarch patriarch, Color color) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(7),
        ),
        child: InkWell(
          onTap: () {
            setState(() {
              patriarchFrom = patriarch;
            });
          },
          child: PatriarchFrom(color: color, patriarch: patriarch),
        ),
      ),
    );
  }

  Widget buildPatriarchToCompare(Patriarch from, Patriarch to, bool selected) {
    var value = calcYears(from, to);
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: selected ? Colors.grey.withOpacity(0.3) : null,
          borderRadius: BorderRadius.circular(7),
        ),
        child: InkWell(
          onTap: () {
            setState(() {
              patriarchToCompare = to;
            });
          },
          child: PatriarchBodyToCompare(
            selected: selected,
            value: value,
            from: from,
            to: to,
          ),
        ),
      ),
    );
  }

  int calcYears(Patriarch from, Patriarch to) {
    if (from.yearPassing < to.yearPassing && from.birthYear > to.birthYear) {
      return from.livedAge;
    } else if (from.yearPassing > to.yearPassing && from.birthYear < to.birthYear) {
      return to.livedAge;
    } else if (from.yearPassing < to.yearPassing && from.birthYear < to.birthYear) {
      return from.yearPassing - to.birthYear;
    } else if (from.yearPassing > to.yearPassing && from.birthYear > to.birthYear) {
      return to.yearPassing - from.birthYear;
    }

    return 0;
  }
}
