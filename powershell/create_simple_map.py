
import folium
from folium.plugins import MarkerCluster


m = folium.Map(location=[52.48783, 13.34204], zoom_start=12,tiles="CartoDB dark_matter")
t = folium.Icon(icon="car", prefix="fa")

start_marker = folium.Marker([52.49136, 13.36037],  popup='Spiced Academy',icon=folium.Icon(color='red'))
watergate_marker = folium.Marker([52.50107, 13.445], popup='Watergate')
tresor_marker = folium.Marker([52.5106, 13.41976], popup='Tresor')
aboutblank_marker = folium.Marker([52.5025, 13.46637], popup='//about blank')
berhain_marker = folium.Marker([52.51068, 13.44232], popup='Berghain')
mbia_marker = folium.Marker([2.52248, 13.40906], popup='M-Bia')
farbfernseher_marker = folium.Marker([52.49935, 13.42423], popup='Farbfernseher')
polygonclub_marker = folium.Marker([52.5076, 13.47511], popup='polygon club')
goldengate_marker = folium.Marker([52.51599, 13.41678], popup='Golden Gate')
suicidecircus_marker = folium.Marker([52.50724, 13.45119], popup='Suicide Circus')


m.add_child(start_marker)
m.add_child(watergate_marker)
m.add_child(tresor_marker)
m.add_child(aboutblank_marker)
m.add_child(berhain_marker)
m.add_child(mbia_marker)
m.add_child(farbfernseher_marker)
m.add_child(polygonclub_marker)
m.add_child(goldengate_marker)
m.add_child(suicidecircus_marker)

m

