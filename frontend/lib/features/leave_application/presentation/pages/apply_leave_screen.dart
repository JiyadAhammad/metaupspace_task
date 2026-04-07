import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/ui/commands/snackbar_commands.dart';
import '../../../../core/utils/validation.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../domain/param/leave_application_request_param.dart';
import '../bloc/leave_application_bloc.dart';

class ApplyLeaveScreen extends StatefulWidget {
  const ApplyLeaveScreen({super.key});

  @override
  State<ApplyLeaveScreen> createState() => _ApplyLeaveScreenState();
}

class _ApplyLeaveScreenState extends State<ApplyLeaveScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _typeController = TextEditingController();
  final TextEditingController _reasonController = TextEditingController();

  final ValueNotifier<DateTime?> _startDate = ValueNotifier<DateTime?>(null);
  final ValueNotifier<DateTime?> _endDate = ValueNotifier<DateTime?>(null);

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  Future<void> _pickStartDate() async {
    final DateTime today = DateTime.now();

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: today,
      firstDate: today,
      lastDate: DateTime(today.year, today.month + 2, today.day),
    );

    if (picked != null) {
      _startDate.value = picked;
      _endDate.value = null;
    }
  }

  Future<void> _pickEndDate() async {
    if (_startDate.value == null) {
      SnackbarCommand.show(
        type: ToastType.warning,
        title: 'Please select start date first',
      );
      return;
    }

    final DateTime minEndDate = _startDate.value!.add(const Duration(days: 1));

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: minEndDate,
      firstDate: minEndDate,
      lastDate: DateTime(
        _startDate.value!.year,
        _startDate.value!.month + 2,
        _startDate.value!.day,
      ),
    );

    if (picked != null) {
      _endDate.value = picked;
    }
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    if (_startDate.value == null) {
      SnackbarCommand.show(
        type: ToastType.warning,
        title: 'Start date is required',
      );

      return;
    }

    if (_endDate.value == null) {
      SnackbarCommand.show(
        type: ToastType.warning,
        title: 'End date is required',
      );
      return;
    }

    final LeaveApplicationRequestParam param = LeaveApplicationRequestParam(
      type: _typeController.text.trim(),
      reason: _reasonController.text.trim(),
      startDate: _startDate.value!,
      endDate: _endDate.value!,
    );
    context.read<LeaveApplicationBloc>().add(
      LeaveApplicationEvent.applyLeaveApplication(param: param),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(title: 'Apply leave'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    spacing: 16,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const AppText('Leave Application'),
                      const SizedBox(height: 24),
                      CustomTextField(
                        controller: _typeController,
                        hint: 'e.g., Casual Leave, Sick Leave',
                        icon: Icons.category_outlined,
                        validator: (String? value) =>
                            AppValidation.validateEmptyField(
                              value,
                              'Leave Type',
                            ),
                      ),
                      ListenableBuilder(
                        listenable: Listenable.merge(<Listenable?>[
                          _startDate,
                          _endDate,
                        ]),
                        builder: (BuildContext context, Widget? child) {
                          return Row(
                            spacing: 16,
                            children: <Widget>[
                              Expanded(
                                child: GestureDetector(
                                  onTap: _pickStartDate,
                                  child: AbsorbPointer(
                                    child: CustomTextField(
                                      hint: _startDate.value == null
                                          ? 'Start Date'
                                          : _formatDate(_startDate.value!),
                                      icon: Icons.date_range_outlined,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: _pickEndDate,
                                  child: AbsorbPointer(
                                    child: CustomTextField(
                                      hint: _endDate.value == null
                                          ? 'End Date'
                                          : _formatDate(_endDate.value!),
                                      icon: Icons.date_range_outlined,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      CustomTextField(
                        controller: _reasonController,
                        hint: 'Explain your reason for leave...',
                        icon: Icons.notes_outlined,
                        validator: (String? value) =>
                            AppValidation.validateEmptyField(value, 'Reason'),
                      ),
                      const SizedBox(height: 32),
                      AppButton(
                        label: 'Submit Application',
                        onPressed: _submit,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
