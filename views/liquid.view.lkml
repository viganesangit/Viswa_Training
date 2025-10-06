view: liquid {
  dimension: liquid_variable_example {
    type: number
    html: {% assign TRAINING = 8 %}
{{ TRAINING | minus: 1 }} ;;
  }
  }
