package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib;

import android.util.Log;
import android.telephony.TelephonyManager;
import android.content.Context;
import android.os.Build;

public class GetDeviceDetails {

	public String GetDeviceID() {
		Context c = RunnerJNILib.ms_context;
		final String deviceId = ((TelephonyManager) c.getSystemService(Context.TELEPHONY_SERVICE)).getDeviceId();
		if (deviceId != null) {
			Log.i("yoyo", "GetDeviceID() using TELEPHONY_SERVICE");
			return deviceId;
		}
		
		Log.i("yoyo", "GetDeviceID() using android.os.Build.SERIAL");
		return android.os.Build.SERIAL;
	}	
}

