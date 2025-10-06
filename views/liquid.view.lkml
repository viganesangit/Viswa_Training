view: liquid {
  dimension: liquid_variable_example {
    type: string
    sql: {% assign TRAINING = 8 %}
{{ TRAINING | minus: 4 }} ;;
  }
  }
