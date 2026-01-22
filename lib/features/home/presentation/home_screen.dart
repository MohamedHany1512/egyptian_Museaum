import 'package:egyptain_museaum/core/widgets/custom_bold_text.dart';
import 'package:egyptain_museaum/features/home/presentation/widgets/bottom_app_bar_items.dart';
import 'package:egyptain_museaum/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:egyptain_museaum/features/home/presentation/widgets/custom_list_view_of_first_floor.dart';
import 'package:egyptain_museaum/features/home/presentation/widgets/custom_row.dart';
import 'package:egyptain_museaum/features/home/presentation/widgets/custom_search.dart';
import 'package:egyptain_museaum/features/home/presentation/widgets/near_by_department.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.qr_code_scanner),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(), // ده اللي بيعمل النتوء
        notchMargin: 15, // المسافة بين FAB والبار
        child: BottomAppBarItems(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 14),
          child: Column(
            children: [
              const SizedBox(height: 50),
              CustomAppBar(),
              const SizedBox(height: 20),

              CustomBoldText(
                text: "Welcome toMAAT – e Grand Egyptian Museum Guide",
                fontSize: 24,
              ),
              const SizedBox(height: 20),

              CustomSearch(
                labelText: "Search",

                textInputAction: TextInputAction.done,
                icon: Icon(Icons.search),
              ),
              const SizedBox(height: 20),

              Align(
                alignment: Alignment.centerLeft,
                child: CustomBoldText(text: "Near by", fontSize: 20),
              ),
              SizedBox(height: 200, child: NearByDepartment()),

              const SizedBox(height: 20),
              const CustomRow(),
              const SizedBox(height: 12),
              CustomListViewOfFirstFloor(),
            ],
          ),
        ),
      ),
    );
  }
}
