// lib/screens/wallet_screen.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        
        title: const Row(
          children: [
        
            Text(
              'Account 1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(width: 4),
            Icon(Icons.copy, color: Colors.white, size: 16),
          ],
        ),
        actions: const [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 16),
          Icon(Icons.splitscreen_outlined, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          const BalanceSection(),
          const ActionButtons(),
          const NotificationCard(),
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              children: const [
                CryptoListItem(
                  icon: 'lib/assets/sol.jpg',
                  name: 'Solana',
                  symbol: 'SOL',
                  balance: '0 SOL',
                  value: '\$0.00',
                ),
                CryptoListItem(
                  icon: 'lib/assets/eth.png',
                  name: 'Ethereum',
                  symbol: 'ETH',
                  balance: '0 ETH',
                  value: '\$0.00',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}

class BalanceSection extends StatelessWidget {
  const BalanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text(
            '\$0.00',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                '\$0.00',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 8),
              Text(
                '+0.00%',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ActionButton(
          icon: Icons.qr_code_scanner,
          label: 'Receive',
          onTap: () {},
        ),
        ActionButton(
          icon: Icons.send,
          label: 'Send',
          onTap: () {},
        ),
        ActionButton(
          icon: Icons.swap_horiz,
          label: 'Swap',
          onTap: () {},
        ),
        ActionButton(
          icon: Icons.account_balance_wallet,
          label: 'Buy',
          onTap: () {},
        ),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const ActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 24,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.purple[100],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.person, color: Colors.purple),
          ),
          const SizedBox(width: 12),
          const Expanded(
            child: Text(
              'Create your @username: A unique identity for your wallet',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          const Icon(Icons.close, color: Colors.grey),
        ],
      ),
    );
  }
}

class CryptoListItem extends StatelessWidget {
  final String icon;
  final String name;
  final String symbol;
  final String balance;
  final String value;

  const CryptoListItem({
    super.key,
    required this.icon,
    required this.name,
    required this.symbol,
    required this.balance,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(icon, width: 40),
      title: Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        balance,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 14,
        ),
      ),
      trailing: Text(
        value,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF252525),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.swap_horiz), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
    );
  }
}

