view: templated_filter {
    derived_table: {
      sql: SELECT
              id, first_name,
              last_name, age,
              created_at, state
              FROM users
        WHERE {% condition users_location %} users.state {% endcondition %} ;;
    }

    filter: users_location {
      type: string
    }
  }

# }
