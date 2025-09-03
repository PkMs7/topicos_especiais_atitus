import 'package:flutter/material.dart';

class LogoTeam extends StatefulWidget {
  const LogoTeam({super.key});

  @override
  State<LogoTeam> createState() => _LogoTeamState();
}

class _LogoTeamState extends State<LogoTeam> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network("https://logodownload.org/wp-content/uploads/2016/09/flamengo-logo-escudo-novo-3.png"),
    );
  }
}