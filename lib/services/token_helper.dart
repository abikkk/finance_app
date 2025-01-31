import 'package:finance_app/utils/constants_helper.dart';
import 'package:finance_app/utils/storage_helper.dart';

class TokenHelper {
  StorageHelper storageHelper = StorageHelper();

  saveToken({required String token}) {
    storageHelper.write(
      key: appToken,
      value: token,
    );
  }

  Future<String> getToken() async {
    return await storageHelper.read(
          key: appToken,
        ) ??
        '';
  }

  clearToken() {
    storageHelper.remove(key: appToken);
  }
}
