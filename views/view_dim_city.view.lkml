view: view_dim_city {
  sql_table_name: `presentation_easystay.view_dim_city` ;;

  dimension: city_id {
    type: number
    sql: ${TABLE}.cityID ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
