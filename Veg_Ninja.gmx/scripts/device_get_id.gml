        /// device_get_id();

var os_name;
switch (os_type)
{
    // BM: Supported platforms.
    case os_ios:
    case os_android:
        return GetDeviceID();
        
    // BM: Unsupported platforms.
    case os_windows:    os_name = "windows";        break;
    case os_win8native: os_name = "os_win8native";  break;
    case os_linux:      os_name = "linux";          break;
    case os_macosx:     os_name = "osx";            break;
    case os_winphone:   os_name = "windowsphone";   break;
    case os_tizen:      os_name = "tizen";          break;
    default:            os_name = "unknown";        break;
}

// BM: Let the developer know we are running on an unsupported target.
show_debug_message("WARNING: device_get_id unsupported on current target: " + os_name);
show_debug_message("WARNING: returning '0' as device id.");

// BM: Probably better to return something rather than a blank string.
return "0";
