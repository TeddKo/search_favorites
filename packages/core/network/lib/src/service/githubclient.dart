import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../model/repository.dart';

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

