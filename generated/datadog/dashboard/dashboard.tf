resource "datadog_dashboard" "tfer--dashboard_2m4-cdc-jsk" {
  is_read_only = "false"
  layout_type  = "ordered"
  reflow_type  = "fixed"
  title        = "Special dash"
  url          = "/dashboard/2m4-cdc-jsk/special-dash"

  widget {
    timeseries_definition {
      request {
        display_type = "line"

        formula {
          formula_expression = "query1"
        }

        on_right_yaxis = "false"

        query {
          metric_query {
            data_source = "metrics"
            name        = "query1"
            query       = "avg:datadog.agent.running{*}"
          }
        }

        style {
          line_type  = "solid"
          line_width = "normal"
          palette    = "dog_classic"
        }
      }

      show_legend = "false"
      title_align = "left"
      title_size  = "16"
    }

    widget_layout {
      height          = "2"
      is_column_break = "false"
      width           = "4"
      x               = "0"
      y               = "0"
    }
  }

  widget {
    timeseries_definition {
      request {
        display_type = "line"

        formula {
          formula_expression = "query2"
        }

        on_right_yaxis = "false"

        query {
          metric_query {
            data_source = "metrics"
            name        = "query2"
            query       = "sum:system.disk.write_time{*}.as_count()"
          }
        }

        style {
          line_type  = "solid"
          line_width = "normal"
          palette    = "dog_classic"
        }
      }

      show_legend = "false"
      title_align = "left"
      title_size  = "16"
    }

    widget_layout {
      height          = "2"
      is_column_break = "false"
      width           = "4"
      x               = "4"
      y               = "0"
    }
  }
}

resource "datadog_dashboard" "tfer--dashboard_3xk-nsh-aqb" {
  is_read_only = "false"
  layout_type  = "ordered"
  title        = "Beejay's Dashboard Sat, Aug 19, 2:31:20 am"
  url          = "/dashboard/3xk-nsh-aqb/beejays-dashboard-sat-aug-19-23120-am"

  widget {
    timeseries_definition {
      request {
        display_type = "line"

        formula {
          formula_expression = "query1"
        }

        on_right_yaxis = "false"

        query {
          metric_query {
            data_source = "metrics"
            name        = "query1"
            query       = "avg:system.cpu.user{*}"
          }
        }

        style {
          line_type  = "solid"
          line_width = "normal"
          palette    = "dog_classic"
        }
      }

      show_legend = "false"
      title_align = "left"
      title_size  = "16"
    }

    widget_layout {
      height          = "2"
      is_column_break = "false"
      width           = "4"
      x               = "0"
      y               = "0"
    }
  }

  widget {
    timeseries_definition {
      request {
        display_type = "line"

        formula {
          formula_expression = "query2"
        }

        on_right_yaxis = "false"

        query {
          metric_query {
            data_source = "metrics"
            name        = "query2"
            query       = "avg:system.cpu.idle{*}"
          }
        }

        style {
          line_type  = "solid"
          line_width = "normal"
          palette    = "dog_classic"
        }
      }

      show_legend = "false"
      title_align = "left"
      title_size  = "16"
    }

    widget_layout {
      height          = "2"
      is_column_break = "false"
      width           = "4"
      x               = "4"
      y               = "0"
    }
  }

  widget {
    timeseries_definition {
      request {
        display_type = "line"

        formula {
          formula_expression = "query3"
        }

        on_right_yaxis = "false"

        query {
          metric_query {
            data_source = "metrics"
            name        = "query3"
            query       = "avg:system.mem.used{*}"
          }
        }

        style {
          line_type  = "solid"
          line_width = "normal"
          palette    = "dog_classic"
        }
      }

      show_legend = "false"
      title_align = "left"
      title_size  = "16"
    }

    widget_layout {
      height          = "2"
      is_column_break = "false"
      width           = "4"
      x               = "8"
      y               = "0"
    }
  }

  widget {
    timeseries_definition {
      request {
        display_type = "line"

        formula {
          formula_expression = "query4"
        }

        on_right_yaxis = "false"

        query {
          metric_query {
            data_source = "metrics"
            name        = "query4"
            query       = "avg:system.mem.free{*}"
          }
        }

        style {
          line_type  = "solid"
          line_width = "normal"
          palette    = "dog_classic"
        }
      }

      show_legend = "false"
      title_align = "left"
      title_size  = "16"
    }

    widget_layout {
      height          = "2"
      is_column_break = "false"
      width           = "4"
      x               = "0"
      y               = "2"
    }
  }
}
