# ExampleASAN

This is a project that shows how to use ASan on a production Android device using wrap.sh.

The steps to getting this to work:
1.) install su on your android device
2.) use the command adb shell "su -c 'setenforce 0'" to turn off selinux on the device.
3.) use the same build.gradle as demo'd here.
4.) when done, turn selinux back on with: adb shell  "su -c 'setenforce 0'"

NB.  This project does not need to use asan_device_setup.  Full explanation and details can be found at my medium post here: https://medium.com/@gpx1000/oreo-ndk-secrets-7d075a9b084

The bug that requires su and turning selinux off will be fixed in Oreo MR1.  Will update the details here when su is no longer required.
