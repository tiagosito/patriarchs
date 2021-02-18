import 'package:patriarch/model/patriarch.dart';

class PatriarchRepository {
  List<Patriarch> fatchPatriarchList() {
    List<Patriarch> patriarchList = List<Patriarch>();
    if (patriarchList == null) {
      patriarchList = [];
    }

    patriarchList.add(Patriarch(name: 'Adam', birthYear: 0, livedAge: 930, yearPassing: 930 + 0));
    patriarchList.add(Patriarch(name: 'Seth', birthYear: 130, livedAge: 912, yearPassing: 912 + 130));
    patriarchList.add(Patriarch(name: 'Enos', birthYear: 235, livedAge: 905, yearPassing: 905 + 235));
    patriarchList.add(Patriarch(name: 'Cannan', birthYear: 325, livedAge: 910, yearPassing: 910 + 325));
    patriarchList.add(Patriarch(name: 'Mahaleel', birthYear: 395, livedAge: 895, yearPassing: 895 + 395));
    patriarchList.add(Patriarch(name: 'Jared', birthYear: 460, livedAge: 962, yearPassing: 962 + 460));
    patriarchList.add(Patriarch(name: 'Enoch', birthYear: 622, livedAge: 365, yearPassing: 365 + 622));
    patriarchList.add(Patriarch(name: 'Methuselah', birthYear: 687, livedAge: 969, yearPassing: 969 + 687));
    patriarchList.add(Patriarch(name: 'Lamech', birthYear: 874, livedAge: 777, yearPassing: 777 + 874));
    patriarchList.add(Patriarch(name: 'Noah', birthYear: 1056, livedAge: 950, yearPassing: 950 + 1056));
    patriarchList.add(Patriarch(name: 'Shem', birthYear: 1558, livedAge: 600, yearPassing: 600 + 1558));
    patriarchList.add(Patriarch(name: 'Arphaxad', birthYear: 1658, livedAge: 438, yearPassing: 438 + 1658));
    patriarchList.add(Patriarch(name: 'Salah', birthYear: 1693, livedAge: 433, yearPassing: 433 + 1693));
    patriarchList.add(Patriarch(name: 'Eber', birthYear: 1723, livedAge: 464, yearPassing: 464 + 1723));
    patriarchList.add(Patriarch(name: 'Peleg', birthYear: 1757, livedAge: 239, yearPassing: 239 + 1757));
    patriarchList.add(Patriarch(name: 'Reu', birthYear: 1787, livedAge: 239, yearPassing: 239 + 1787));
    patriarchList.add(Patriarch(name: 'Serug', birthYear: 1819, livedAge: 230, yearPassing: 230 + 1819));
    patriarchList.add(Patriarch(name: 'Nahor', birthYear: 1849, livedAge: 148, yearPassing: 148 + 1849));
    patriarchList.add(Patriarch(name: 'Terah', birthYear: 1878, livedAge: 205, yearPassing: 205 + 1878));
    patriarchList.add(Patriarch(name: 'Abraham', birthYear: 1948, livedAge: 175, yearPassing: 175 + 1948));
    patriarchList.add(Patriarch(name: 'Sarah', birthYear: 1958, livedAge: 127, yearPassing: 127 + 1958));
    patriarchList.add(Patriarch(name: 'Ismael', birthYear: 2034, livedAge: 137, yearPassing: 137 + 2034));
    patriarchList.add(Patriarch(name: 'Isaac', birthYear: 2048, livedAge: 180, yearPassing: 180 + 2048));
    patriarchList.add(Patriarch(name: 'Jacob', birthYear: 2108, livedAge: 137, yearPassing: 137 + 2108));
    patriarchList.add(Patriarch(name: 'Joseph', birthYear: 2199, livedAge: 110, yearPassing: 110 + 2199));

    return patriarchList;
  }
}
