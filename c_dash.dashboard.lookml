- dashboard: c_dash
  title: C Dash
  layout: tile
  tile_size: 100

  filters:

  elements:
  - name: add_a_unique_name_1490648791
    title: Untitled Visualization
    type: looker_area
    model: baggage_claims
    explore: claims
    dimensions: [claims.claim_type, claims.date_received_date]
    pivots: [claims.claim_type]
    fill_fields: [claims.date_received_date]
    measures: [claims.count]
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: "${claims.count} * 10"
      value_format:
      value_format_name: gbp_0
    filters:
      claims.claim_type: Personal Injury,Property Damage,Compliment,Motor Vehicle
      claims.date_received_month: 2014/07/01 to 2014/08/30
    sorts: [claims.claim_type 0, calculation_1 1]
    limit: '500'
    column_limit: '50'
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    hidden_series: [Compliment - Claims Count, Motor Vehicle - Claims Count, Personal Injury - Claims Count,
      Property Damage - Claims Count]
    hidden_fields:
    y_axes: [{label: percent blah blah, maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: "###%", series: [{id: Motor Vehicle - Claims Count,
            name: Motor Vehicle - Claims Count}, {id: Motor Vehicle - Calculation 1,
            name: Motor Vehicle - Calculation 1}, {id: Personal Injury - Claims Count,
            name: Personal Injury - Claims Count}, {id: Personal Injury - Calculation 1,
            name: Personal Injury - Calculation 1}, {id: Property Damage - Claims Count,
            name: Property Damage - Claims Count}, {id: Property Damage - Calculation 1,
            name: Property Damage - Calculation 1}]}]
    x_axis_label: week baloney
