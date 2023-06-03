import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class BaseViewModel extends Equatable {
  BaseViewModel({required this.isLoading});

  bool isLoading;

  @override
  List<Object?> get props => [];
}
