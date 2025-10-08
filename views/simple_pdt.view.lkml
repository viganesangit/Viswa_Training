

  view: simple_pdt {
    derived_table: {
      sql: SELECT 1 as ID ;;
      datagroup_trigger:memops_24_hours
      indexes: ["id"]
    }
    dimension: id {
      description: ""
      type: number
    }
  }
