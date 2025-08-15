package com.tedd.search.favorites.search_favorites

import LatestFavoriteWidget
import android.appwidget.AppWidgetManager
import android.content.Context
import android.util.Log
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.glance.appwidget.GlanceAppWidget
import androidx.glance.appwidget.GlanceAppWidgetManager
import androidx.glance.appwidget.GlanceAppWidgetReceiver
import androidx.glance.appwidget.state.updateAppWidgetState
import io.flutter.FlutterInjector
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor.DartEntrypoint
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class LatestFavoriteWidgetReceiver : GlanceAppWidgetReceiver() {
    override val glanceAppWidget: GlanceAppWidget = LatestFavoriteWidget()

    private val FLUTTER_ENGINE_ID = "widget_flutter_engine"

    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray
    ) {
        super.onUpdate(context, appWidgetManager, appWidgetIds)
        Log.d("WidgetReceiver", "onUpdate called")

        val pendingResult = goAsync()
        GlobalScope.launch(Dispatchers.Main) {
            try {
                val glanceManager = GlanceAppWidgetManager(context)
                val latestRepo = getLatestFavoriteFromFlutter(context)
                Log.d("WidgetReceiver", "Data from Flutter: $latestRepo")

                appWidgetIds.forEach { appWidgetId ->
                    val glanceId = glanceManager.getGlanceIdBy(appWidgetId)
                    updateAppWidgetState(context, glanceId) { prefs ->
                        prefs.toMutablePreferences().apply {
                            this[stringPreferencesKey("name")] =
                                latestRepo?.get("name") ?: "No repository found"
                            this[stringPreferencesKey("description")] =
                                latestRepo?.get("description") ?: ""
                        }
                    }
                }
            } finally {
                pendingResult.finish()
            }
        }
    }

    private suspend fun getLatestFavoriteFromFlutter(context: Context): Map<String, String>? {
        return withContext(Dispatchers.IO) {
            var engine = FlutterEngineCache.getInstance().get(FLUTTER_ENGINE_ID)
            if (engine == null) {
                engine = FlutterEngine(context.applicationContext)

                val flutterLoader = FlutterInjector.instance().flutterLoader()
                val entrypoint = DartEntrypoint(
                    flutterLoader.findAppBundlePath(),
                    "mainForWidget"
                )

                engine.dartExecutor.executeDartEntrypoint(entrypoint)
                FlutterEngineCache.getInstance().put(FLUTTER_ENGINE_ID, engine)
            }

            return@withContext withContext(Dispatchers.Main) {
                val channel = MethodChannel(
                    engine.dartExecutor.binaryMessenger,
                    "com.tedd.search_favorites.widget"
                )
                try {
                    @Suppress("UNCHECKED_CAST")
                    channel.invokeMethod("getLatestFavorite", null) as? Map<String, String>
                } catch (e: Exception) {
                    Log.e("WidgetReceiver", "MethodChannel error", e)
                    null
                }
            }
        }
    }

    override fun onDisabled(context: Context) {
        super.onDisabled(context)
        FlutterEngineCache.getInstance().get(FLUTTER_ENGINE_ID)?.destroy()
        FlutterEngineCache.getInstance().remove(FLUTTER_ENGINE_ID)
    }
}