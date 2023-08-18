
abstract class ApiService {
  Future<dynamic> fetchFakeDate();
}

class ApiServiceImpl extends ApiService {

  @override
  Future<dynamic> fetchFakeDate() async {
    await Future.delayed(const Duration(seconds: 2));
  }

}