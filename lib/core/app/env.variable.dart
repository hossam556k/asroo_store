import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvTyoeEnum {dev, prod}

class EnvVariable {
  EnvVariable._();
  static final EnvVariable instance=EnvVariable._();
  String _envType='';

  Future<void> init({required EnvTyoeEnum envType}) async {
    switch (envType) {
      case EnvTyoeEnum.dev:
          await dotenv.load(fileName: '.env.dev');
      case EnvTyoeEnum.prod:
          await dotenv.load(fileName: '.env.prod');

        
    }
    _envType =dotenv.get('ENV_TYPE');
  }
bool get debugMode=> _envType=='dev';
}