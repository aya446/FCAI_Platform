import 'package:fcai_platform/core/utils/app_colors.dart';
import 'package:fcai_platform/features/main_app/FAQ/presentation/views/faq_body.dart';
import 'package:fcai_platform/features/main_app/chatbot/data/logic/chat_cubit.dart';
import 'package:fcai_platform/features/main_app/chatbot/data/services/chat_service.dart';
import 'package:fcai_platform/features/main_app/chatbot/presentation/views/chat_bot_body.dart';
import 'package:fcai_platform/features/main_app/home/presentation/views/home_view.dart';
import 'package:fcai_platform/features/main_app/home/presentation/views/widgets/custom_drawer.dart';
import 'package:fcai_platform/features/main_app/scanner/data/presentation/views/scanner_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _currentIndex = 1;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      const FAQBody(),
      HomeView(onMenuTap: _openDrawer),
      const DashboardScreen(),
      BlocProvider(
        create: (_) => ChatCubit(ChatService()),
        child: ChatBotBody(),
      ),
      const ScannerBody(),
    ];

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: CustomDrawer(),
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        height: 100,
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            backgroundColor: AppColors.primaryColor,
            currentIndex: _currentIndex,
            onTap: _onTabTapped,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.6),
            selectedFontSize: 14,
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/faq.svg',
                  color: Colors.white.withOpacity(0.6),
                ),
                activeIcon: SvgPicture.asset('assets/icons/faq.svg', width: 30),
                label: 'FAQ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home, size: 30),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_outlined),
                activeIcon: Icon(Icons.dashboard, size: 30),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/chatbotsvg.svg',
                  color: Colors.white.withOpacity(0.6),
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/chatbotsvg.svg',
                  width: 30,
                ),
                label: 'Chatbot',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_scanner_outlined),
                activeIcon: Icon(Icons.qr_code_scanner, size: 30),
                label: 'Scanner',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Dashboard Screen'));
  }
}
