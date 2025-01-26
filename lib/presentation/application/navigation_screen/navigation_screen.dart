// ignore_for_file: unnecessary_null_comparison, deprecated_member_use

import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:habit_tracker/application/bloc/authentication/auth/auth_bloc.dart';
import 'package:habit_tracker/application/bloc/authentication/profile/profile_bloc.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/shared/enums/processing_status.dart';
import 'package:habit_tracker/core/theme/styles_manager.dart';
import 'package:habit_tracker/gen/assets.gen.dart';
import 'package:habit_tracker/presentation/application/dashboard/dashboard_screen.dart';
import 'package:habit_tracker/presentation/application/data_visualization/data_visualization_screen.dart';
import 'package:habit_tracker/presentation/application/pie_visualiztion/pie_visualiztion.dart';
import 'package:habit_tracker/presentation/application/profile/profile_screen.dart';
import 'package:habit_tracker/presentation/application/statistics/statistics_screen.dart';
import 'package:habit_tracker/presentation/application/tracking/tracking_screen.dart';
import 'package:habit_tracker/presentation/core/are_you_sure_dialog.dart';
import 'package:intl/intl.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({
    super.key,
    this.index = 0,
  });

  final int index;

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  bool isExtended = true;
  PageController pageController = PageController();
  SideMenuController sideMenu = SideMenuController();

  @override
  void initState() {
    sideMenu.addListener((index) {
      if (mounted) {
        pageController.jumpToPage(index);
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProfileBloc>().add(const FetchProfile());
    });
    super.initState();
  }

  @override
  void dispose() {
    sideMenu.dispose();
    pageController.dispose();
    super.dispose();
  }

  toggleIsExtended() {
    setState(() {
      isExtended = !isExtended;
    });
  }

  logout() async {
    context.read<AuthenticationBloc>().add(const SignOutEvent());
  }

  logoutDialog() {
    areYouSureDialog(
      title: 'Logout',
      content: 'Are you sure you want to logout?',
      context: context,
      action: logout,
    );
  }

  List _buildMenuItems() {
    return [
      SideMenuItem(
        title: 'Dashboard',
        onTap: (index, _) {
          sideMenu.changePage(index);
        },
        icon: const Icon(
          FontAwesomeIcons.home,
        ),
      ),
      SideMenuItem(
        title: 'Tracking',
        onTap: (index, _) {
          sideMenu.changePage(index);
        },
        icon: const Icon(
          Icons.auto_graph_sharp,
        ),
      ),
      SideMenuItem(
        title: 'Graph Analysis',
        onTap: (index, _) {
          sideMenu.changePage(index);
        },
        icon: const Icon(
          Icons.bar_chart_sharp,
        ),
      ),
      SideMenuItem(
        title: 'PieChart Analysis',
        onTap: (index, _) {
          sideMenu.changePage(index);
        },
        icon: const Icon(
          Icons.pie_chart_sharp,
        ),
      ),
      SideMenuItem(
        title: 'Statistics',
        onTap: (index, _) {
          sideMenu.changePage(index);
        },
        icon: const Icon(
          Icons.trending_neutral_sharp,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.liteAccentColor,
                  width: 1.0,
                ),
              ),
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.rateConColor3,
          elevation: 0,
          centerTitle: true,
          actions: [
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                if (state.processingStatus == ProcessingStatus.waiting) {
                  return const Center(
                    child: SpinKitCircle(
                      color: AppColors.primaryColor,
                    ),
                  );
                } else if (state.processingStatus == ProcessingStatus.error) {
                  return Center(
                    child: Text(
                      'Oops! ${state.error.errorMsg}',
                      style: getRegularStyle(color: AppColors.greyText),
                    ),
                  );
                } else if (state.profileDetails == null) {
                  return Center(
                    child: Text(
                      'No profile data available.',
                      style: getRegularStyle(
                        color: AppColors.greyText,
                      ),
                    ),
                  );
                }

                final profiles = state.profileDetails;
                // Format the current date for display
                final currentDate = DateFormat('MMMM d, yyyy - h:mm a').format(
                  DateTime.now(),
                );
                return Row(
                  children: [
                    Container(
                      height: 40,
                      width: size.width > 800 ? 155 : 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: AppColors.rateConColor3,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(
                          child: Text(
                            currentDate,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: getLightStyle(
                              color: Colors.black,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          sideMenu.changePage(19);
                        },
                        child: Row(
                          children: [
                            Image.asset(Assets.images.profile.path),
                            const SizedBox(width: 15),
                            Text(
                              'Hello ${profiles['full_name'] ?? 'N/A'}',
                              style: getRegularStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 18),
                  ],
                );
              },
            )
          ],
          leadingWidth: 200,
          leading: Row(
            children: [
              IconButton(
                onPressed: () => setState(() {
                  isExtended = !isExtended;
                }),
                icon: Icon(
                  Icons.menu,
                  color: AppColors.darkRedColor,
                  size: 20,
                ),
              ),
              const SizedBox(width: 20),
              Image.asset(
                Assets.images.littleLogo.path,
                height: 30,
                width: 30,
                scale: 3,
              ),
            ],
          ),
        ),
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: LayoutBuilder(builder: (context, constraint) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: Container(
                      color: AppColors.rateConColor3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          SizedBox(
                            height: size.height / 1.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SideMenu(
                                  controller: sideMenu,
                                  collapseWidth: 300,
                                  style: SideMenuStyle(
                                    showTooltip: false,
                                    displayMode: isExtended
                                        ? SideMenuDisplayMode.open
                                        : SideMenuDisplayMode.compact,
                                    showHamburger: false,
                                    arrowOpen:
                                        AppColors.primaryColor.withOpacity(0.3),
                                    arrowCollapse:
                                        AppColors.primaryColor.withOpacity(0.3),
                                    hoverColor: Colors.grey.withOpacity(0.1),
                                    selectedIconColorExpandable:
                                        AppColors.darkRedColor,
                                    unselectedIconColorExpandable:
                                        AppColors.greyText,
                                    selectedTitleTextStyleExpandable:
                                        getRegularStyle(
                                      color: AppColors.darkRedColor,
                                    ),
                                    selectedColor: AppColors.darkRedColor,
                                    selectedTitleTextStyle: getMediumStyle(
                                      color: Colors.white,
                                    ),
                                    unselectedTitleTextStyle: getLightStyle(
                                        color: AppColors.greyText),
                                    selectedIconColor: Colors.white,
                                    iconSize: 18,
                                    unselectedIconColor: AppColors.greyText,
                                  ),
                                  items: _buildMenuItems(),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10.0,
                              left: isExtended ? 20.0 : 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () => logoutDialog(),
                                    child: Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      spacing: 8,
                                      children: [
                                        Text(
                                          'Log out',
                                          style: getRegularStyle(
                                            color: AppColors.greyText,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.logout,
                                          color: AppColors.greyText,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 50),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: PageView(
                controller: pageController,
                children: const [
                  HabitDashboardPage(),
                  HabitListPage(),
                  DataVisualizationScreen(),
                  PieVisualization(),
                  StatisticsScreen(),
                  ProfileScreen(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
