import 'package:flutter/material.dart';
import 'package:patriarch/model/patriarch.dart';

class PatriarchFrom extends StatelessWidget {
  const PatriarchFrom({
    Key key,
    @required this.color,
    @required this.patriarch,
  }) : super(key: key);

  final Color color;
  final Patriarch patriarch;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        height: 130,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  color == null ? Icons.star_outline : Icons.star,
                  size: color == null ? 15 : 22,
                  color: color == null ? Colors.grey : Colors.amber,
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      patriarch.name,
                      style: TextStyle(
                        color: color == null ? null : Colors.black.withOpacity(0.75),
                        fontSize: color == null ? null : 22,
                        decoration: color == null ? null : TextDecoration.underline,
                        fontWeight: color == null ? null : FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.child_friendly,
                    color: color == null ? Colors.black.withOpacity(0.75) : Colors.blue,
                  ),
                  Expanded(
                    child: Text(
                      'Birth year',
                      style: TextStyle(
                        color: color == null ? null : Colors.blue,
                        fontWeight: color == null ? null : FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    '${patriarch.birthYear}',
                    style: TextStyle(
                      color: color == null ? null : Colors.blue,
                      fontWeight: color == null ? null : FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.local_hospital_rounded,
                  color: color == null ? Colors.black.withOpacity(0.75) : Colors.red,
                ),
                Expanded(
                  child: Text(
                    'Lived age',
                    style: TextStyle(
                      color: color == null ? null : Colors.red,
                      fontWeight: color == null ? null : FontWeight.bold,
                    ),
                  ),
                ),
                Text('${patriarch.livedAge}',
                    style: TextStyle(
                      color: color == null ? null : Colors.red,
                      fontWeight: color == null ? null : FontWeight.bold,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
