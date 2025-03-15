import 'package:flutter/material.dart';
import 'package:telegram_clone/features/home/data/models/nav_bar_model.dart';
import 'package:telegram_clone/features/home/presentation/widgets/chat_widget.dart';
import 'package:telegram_clone/features/home/presentation/widgets/drawer_widget.dart';

import '../../../../core/constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();

    //Init tab controller

    _tabController = TabController(
      length: NavBarModel.navBars.length,
      vsync: this,
      initialIndex: _selectedIndex,
    );

    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          width: width * 0.8,
          shape: RoundedRectangleBorder(),

          child: DrawerWidget(),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: AppColors.kMenuColor,
          title: Text(
            NavBarModel.navBars[_selectedIndex].title,
            style: TextTheme.of(context).titleMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          bottom: TabBar(
            onTap: (index) {
              setState(() {
                _selectedIndex = index;

                _tabController.animateTo(_selectedIndex);
              });
            },
            controller: _tabController,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            dividerColor: AppColors.kMenuColor,
            overlayColor: WidgetStateProperty.all(Colors.black12),
            tabs:
                NavBarModel.navBars
                    .map(
                      (e) => Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(e.title),
                            SizedBox(width: 5),
                            e.unReadMessages == 0
                                ? SizedBox()
                                : CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Colors.white,
                                  child: Text(
                                    e.unReadMessages.toString(),
                                    style: TextStyle(
                                      color: AppColors.kMenuColor,
                                    ),
                                  ),
                                ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
          ),
        ),
        body: SizedBox(
          width: width,
          height: height,
          child: Column(
            children: [
              Flexible(
                child: TabBarView(
                  controller: _tabController,
                  children:
                      NavBarModel.navBars.map((e) {
                        return Container(
                          margin: EdgeInsets.only(top: 5),
                          child: ListView.builder(
                            itemCount: 12,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return ChatWidget(
                                title: 'title',
                                subTitle: 'subTitle',
                                time: 'time',
                                lastMessage: 'lastMessage',
                              );
                            },
                          ),
                        );
                      }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
