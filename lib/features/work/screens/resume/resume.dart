import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pdfLib;
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';

class ResumeScreen extends StatefulWidget {
  @override
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController educationController = TextEditingController();
  final TextEditingController skillsController = TextEditingController();
  final TextEditingController projectsController = TextEditingController();
  final TextEditingController achievementsController = TextEditingController();
  final TextEditingController codingProfilesController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  File? _imageFile;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume'),
        actions: [
          IconButton(
            icon: Icon(Icons.download),
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                _generatePdfAndView(context);
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextField(nameController, 'Name'),
              _buildTextField(emailController, 'Email'),
              _buildTextField(phoneNumberController, 'Phone Number'),
              _buildTextField(addressController, 'Address'),
              _buildTextField(educationController, 'Education'),
              _buildTextField(skillsController, 'Skills'),
              _buildTextField(projectsController, 'Projects'),
              _buildTextField(achievementsController, 'Achievements'),
              _buildTextField(codingProfilesController, 'Coding Profiles'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _pickImage,
                child: Text('Select Image'),
              ),
              if (_imageFile != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Image.file(_imageFile!, height: 100),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(labelText: label),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $label';
          }
          return null;
        },
      ),
    );
  }

  Future<void> _generatePdfAndView(BuildContext context) async {
    final pdf = pdfLib.Document();
    pdfLib.MemoryImage? imageProvider;

    if (_imageFile != null) {
      final imageBytes = await _imageFile!.readAsBytes();
      imageProvider = pdfLib.MemoryImage(imageBytes);
    }

    pdf.addPage(
      pdfLib.Page(
        build: (context) {
          return pdfLib.Column(
            crossAxisAlignment: pdfLib.CrossAxisAlignment.start,
            children: <pdfLib.Widget>[
              if (imageProvider != null)
                pdfLib.Container(
                  alignment: pdfLib.Alignment.topRight,
                  child: pdfLib.Image(imageProvider, width: 100, height: 100),
                ),
              pdfLib.SizedBox(height: 10),
              pdfLib.Header(
                level: 0,
                text: nameController.text,
                textStyle: pdfLib.TextStyle(fontSize: 20, fontWeight: pdfLib.FontWeight.bold),
              ),
              pdfLib.Text('Email: ${emailController.text}', style: pdfLib.TextStyle(fontSize: 12)),
              pdfLib.Text('Phone Number: ${phoneNumberController.text}', style: pdfLib.TextStyle(fontSize: 12)),
              pdfLib.SizedBox(height: 10),
              pdfLib.Text('Address', style: pdfLib.TextStyle(fontSize: 18, fontWeight: pdfLib.FontWeight.bold)),
              pdfLib.Text(addressController.text, style: pdfLib.TextStyle(fontSize: 12)),
              pdfLib.SizedBox(height: 10),
              pdfLib.Text('Education', style: pdfLib.TextStyle(fontSize: 18, fontWeight: pdfLib.FontWeight.bold)),
              pdfLib.Text(educationController.text, style: pdfLib.TextStyle(fontSize: 12)),
              pdfLib.SizedBox(height: 10),
              pdfLib.Text('Skills', style: pdfLib.TextStyle(fontSize: 18, fontWeight: pdfLib.FontWeight.bold)),
              pdfLib.Text(skillsController.text, style: pdfLib.TextStyle(fontSize: 12)),
              pdfLib.SizedBox(height: 10),
              pdfLib.Text('Projects', style: pdfLib.TextStyle(fontSize: 18, fontWeight: pdfLib.FontWeight.bold)),
              pdfLib.Text(projectsController.text, style: pdfLib.TextStyle(fontSize: 12)),
              pdfLib.SizedBox(height: 10),
              pdfLib.Text('Achievements', style: pdfLib.TextStyle(fontSize: 18, fontWeight: pdfLib.FontWeight.bold)),
              pdfLib.Text(achievementsController.text, style: pdfLib.TextStyle(fontSize: 12)),
              pdfLib.SizedBox(height: 10),
              pdfLib.Text('Coding Profiles', style: pdfLib.TextStyle(fontSize: 18, fontWeight: pdfLib.FontWeight.bold)),
              pdfLib.Text(codingProfilesController.text, style: pdfLib.TextStyle(fontSize: 12)),
            ],
          );
        },
      ),
    );

    final bytes = await pdf.save();
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/resume.pdf');
    await file.writeAsBytes(bytes);

    await Printing.sharePdf(bytes: bytes, filename: 'resume.pdf');

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('PDF saved successfully')),
    );
  }
}
