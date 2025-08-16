package com.tedd.search.favorites.search_favorites

import LatestFavoriteWidget
import android.appwidget.AppWidgetManager
import android.content.Context
import androidx.glance.appwidget.GlanceAppWidget
import androidx.glance.appwidget.GlanceAppWidgetReceiver
import androidx.work.OneTimeWorkRequestBuilder
import androidx.work.WorkManager

class LatestFavoriteWidgetReceiver : GlanceAppWidgetReceiver() {
    override val glanceAppWidget: GlanceAppWidget = LatestFavoriteWidget()

    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray
    ) {
        super.onUpdate(context, appWidgetManager, appWidgetIds)
        val workRequest = OneTimeWorkRequestBuilder<GlanceUpdateWorker>().build()
        WorkManager.getInstance(context).enqueue(workRequest)
    }
}