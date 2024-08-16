{
  services.dunst = {
    enable = true;
    settings = {
      global = {
        monitor = 0;
        follow = "mouse";
        # width = 320
        # height = 320
        width = 220;
        height = 220;
        origin = "top-center";
        offset = "15x15";
        scale = 0;
        notification_limit = 0;
        progress_bar = true;
        progress_bar_frame_width = 2;
        highlight = "#434c5e";
        indicate_hidden = "yes";
        transparency = 0;
        separator_height = 2;
        padding = 10;
        horizontal_padding = 10;
        text_icon_padding = 0;
        frame_width = 3;
        frame_color = "#313244";
        gap_size = 0;
        separator_color = "frame";
        sort = "yes";
        idle_threshold = 120;
        #font = "JetBrainsMono Nerd Font 9";
        line_height = 0;
        markup = "full";
        # format = "<b>%a</b>\n%s%b"
        format = "<b>%a</b>\n%s";
        alignment = "left";
        vertical_alignment = "top";
        show_age_threshold = 60;
        ellipsize = "middle";
        ignore_newline = "no";
        stack_duplicates = true;
        hide_duplicate_count = false;
        show_indicators = "no";
        icon_position = "left";
        min_icon_size = 30;
        max_icon_size = 40;
        sticky_history = "yes";
        history_length = 20;
        always_run_script = true;
        corner_radius = 18;
        ignore_dbusclose = false;
        force_xinerama = false;
        mouse_left_click = "close_current";
        mouse_middle_click = "do_action, close_current";
        mouse_right_click = "close_all";
        icon_theme = "Flat-Remix-Blue-Dark";
        enable_recursive_icon_lookup = true;
        font = "JetBrainsMono Nerd Font 9";
      };

      urgency_low = {
        background = "#2e3440";
        foreground = "#d8dee9";
        timeout = 3;
      };

      urgency_normal = {
        background = "#2e3440";
        foreground = "#d8dee9";
        timeout = 10;
      };

      urgency_critical = {
        background = "#2e3440";
        foreground = "#d8dee9";
        frame_color = "#f38ba8";
        timeout = 0;
      };
    };
  };
}

