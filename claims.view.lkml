view: claims {
  sql_table_name: baggage_claim.claims ;;

  dimension: claim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.claim_id ;;
  }

  dimension: airline_name {
    type: string
    sql: ${TABLE}.airline_name ;;
  }

  dimension: airport_code {
    type: string
    sql: ${TABLE}.airport_code ;;
  }

  dimension: airport_name {
    type: string
    sql: ${TABLE}.airport_name ;;
  }

  dimension: sleep {
    type:  string
    sql:  SLEEP(5) ;;
  }

  dimension: claim_site {
    type: string
    sql: ${TABLE}.claim_site ;;
  }

  dimension: claim_type {
    type: string
    sql: ${TABLE}.claim_type ;;
  }

  dimension: close_amount {
    type: number
    sql: ${TABLE}.close_amount ;;
    value_format_name: usd
  }

  dimension_group: date_received {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.date_received ;;
  }

  dimension: disposition {
    type: string
    sql: ${TABLE}.disposition ;;
  }

  dimension_group: incident {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.incident_date ;;
  }

  dimension: item_category {
    type: string
    sql: ${TABLE}.item_category ;;
  }

  measure: count {
    type: count
    drill_fields: [airline_name, total_amount]
  }

  measure: total_amount {
    sql: ${close_amount} ;;
    type:  sum
  }
}
