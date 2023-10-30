import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:permission_handler/permission_handler.dart';
import 'result_screen.dart';

void main() {
  runApp(const Scan());
}

class Scan extends StatelessWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Recognition Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with WidgetsBindingObserver {
  bool _isPermissionGranted = true;
  late final Future<void> _future;
  CameraController? _cameraController;
  final textRecognizer = TextRecognizer();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    // Tambahkan _requestCameraPermission() ke _future di initState
    _future = _requestCameraPermission();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _stopCamera();
    textRecognizer.close();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (_cameraController == null || !_cameraController!.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      _stopCamera();
    } else if (state == AppLifecycleState.resumed &&
        _cameraController != null &&
        _cameraController!.value.isInitialized) {
      _startCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        return Stack(
          children: [
            if (_isPermissionGranted)
              FutureBuilder<List<CameraDescription>>(
                future: availableCameras(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    _initCameraController(snapshot.data!);

                    return Center(child: CameraPreview(_cameraController!));
                  } else {
                    return const LinearProgressIndicator();
                  }
                },
              ),
            Scaffold(
              appBar: AppBar(
                title: const Text('Text Recognition Sample'),
              ),
              backgroundColor: _isPermissionGranted ? Colors.transparent : null,
              body: _isPermissionGranted
                  ? Column(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Center(
                            child: ElevatedButton(
                              onPressed: _scanImage,
                              child: const Text('Scan text'),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Center(
                      child: Container(
                        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                        child: const Text(
                          'Camera permission denied',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _requestCameraPermission() async {
    final status = await Permission.camera.request();
    if (status.isGranted) {
      setState(() {
        _isPermissionGranted = true;
      });
      _startCamera();
    } else {
      setState(() {
        _isPermissionGranted = false;
      });
      // Izin ditolak. Tindakan selanjutnya sesuai dengan aplikasi Anda.
    }
  }

  void _startCamera() {
  if (_cameraController != null) {
    _cameraSelected(_cameraController!.description);
  }
}

  void _stopCamera() {
  if (_cameraController != null) {
    _cameraController?.dispose();
  }
}

  void _initCameraController(List<CameraDescription> cameras) {
  if (_cameraController != null) {
    return;
  }

  // Select the first rear camera.
  CameraDescription? camera;
  for (var i = 0; i < cameras.length; i++) {
    final CameraDescription current = cameras[i];
    if (current.lensDirection == CameraLensDirection.back) {
      camera = current;
      break;
    }
  }

  if (camera != null) {
    _cameraSelected(camera); // Tidak perlu memanggil _cameraSelected di sini
  }
}


  Future<void> _cameraSelected(CameraDescription camera) async {
  if (_cameraController != null) {
    await _cameraController!.dispose(); // Hentikan dan hancurkan controller sebelum menginisialisasi ulang
  }

  _cameraController = CameraController(
    camera,
    ResolutionPreset.max,
    enableAudio: false,
  );

  try {
    await _cameraController?.initialize();
    await _cameraController?.setFlashMode(FlashMode.off);
  } catch (e) {
    // Tangani kesalahan saat menginisialisasi kamera
    print("Error initializing camera: $e");
  }

  if (mounted) {
    setState(() {});
  }
}

  Future<void> _scanImage() async {
    if (_cameraController == null) return;

    final navigator = Navigator.of(context);

    try {
      final pictureFile = await _cameraController!.takePicture();

      final file = File(pictureFile.path);

      final inputImage = InputImage.fromFile(file);
      final recognizedText = await textRecognizer.processImage(inputImage);

      await navigator.push(
        MaterialPageRoute(
          builder: (BuildContext context) =>
              ResultScreen(text: recognizedText.text),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('An error occurred when scanning text'),
        ),
      );
    }
  }
}
