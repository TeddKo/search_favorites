package com.tedd.search.favorites.search_favorites

import HomeWidgetGlanceWidgetReceiver
import LatestFavoriteWidget

class LatestFavoriteWidgetReceiver : HomeWidgetGlanceWidgetReceiver<LatestFavoriteWidget>() {
    override val glanceAppWidget = LatestFavoriteWidget()
}