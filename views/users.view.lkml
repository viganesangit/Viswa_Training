view: users {
  sql_table_name: demo_db.users ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: full_name {
    type: string
    sql: CONCAT(${first_name}, ' ', ${last_name}) ;;
  }
  dimension: full_name_length {
    type: number
    sql: LENGTH(${full_name}) ;;
  }
  dimension: age_tier {
    type: tier
    label: "Age Decade Tier"
    sql: ${age} ;;
    tiers: [10, 20, 30, 40, 50, 60, 70, 80, 90]
    style: integer
  }
  measure: average_user_age {
    type: average
    label: "Average User Age"
    sql: ${age} ;;
    value_format_name: decimal_2
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: count_example {
    type: count
    value_format_name: usd
    html: <ul>
      <li> value: {{ value }} </li>
      <li> rendered_value: {{ rendered_value }} </li>
      <li> linked_value: {{ linked_value }} </li>
      <li> link: {{ link }} </li>
      <li> model: {{ _model._name }} </li>
      <li> view: {{ _view._name }} </li>
      <li> explore: {{ _explore._name }} </li>
      <li> field: {{ _field._name }} </li>
      <li> dialect: {{ _dialect._name }} </li>
      <li> connection: {{ _connection._database }} </li>
      <li> connection: {{ count._sql }} </li>
      <li> query timezone: {{ _query._query_timezone }} </li>
      <li> filters: {{ _filters['users.id'] }} </li>
      <li> Is 'Users' view used: {{ users._in_query }} </li>
      <li> Is 'Users ID' field In Query: {{ users.id._in_query }} </li>
      <li> Is 'Users Count' field In Query: {{ users.count_example._in_query }} </li>
      <li> Is 'Users Country' field In Query: {{ users.country._in_query }} </li>
      <li> Is 'Users Country' field selected: {{ users.country._is_selected }} </li>
      <li> Is 'Users Country' field filtered: {{ users.country._is_filtered }} </li>
    </ul> ;;
  }


  measure: count_link {
    type: count
    html: {{link}} ;;
  }
  measure: count_linked_value {
    type: count
    html: This is the value: {{linked_value}} ;;
    value_format_name: usd
  }

  dimension: state {
    map_layer_name: us_states
    type: string
    sql: ${TABLE}.state ;;
    link: {
      label: "Go to Dashboard 1"
      url: "/dashboards/7?State={{ _filters['users.state'] | url_encode }}"
    }
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  first_name,
  last_name,
  demo_visits_data.count,
  events.count,
  orders.count,
  saralooker.count,
  sindhu.count,
  user_data.count
  ]
  }

}
