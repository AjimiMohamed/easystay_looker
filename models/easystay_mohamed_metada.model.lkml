connection: "easystay_metadata_ma"

include: "/views/reload_timer_logger.view.lkml"                # include all views in the views/ folder in this project

datagroup: easystay_mohamed_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: easystay_mohamed_default_datagroup

explore: reload_time_logger {}
