import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AppError {
  String? code;
  String? message;

  AppError({this.code, this.message});

  static void showError(Object e, String title) {
    final clearMessage = e.toString().split(': ').last;
    Get.snackbar(
      title,
      clearMessage,
      duration: const Duration(seconds: 5),
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );
  }

  factory AppError.fromException(Object e) {
    debugPrint(e.toString());
    // 1. Handle HTTP Response Error (GetConnect)
    if (e is Response) {
      return AppError(
        message: _handleHttpError(e),
        code: 'http_${e.statusCode ?? 'unknown'}',
      );
    }

    // 2. Handle Platform Error
    if (e is PlatformException) {
      return AppError(message: _handlePlatformError(e), code: e.code);
    }

    // 3. Handle File System Error
    if (e is FileSystemException) {
      return AppError(
        message: _handleFileSystemError(e),
        code: e.osError?.errorCode.toString() ?? 'fs_error',
      );
    }

    // 4. Handle Type Error (Parsing JSON yang salah)
    if (e is TypeError) {
      return AppError(
        message: 'Terjadi kesalahan format data.',
        code: 'type_error',
      );
    }

    // 5. Handle App Error
    if (e is AppError) {
      return AppError(message: e.message, code: e.code);
    }

    // 5. Handle General Error
    return AppError(
      message: e.toString().replaceFirst('Exception: ', ''),
      code: 'general_error',
    );
  }

  // Logic untuk Handle HTTP Error
  static String _handleHttpError(Response response) {
    if (response.statusCode == 0) {
      return 'Tidak ada koneksi internet atau server tidak terjangkau.';
    }

    // Jika server memberikan pesan error di body (misal: { "message": "..." })
    if (response.body != null &&
        response.body is Map &&
        response.body['message'] != null) {
      return response.body['message'];
    }

    switch (response.statusCode) {
      case 400:
        return 'Permintaan tidak valid (Bad Request).';
      case 401:
        return 'Sesi berakhir, silakan login kembali.';
      case 403:
        return 'Akses ditolak (Forbidden).';
      case 404:
        return 'Data tidak ditemukan di server.';
      case 408:
        return 'Waktu permintaan habis (Timeout).';
      case 500:
        return 'Terjadi masalah pada server internal.';
      case 503:
        return 'Layanan sedang maintenance.';
      default:
        return 'Gagal terhubung ke server (${response.statusCode}).';
    }
  }

  static String _handlePlatformError(PlatformException e) {
    switch (e.code) {
      case 'unzip_error':
        return 'File backup tidak ditemukan, lakukan backup terlebih dahulu';
      case 'permission_denied':
        return 'Izin akses penyimpanan ditolak oleh sistem.';
      default:
        return 'Terjadi kesalahan pada sistem native (${e.code}).';
    }
  }

  static String _handleFileSystemError(FileSystemException e) {
    if (e.osError?.errorCode == 13) {
      return 'Akses folder ditolak (Permission Denied).';
    } else if (e.osError?.errorCode == 2) {
      return 'File atau folder tidak ditemukan.';
    }
    return 'Gagal mengakses penyimpanan: ${e.message}';
  }
}
