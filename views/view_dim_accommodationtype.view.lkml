view: view_dim_accommodationtype {
  sql_table_name: `presentation_easystay.view_dim_accommodationtype` ;;

  dimension: accommodation_type_id {
    type: number
    sql: ${TABLE}.accommodationTypeID ;;
  }
  dimension: is_business {
    type: yesno
    sql: ${TABLE}.isBusiness ;;
  }
  dimension: is_multi {
    type: yesno
    sql: ${TABLE}.isMulti ;;
  }
  dimension: is_private {
    type: yesno
    sql: ${TABLE}.isPrivate ;;
  }
  dimension: is_shared {
    type: yesno
    sql: ${TABLE}.isShared ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
  }
}
