import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_button.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _messageController.dispose();
    _nameController.dispose();
    _subjectController.dispose();
    super.dispose();
  }

  Future<void> _sendEmail(BuildContext context) async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final String name = _nameController.text;
    final String email = _emailController.text;
    final String subject = _subjectController.text;
    final String message = _messageController.text;

    const String userID = 'ueGFkstFlWBSdFySV';
    const String serviceID = 'service_4cis6ni';
    const String templateID = 'template_7p7mi5b';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body:  json.encode({
        'service_id': serviceID,
        'template_id': templateID,
        'user_id': userID,
        'template_params': {
          'from_name': name,       // Matches {{from_name}} in your template
          'to_name': 'Abdelrhman',  // Provide a fixed recipient name or get it from somewhere
          'user_email': email,     // This is optional if you need to send the sender's email
          'subject': subject,      // Matches the subject field in your form
          'message': message,      // Matches {{message}} in your template
        },
      }),
    );

    if (response.statusCode == 200) {
      _emailController.clear();
      _subjectController.clear();
      _nameController.clear();
      _messageController.clear();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email sent successfully!'),
        ),
      );
      _subjectController.clear();
      _nameController.clear();
      _emailController.clear();
      _messageController.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed to send email'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _getFormWidth(MediaQuery.of(context).size.width),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _nameController,
              style: AppStyles.s14,
              decoration: const InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _emailController,
              style: AppStyles.s14,
              decoration: const InputDecoration(labelText: 'E-mail'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _subjectController,
              style: AppStyles.s14,
              decoration: const InputDecoration(labelText: 'Subject'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a subject';
                }
                return null;
              },
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _messageController,
              maxLines: 5,
              style: AppStyles.s14,
              decoration: const InputDecoration(
                labelText: 'Type a message here...',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your message';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            CustomButton(
              label: 'Submit',
              onPressed: () => _sendEmail(context),
              backgroundColor: AppColors.primaryColor,
              width: _getFormWidth(MediaQuery.of(context).size.width),
            ),
          ],
        ),
      ),
    );
  }

  double _getFormWidth(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return deviceWidth;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return deviceWidth / 1.6;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return deviceWidth / 2;
    } else {
      return deviceWidth / 2.5;
    }
  }
}
