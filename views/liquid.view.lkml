view: liquid {
  dimension: liquid_variable_example {
    type: string
    html: {% assign TRAINING = 8 %}
{{ TRAINING | minus: 1 }} ;;
  }
  }
