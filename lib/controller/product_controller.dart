import 'package:fireandapi30days/model/users.dart';
import 'package:fireandapi30days/services/remote_service.dart';
import 'package:get/get.dart';

class UserList extends GetxController {
  // ignore: deprecated_member_use
  var userLists = List<Users>().obs;
  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    var users = await RemoteServices.fetchUsers();
    if (users != null) {
      // ignore: deprecated_member_use
      userLists.value = users;
    }
  }
}
