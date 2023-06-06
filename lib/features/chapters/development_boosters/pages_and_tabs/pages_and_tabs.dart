import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../../widgets/paragraph_view.dart';

class PageTabsPage extends StatelessWidget {
  const PageTabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ParagraphView(
            text: '''## Working with page and tab views

- To work with tabs and page views:

  ```dart
    final injectedTab = RM.injectTabPageView(
      initialIndex: 2,
      length: 5,
    );
  ```
  
  In the UI: with the same injectedTab you can control `TabBarView`, `PageView`, `TabBar` and `BottomNavigationBar`.

  ```dart
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: OnTabPageViewBuilder(
                  builder: (index) {
                    return TabBarView(
                      controller: injectedTab.tabController,
                      children: views,
                    );
                  },
                ),
              ),
              Expanded(
                child: OnTabPageViewBuilder(
                  builder: (index) {
                    return PageView(
                      controller: injectedTab.pageController,
                      children: pages,
                    );
                  },
                ),
              )
            ],
          ),
          bottomNavigationBar: OnTabPageViewBuilder(
            listenTo: injectedTab,
            builder: (index) => BottomNavigationBar(
              currentIndex: index,
              onTap: (int index) {
                injectedTab.index = index;
              },
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.blue[100],
              items: tabs
                  .map(
                    (e) => BottomNavigationBarItem(
                      icon: e,
                      label: '\$index',
                    ),
                  )
                  .toList(),
            ),
         ),
        ),
      );
  ```

- [🔍 See more detailed information about `InjectedTabPageView`](https://github.com/GIfatahTH/states_rebuilder/wiki/injected_tab_page_view_api).

- [**Here are many show cases of tabs and pages**](https://github.com/GIfatahTH/states_rebuilder/blob/dev/examples/others/ex_006_4_page_and_tab_views).
''',
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => router.back(),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }
}
