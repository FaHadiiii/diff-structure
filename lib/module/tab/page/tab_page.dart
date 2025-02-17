import 'package:responsive_sizer/responsive_sizer.dart';
import '../core/exports.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabsController>(
      init: TabsController(),
      builder: (controller) {
        var tabs = controller.tabs;

        return tabs.isNotEmpty
            ? Scaffold(
                body: PopScope(
                  canPop: false,
                  child: IndexedStack(
                    index: controller.selectedIndex,
                    children: tabs.map((item) => item.page).toList(),
                  ),
                ),
                bottomNavigationBar: BottomNavigationBar(
                  items: tabs.map((item) {
                    return BottomNavigationBarItem(
                      icon: item.icon,
                      activeIcon: item.activeIcon,
                      label: item.title,
                    );
                  }).toList(),
                  currentIndex: controller.selectedIndex,
                  selectedItemColor: Colors.blue,
                  unselectedItemColor: Colors.grey,
                  type: BottomNavigationBarType.fixed,
                  selectedFontSize: 12.px,
                  elevation: 1,
                  onTap: controller.onItemTapped,
                ),
              )
            : Scaffold(body: Container());
      },
    );
  }
}
