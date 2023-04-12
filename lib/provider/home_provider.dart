import 'package:flutter/cupertino.dart';
import 'package:random_user_apicall/Model/random_model.dart';
import 'package:random_user_apicall/utils/api_helper.dart';

class HomeProvider extends ChangeNotifier {
  ApiHelper ap1 = ApiHelper();

  Future<RandomModel?> getData() async {
    RandomModel? randomModel;
    randomModel = await ap1.randomApiCall();
    return randomModel;
  }
}
