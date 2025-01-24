import 'package:code_forces_analyzer/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../widgets/list_design.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final TextEditingController handleController = TextEditingController();
  HomeController homeController = Get.put(HomeController(handle: 'jiangly'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: SizedBox(
          width: 120,
          child: Image.asset('assets/images/cf_analyzer_img.png'),
        ),
        actions: [
          SizedBox(
            width: 180,
            child: Image.asset('assets/images/cf_img.png'),
          ),
          Gap(20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: handleController,
              cursorColor: Colors.amber,
              decoration: InputDecoration(
                hintText: "Enter Codeforces Handle",
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    if (handleController.text.isNotEmpty) {
                      homeController.getUserInfo(handleController.text);
                    } else {
                      Get.snackbar(
                        "Error",
                        "Handle cannot be empty!",
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }
                  },
                ),
              ),
            ),
            const Gap(26),
            Expanded(
              child: GetBuilder<HomeController>(
                builder: (homeController) {
                  if (homeController.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (homeController.users.isEmpty) {
                    return const Center(
                      child: Text(
                        "No data found. Enter a valid handle to fetch user info.",
                        style: TextStyle(fontSize: 16),
                      ),
                    );
                  }

                  return ListView.builder(
                    itemCount: homeController.users.length,
                    itemBuilder: (context, index) {
                      final user = homeController.users[index].result?.first;
                      if (user == null) {
                        return const Center(
                          child: Text("No valid user data available."),
                        );
                      }

                      return Card(child: ListDesign(context, user));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
