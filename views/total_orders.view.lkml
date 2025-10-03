view: total_orders {
    derived_table: {
      explore_source: orders {
        column: status {}
        column: state { field: users.state }
        column: count {}
      }
    }
    dimension: status {
      description: ""
    }
    dimension: state {
      description: ""
    }
    dimension: count {
      description: ""
      type: number
    }
  }
