import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.g.dart';

@riverpod
Dio dio(Ref ref) {
    final dio = Dio(
        BaseOptions(
            baseUrl: 'https://api.github.com',
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 3),
            headers: {
                'Accept' : 'application/vnd.github+json',
                'X-GitHub-Api-Version' : '2022-11-28',
                'Authorization' : 'Bearer ${dotenv.env['GITHUB_API_TOKEN']}'
            },
        ),
    );
    dio.interceptors.add(LogInterceptor());
    return dio;
}