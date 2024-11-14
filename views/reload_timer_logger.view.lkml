view: reload_time_logger {
  sql_table_name: `metadata_easystay.reload_time_logger` ;;

  dimension: reload_timestamp {
    type: date_time
    sql: ${TABLE}.reload_timestamp ;;
  }

}
