import 'package:http/http.dart' as http;

// import 'modules/RequestResponse.dart';
import 'package:dart_packages/modules/RequestResponse.dart';
import 'package:dart_packages/modules/ColombiaData.dart';

void getRequestResponseService() {
  final url = 'https://reqres.in/api/users?page=2';

  http.get(url).then((response) {
    final requestResponse = requestResponseFromJson(response.body);

    print('page: ${requestResponse.page}');
    print('per_page: ${requestResponse.perPage}');
    print('ID del tercer elemento: ${requestResponse.data[2].id}');
  });
}

void getColombiaDataService() {
  final url = 'https://restcountries.eu/rest/v2/alpha/col';

  http.get(url).then((response) {
    final colombiaData = colombiaDataFromJson(response.body);

    print('===========================');
    print('País: ${colombiaData.nativeName}');
    print('Población: ${colombiaData.population}');
    print('Fronteras:');
    colombiaData.borders.forEach((border) =>
        print('    ${border[0]}${border.substring(1).toLowerCase()}'));
    print('Idioma: ${colombiaData.languages[0].nativeName}');
    print('Latitud: ${colombiaData.latlng[0]}');
    print('Longitud: ${colombiaData.latlng[1]}');
    print('Moneda: ${colombiaData.currencies[0].name}');
    print('Bandera: ${colombiaData.flag}');
    print('===========================');
  }).catchError((error) => print(error));
}
