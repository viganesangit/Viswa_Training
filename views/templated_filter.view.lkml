
view: templated_filter {
  derived_table: {
    sql: Select
      id, first_name, last_name, age, created_at, state from users
      -- WHERE {% condition users_location %} users.state {% endcondition %} -- TEMPLATED FILTER
      WHERE users.state = {% parameter users_parameter %} ;;
  }

  filter: users_location {
   type: string
  }

  parameter: users_parameter {
    type: string
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}.created_at ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  set: detail {
    fields: [
        id,
  first_name,
  last_name,
  age,
  created_at_time,
  state
    ]
  }
}
