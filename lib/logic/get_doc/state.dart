// lib/cubits/doctor_cubit/doctor_state.dart

import '../../data/doctor_model.dart';

abstract class DoctorState {
  const DoctorState();
}

class DoctorInitial extends DoctorState {}

class DoctorLoading extends DoctorState {}

class DoctorLoaded extends DoctorState {
  final List<Doctor> doctors;

  const DoctorLoaded(this.doctors);
}

class DoctorError extends DoctorState {
  final String message;

  const DoctorError(this.message);
}