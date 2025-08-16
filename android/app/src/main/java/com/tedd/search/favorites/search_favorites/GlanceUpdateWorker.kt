package com.tedd.search.favorites.search_favorites

import LatestFavoriteWidget
import android.content.Context
import androidx.glance.appwidget.updateAll
import androidx.work.CoroutineWorker
import androidx.work.WorkerParameters

class GlanceUpdateWorker(
    appContext: Context,
    workerParameters: WorkerParameters
) : CoroutineWorker(appContext, workerParameters) {
    override suspend fun doWork(): Result {
        LatestFavoriteWidget().updateAll(applicationContext)
        return Result.success()
    }
}