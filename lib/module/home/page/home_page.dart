import '../core/exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: "Tab 1"),
              Tab(text: "Tab 2"),
              Tab(text: "Tab 3"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Content for Tab 1")),
            Center(child: Text("Content for Tab 2")),
            Center(child: Text("Content for Tab 3")),
          ],
        ),
      ),
    );
  }
}
