@state_labels = StateLabel.all
@geojson = Array.new

@state_labels.each do |state_label|
    @geojson << {
        type: 'Feature',
        geometry: {
          type: 'Point',
          coordinates: [state_label.longitude, state_label.latitude]
        },
        properties: {
          name: state_label.name,
          :'marker-color' => '#00607d',
          :'marker-symbol' => 'circle',
          :'marker-size' => 'medium'
        }
      }
    end
respond_to do |format|
    format.htmlformat.json { render json: @geojson }
end
