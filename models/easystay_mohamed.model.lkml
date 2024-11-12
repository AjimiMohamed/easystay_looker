connection: "easy_stay_ma"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: easystay_mohamed_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: easystay_mohamed_default_datagroup

explore: view_dim_accommodationtype {}

explore: view_dim_host {}



explore: view_dim_city {}



explore: dim_accommodation_type {}


explore: view_dim_period {}

explore: view_fact_listing {

  # Join the accommodation type dimension
  join: view_dim_accommodationtype {
    type: left_outer
    sql_on: ${view_fact_listing.accommodation_type_id} = ${view_dim_accommodationtype.accommodation_type_id} ;;
    relationship: many_to_one
  }

  # Join the host dimension
  join: view_dim_host {
    type: left_outer
    sql_on: ${view_fact_listing.host_id} = ${view_dim_host.host_id} ;;
    relationship: many_to_one
  }

  # Join the city dimension
  join: view_dim_city {
    type: left_outer
    sql_on: ${view_fact_listing.city_id} = ${view_dim_city.city_id} ;;
    relationship: many_to_one
  }

  # Join the period dimension
  join: view_dim_period {
    type: left_outer
    sql_on: ${view_fact_listing.period_id} = ${view_dim_period.period_id} ;;
    relationship: many_to_one
  }
}
