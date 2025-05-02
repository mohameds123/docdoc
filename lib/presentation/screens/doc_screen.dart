// lib/presentation/screens/doc_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/colors_manager.dart';
import '../../logic/get_doc/cubit.dart';
import '../../logic/get_doc/state.dart';
import '../widgets/doc_widget.dart';

class DocScreen extends StatelessWidget {
  const DocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorCubit()..getDoctors(),
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 40),
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: ColorsManager.borderColor),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 9.0),
                      child: Icon(Icons.arrow_back_ios, color: Colors.black),
                    ),
                  ),
                  const Text(
                    "Recommendation Doctor",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: ColorsManager.borderColor),
                    ),
                    child: const Center(
                        child: Icon(Icons.menu, color: Colors.black)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: ColorsManager.fillColor2,
                  filled: true,
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: ColorsManager.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                  prefixIcon: const Icon(Icons.search),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Doctor List
            Expanded(
              child: BlocBuilder<DoctorCubit, DoctorState>(
                builder: (context, state) {
                  if (state is DoctorLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is DoctorLoaded) {
                    return ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: state.doctors.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: DocWidget(doctor: state.doctors[index]),
                        );
                      },
                    );
                  } else if (state is DoctorError) {
                    return Center(child: Text(state.message));
                  } else {
                    return const Center(child: Text('No doctors available'));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}