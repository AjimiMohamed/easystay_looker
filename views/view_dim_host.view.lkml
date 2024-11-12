view: view_dim_host {
  sql_table_name: `presentation_easystay.view_dim_host` ;;

  dimension: host_id {
    type: number
    sql: ${TABLE}.hostID ;;
  }
  dimension: is_super_host {
    type: yesno
    sql: ${TABLE}.isSuperHost ;;
  }
  measure: count {
    type: count
  }
}
