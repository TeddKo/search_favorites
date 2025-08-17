import android.content.Context
import android.os.Build
import androidx.annotation.RequiresApi
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.net.toUri
import androidx.glance.GlanceId
import androidx.glance.GlanceModifier
import androidx.glance.Image
import androidx.glance.ImageProvider
import androidx.glance.action.clickable
import androidx.glance.appwidget.GlanceAppWidget
import androidx.glance.appwidget.lazy.LazyColumn
import androidx.glance.appwidget.provideContent
import androidx.glance.background
import androidx.glance.currentState
import androidx.glance.layout.Alignment
import androidx.glance.layout.Column
import androidx.glance.layout.Row
import androidx.glance.layout.Spacer
import androidx.glance.layout.fillMaxSize
import androidx.glance.layout.fillMaxWidth
import androidx.glance.layout.height
import androidx.glance.layout.padding
import androidx.glance.layout.size
import androidx.glance.layout.width
import androidx.glance.state.GlanceStateDefinition
import androidx.glance.text.FontWeight
import androidx.glance.text.Text
import androidx.glance.text.TextStyle
import com.tedd.search.favorites.search_favorites.MainActivity
import com.tedd.search.favorites.search_favorites.R
import es.antonborri.home_widget.actionStartActivity

class LatestFavoriteWidget : GlanceAppWidget() {

    override val stateDefinition: GlanceStateDefinition<*>?
        get() = HomeWidgetGlanceStateDefinition()

    @RequiresApi(Build.VERSION_CODES.M)
    override suspend fun provideGlance(context: Context, id: GlanceId) {
        provideContent {
            FavoriteWidget(context = context, currentState = currentState())
        }
    }

    @RequiresApi(Build.VERSION_CODES.M)
    @Composable
    private fun FavoriteWidget(context: Context, currentState: HomeWidgetGlanceState) {

        val prefs = currentState.preferences
        val name = prefs.getString("name", "") ?: ""
        val description = prefs.getString("description", "") ?: ""
        val stargazersCount = prefs.getInt("stargazersCount", 0);
        val forksCount = prefs.getInt("forksCount", 0);

        val favoritesUri = "searchfavorites://app/favorites".toUri()

        LazyColumn {
            item {
                Column(
                    modifier = GlanceModifier
                        .fillMaxSize()
                        .padding(16.dp)
                        .background(ImageProvider(R.drawable.background_widget))
                        .clickable(
                            onClick = actionStartActivity<MainActivity>(
                                context,
                                favoritesUri
                            )
                        )
                ) {
                    Text(
                        text = name,
                        style = TextStyle(fontWeight = FontWeight.Bold, fontSize = 16.sp)
                    )
                    Spacer(modifier = GlanceModifier.height(8.dp))
                    Text(text = description)
                    Spacer(modifier = GlanceModifier.height(8.dp))
                    Row(
                        modifier = GlanceModifier.fillMaxWidth()
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Image(
                                modifier = GlanceModifier.size(10.dp),
                                provider = ImageProvider(R.drawable.star_border),
                                contentDescription = ""
                            )
                            Spacer(modifier = GlanceModifier.width(4.dp))
                            Text(text = stargazersCount.toString())
                        }
                        Spacer(modifier = GlanceModifier.width(8.dp))
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Image(
                                modifier = GlanceModifier.size(10.dp),
                                provider = ImageProvider(R.drawable.fork_right),
                                contentDescription = ""
                            )
                            Spacer(modifier = GlanceModifier.width(4.dp))
                            Text(text = forksCount.toString())
                        }

                    }
                }
            }
        }
    }
}