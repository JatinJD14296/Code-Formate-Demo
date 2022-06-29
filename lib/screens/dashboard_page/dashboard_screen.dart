import 'package:flutter/material.dart';
import 'package:qkard/common/widgets/decoration.dart';
import 'package:qkard/common/widgets/padding_margin.dart';
import 'package:qkard/screens/dashboard_page/dashboard_screen_bloc.dart';
import 'package:qkard/screens/dashboard_page/dashboard_screen_widget.dart';
import 'package:qkard/screens/dashboard_page/widget/expandable_fab.dart';
import 'package:qkard/screens/home_page/home_screen.dart';
import 'package:qkard/utils/colors.dart';
import 'package:qkard/utils/images.dart';
import 'package:qkard/utils/navigator_route.dart';
import 'package:qkard/utils/screen_utils.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Screen.setScreenSize(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: StreamBuilder<String>(
          initialData: myHomePage,
          stream: dashboardPageBloc.dashboardPageTabStream,
          builder: (context, snapshot) {
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  child: MyHomePage(),
                ),
                Container(
                  width: Screen.screenWidth,
                  padding: paddingAll(3.0),
                  decoration: circularBoxDecoration(
                    containerColor: primaryColor,
                    topRightRadius: 25.0,
                    topLeftRadius: 25.0,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, -10),
                        blurRadius: 10,
                        color: primaryColor.withOpacity(0.15),
                      )
                    ],
                  ),
                  child: TabBar(
                    padding: paddingAll(10.0),
                    controller: _tabController,
                    indicatorColor: transparent,
                    physics: const NeverScrollableScrollPhysics(),
                    onTap: (val) {
                      String page = myHomePage;
                      // String page = val == 0
                      //     ? homeScreen
                      //     : val == 1
                      //     ? exploreScreen
                      //     : val == 3
                      //     ? airDropsScreen
                      //     : historyScreen;
                      dashboardPageBloc.getDashboardPageTab(page);
                    },
                    tabs: [
                      tabs(
                          qCoin,
                          _tabController!.index == 0
                              ? gradientColorOne
                              : gradientColorThree),
                      tabs(
                          qCoin,
                          _tabController!.index == 1
                              ? gradientColorOne
                              : gradientColorThree),
                      const SizedBox(),
                      tabs(
                          qCoin,
                          _tabController!.index == 3
                              ? gradientColorOne
                              : gradientColorThree),
                      tabs(
                          qCoin,
                          _tabController!.index == 4
                              ? gradientColorOne
                              : gradientColorThree),
                    ],
                  ),
                ),
                const ExampleExpandableFab(),
              ],
            );
          },
        ),
      ),
    );
  }
}
