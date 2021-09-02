# Use R hals
cd hardware/qcom-caf/msm8996/
rm -rf media display media audio
git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-18.1-caf-msm8996 audio
git clone --single-branch https://github.com/Jabiyeff/android_hardware_qcom_media media
git clone --single-branch https://github.com/Jabiyeff/android_hardware_qcom_display display
cd ../../../
