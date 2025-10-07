
view: liquid {

  dimension: liquid_variable_example {
    type: string
    sql: "Example" ;;
    html: {% assign my_variable = "This is a variable" %}
      {{ my_variable }} ;;
  }

  dimension: liquid_filter_example {
    type: string
    sql: "Example" ;;
    html: {% assign my_variable = "This is a variable" %}
      {{ my_variable | upcase }} ;;
  }

  dimension: liquid_string_filters {
    type: string
    sql: "Example" ;;
    html: {% assign my_variable = "This is a variable" %}
          <ul>
            <li>'{ { my_variable } }' --> {{ my_variable  }}</li>
            <li>'{ { my_variable | upcase } }' --> {{ my_variable | upcase }}</li>
            <li>'{ { my_variable | append: "..." } }' --> {{ my_variable | append: " blablabla..." }}</li>
            <li>'{ { my_variable | downcase } }' --> {{ my_variable | downcase }}</li>
            <li>'{ { my_variable | prepend: "Example: " } }' --> {{ my_variable | prepend: "Example: " }}</li>
            <li>'{ { my_variable | remove: "is a" } }' --> {{ my_variable | remove: "is a" }}</li>
            <li>'{ { my_variable | replace: "varaible","constant" } }' --> {{ my_variable | replace: "variable","constant"}}</li>
            <li>'{ { my_variable | split: " " | slice: 0 } }' --> {{ my_variable | split: " " | slice: 0 }}</li>
            <li>'{ { my_variable | split: " " | slice: 1 } }' --> {{ my_variable | split: " " | slice: 1 }}</li>
          </ul>;;
  }

  dimension: liquid_number_filters {
    type: string
    sql: "Example" ;;
    html: {% assign my_variable = 5.6 %}
          <ul>
            <li>'{ { my_variable } }' --> {{ my_variable}}</li>
            <li>'{ { my_variable | ceil } }' --> {{ my_variable | ceil}}</li>
            <li>'{ { my_variable | floor } }' --> {{ my_variable | floor}}</li>
            <li>'{ { my_variable | round } }' --> {{ my_variable | round}}</li>
            <li>'{ { my_variable | divided_by: 2 } }' --> {{ my_variable | divided_by: 2}}</li>
            <li>'{ { my_variable | minus: 1 } }' --> {{ my_variable | minus: 1}}</li>
            <li>'{ { my_variable | plus: 1 } }' --> {{ my_variable | plus: 1}}</li>
            <li>'{ { my_variable | times: 2 } }' --> {{ my_variable | times: 2}}</li>
            <li>'{ { my_variable | times: -3 | abs } }' --> {{ my_variable | times: -3 | abs}}</li>
          </ul>;;
  }

  dimension: liquid_date_filters {
    type: string
    sql: "Example" ;;
    html: {% assign my_variable = "April 21, 2025 14:55:02" %}
          <ul>
            <li>'{ { my_variable } }' --> {{ my_variable}}</li>
            <li>'{ { my_variable | date: "%A" } }' --> {{ my_variable | date: "%A" }}</li>
            <li>'{ { my_variable | date: "%B" } }' --> {{ my_variable | date: "%B" }}</li>
            <li>'{ { my_variable | date: "%P" } }' --> {{ my_variable | date: "%P" }}</li>
            <li>'{ { my_variable | date: "%d" } }' --> {{ my_variable | date: "%d" }}</li>
            <li>'{ { my_variable | date: "%D" } }' --> {{ my_variable | date: "%D" }}</li>
            <li>'{ { my_variable | date: "%F" } }' --> {{ my_variable | date: "%F" }}</li>
            <li>'{ { my_variable | date: "%T" } }' --> {{ my_variable | date: "%T" }}</li>
            <li>'{ { my_variable | date: "%r" } }' --> {{ my_variable | date: "%r" }}</li>
          </ul>   ;;
  }

}
