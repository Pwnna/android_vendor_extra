MecuriCMod (MCM)
================

MecuriCMod is a modification on CyanogenMod. The main objective of MecuriCMod
is to attempt to create a more secure and free distribution that works out of
the gate.

Current Features
----------------

- Built-in FDroid.
- Anything from my proposed changes that's not merged yet: http://review.cyanogenmod.org/#/q/owner:shuhao%2540shuhaowu.com+status:open+branch:cm-12.1

Future Features
---------------

- Enabled Privacy Guard by default
- Turn off saving location data from camera by default
- Built-in AdAway with ads disabled by default.
- Tor integration?
- Others? Suggestions in issues please.

To use
------

    $ cd .repo/local_manifests
    $ wget -O mecuric.xml https://raw.githubusercontent.com/Pwnna/android_vendor_extra/cm-12.1/local_manifest.xml
    $ croot
    $ repo sync
