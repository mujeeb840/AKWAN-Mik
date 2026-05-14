import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  Widget _statCard(String title, String value, IconData icon) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.blue),
            const Spacer(),
            Text(value, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text(title, style: const TextStyle(color: Colors.white70)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('لوحة التحكم')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.1,
              children: const [
                // placeholders
              ],
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.1,
              children: [
                _DashboardStat(title: 'إجمالي المبيعات', value: '1500', icon: Icons.payments),
                _DashboardStat(title: 'صافي الأرباح', value: '750', icon: Icons.trending_up),
                _DashboardStat(title: 'المستخدمون النشطون', value: '320', icon: Icons.people),
                _DashboardStat(title: 'كروت الاشتراك', value: '120', icon: Icons.credit_card),
              ],
            ),
            const SizedBox(height: 16),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: SizedBox(
                  height: 220,
                  child: Center(
                    child: Text(
                      'Chart Preview',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _ActionChip(title: 'إدارة الكروت', icon: Icons.confirmation_number),
                _ActionChip(title: 'الموزعين', icon: Icons.group),
                _ActionChip(title: 'التقارير', icon: Icons.bar_chart),
                _ActionChip(title: 'الطباعة', icon: Icons.print),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'لوحة التحكم'),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: 'الكروت'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'الموزعين'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'التقارير'),
        ],
      ),
    );
  }
}

class _DashboardStat extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  const _DashboardStat({required this.title, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.blue),
            const Spacer(),
            Text(value, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text(title, style: const TextStyle(color: Colors.white70)),
          ],
        ),
      ),
    );
  }
}

class _ActionChip extends StatelessWidget {
  final String title;
  final IconData icon;
  const _ActionChip({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Icon(icon, size: 18),
      label: Text(title),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
  }
}
