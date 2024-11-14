view: view_fact_listing {
  sql_table_name: `presentation_easystay.view_fact_listing` ;;

  dimension: accommodation_type_id {
    type: number
    sql: ${TABLE}.accommodationTypeID ;;
  }
  dimension: attr_index {
    type: number
    sql: ${TABLE}.attr_index ;;
  }

  measure: avg_attr_index {
    type: average
    sql: ${TABLE}.attr_index ;;
  }

  dimension: gropuper {
    sql: 1 ;;
  }

  dimension: attr_index_norm {
    type: number
    sql: ${TABLE}.attr_index_norm ;;
  }
  measure: avg_attr_index_norm {
    type: average
    sql: ${TABLE}.attr_index_norm ;;
  }
  measure: bedrooms_num {
    type: number
    sql: ${TABLE}.bedrooms ;;
  }
  dimension: bedrooms {
    type: number
    sql: ${TABLE}.bedrooms ;;
  }
  dimension: city_id {
    type: number
    sql: ${TABLE}.cityID ;;
  }
  dimension: cleanliness_rating_int {
    type: number
    sql: ${TABLE}.cleanliness_rating_int ;;
  }
  measure: avg_cleanliness_rating {
    type: average
    sql: ${TABLE}.cleanliness_rating_int ;;
    label: "Average Cleanliness Rating"
  }

  dimension: distance_from_center {
    type: number
    sql: ${TABLE}.distance_from_center ;;
    value_format: "#,##0.0"
  }
  measure: avg_distance_from_center {
    type: average
    sql: ${TABLE}.distance_from_center ;;
    label: "Average Distance from City Center"
    value_format: "#,##0.0"
  }

  measure: avg_metro_distance {
    type: average
    sql: ${TABLE}.metro_distance ;;
    label: "Average Distance from Metro Station"
    value_format: "#,##0.0"
  }

  dimension: metro_distance {
    type: number
    sql: ${TABLE}.metro_distance ;;
    label: "Distance from Metro Station"
    value_format: "#,##0.0"
  }

  dimension: form {
    sql: 1 ;;
    html: <form>
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname">
</form>;;
  }

  dimension: guest_satisfaction_overall {
    type: number
    sql: ${TABLE}.guest_satisfaction_overall ;;
  }
  measure: avg_guest_satisfaction {
    type: average
    sql: ${TABLE}.guest_satisfaction_overall ;;
    label: "Average Guest Satisfaction"
  }

  dimension: host_id {
    type: number
    sql: ${TABLE}.hostID ;;
  }
  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }
  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }
  dimension: location {
    type: location
    sql_latitude: ${lat} ;;
    sql_longitude: ${lng} ;;
  }

  dimension: period_id {
    type: number
    sql: ${TABLE}.periodID ;;
  }
  dimension: person_capacity {
    type: number
    sql: ${TABLE}.person_capacity ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
    value_format: "€#,##0.00"
  }

  measure: avg_price {
    type: average
    sql: ${TABLE}.price ;;
    label: "Average Rental Price"
    value_format: "€#,##0.00"
  }

  dimension: rest_index {
    type: number
    sql: ${TABLE}.rest_index ;;
  }
  dimension: rest_index_norm {
    type: number
    sql: ${TABLE}.rest_index_norm ;;
  }
  measure: avg_rest_index {
    type: average
    sql: ${TABLE}.rest_index ;;
  }
  measure: avg_rest_index_norm {
    type: average
    sql: ${TABLE}.rest_index_norm ;;
  }
  dimension: row_hash {
    primary_key: yes
    type: string
    sql: ${TABLE}.row_hash ;;
  }
  measure: count {
    type: count
  }

  measure: price_satisfaction_ratio {
    type: number
    sql: ${price} / NULLIF(${guest_satisfaction_overall}, 0) ;;
    label: "Price to Satisfaction Ratio"
  }

}
