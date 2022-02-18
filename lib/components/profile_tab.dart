import 'package:flutter/material.dart';

// Stateful 상태가 있는 위젯 - > 상태에 따라 위젯이 변경 된다.
class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabbar(),
        Expanded(child: _buildTabBarView()),
      ],
    );
  }

  Widget _buildTabbar() {
    return TabBar(
      controller: _tabController,
      tabs: [
        Tab(icon: Icon(Icons.directions_car)),
        Tab(icon: Icon(Icons.directions_transit)),
      ],
      labelColor: Colors.blue,
      unselectedLabelColor: Colors.black,
    );
  }

  Widget _buildTabBarView() {
    return TabBarView(controller: _tabController, children: [
      Container(color: Colors.red),
      Container(color: Colors.green),
    ]);
  }
}
