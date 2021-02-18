import 'package:flutter/material.dart';
import 'package:patriarch/model/patriarch.dart';

class PatriarchBodyToCompare extends StatelessWidget {
  const PatriarchBodyToCompare({
    Key key,
    @required this.selected,
    @required this.value,
    @required this.from,
    @required this.to,
  }) : super(key: key);

  final bool selected;
  final int value;
  final Patriarch from;
  final Patriarch to;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        height: 150,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  !selected ? Icons.star_outline : Icons.star,
                  size: !selected ? 15 : 22,
                  color: !selected ? Colors.grey : Colors.amber,
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
                      to.name,
                      style: TextStyle(
                        color: !selected ? null : Colors.black.withOpacity(0.75),
                        fontSize: !selected ? null : 22,
                        decoration: !selected ? null : TextDecoration.underline,
                        fontWeight: !selected ? null : FontWeight.bold,
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
                    color: !selected ? Colors.black.withOpacity(0.75) : Colors.blue,
                  ),
                  Expanded(
                      child: Text('Birth year',
                          style: TextStyle(
                            color: !selected ? null : Colors.blue,
                            fontWeight: !selected ? null : FontWeight.bold,
                          ))),
                  Text(
                    '${to.birthYear}',
                    style: TextStyle(
                      color: !selected ? null : Colors.blue,
                      fontWeight: !selected ? null : FontWeight.bold,
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
                  color: !selected ? Colors.black.withOpacity(0.75) : Colors.red,
                ),
                Expanded(
                    child: Text('Lived age',
                        style: TextStyle(
                          color: !selected ? null : Colors.red,
                          fontWeight: !selected ? null : FontWeight.bold,
                        ))),
                Text(
                  '${to.livedAge}',
                  style: TextStyle(
                    color: !selected ? null : Colors.red,
                    fontWeight: !selected ? null : FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.account_tree_rounded,
                  color: !selected
                      ? Colors.black.withOpacity(0.75)
                      : value > 0
                          ? Colors.green
                          : Colors.red,
                ),
                Expanded(
                  child: Text(
                    value > 0
                        ? '${to.name} lived $value years with ${from.name}'
                        : to.birthYear < from.birthYear
                            ? '${to.name} died ${value * -1} years before ${from.name} was born'
                            : '${to.name} was born ${value * -1} years after ${from.name}',
                    style: TextStyle(
                      color: !selected
                          ? Colors.black.withOpacity(0.75)
                          : value > 0
                              ? Colors.green
                              : Colors.red,
                      fontWeight: !selected ? null : FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
