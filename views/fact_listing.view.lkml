view: fact_listing {
  sql_table_name: `presentation_easystay.fact_Listing` ;;

  dimension: accommodation_type_id {
    type: number
    sql: ${TABLE}.accommodationTypeID ;;
  }
  dimension: attr_index {
    type: number
    sql: ${TABLE}.attr_index ;;
  }
  dimension: attr_index_norm {
    type: number
    sql: ${TABLE}.attr_index_norm ;;
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
  dimension: distance_from_center {
    type: number
    sql: ${TABLE}.distance_from_center ;;
  }
  dimension: guest_satisfaction_overall {
    type: number
    sql: ${TABLE}.guest_satisfaction_overall ;;
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
  dimension: metro_distance {
    type: number
    sql: ${TABLE}.metro_distance ;;
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
  }
  dimension: rest_index {
    type: number
    sql: ${TABLE}.rest_index ;;
  }
  dimension: rest_index_norm {
    type: number
    sql: ${TABLE}.rest_index_norm ;;
  }
  dimension: row_hash {
    type: string
    sql: ${TABLE}.row_hash ;;
  }
  measure: count {
    type: count
  }
}
