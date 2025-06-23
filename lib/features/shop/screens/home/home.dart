import 'package:binadim_store/common/widgets/custom_shapes/containers/b_a_prim_header_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [BAPrimHeaderContainer(child: Container())]),
      ),
    );
  }
}
