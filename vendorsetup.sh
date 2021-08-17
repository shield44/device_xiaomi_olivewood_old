# Use PROD Camera Pixel Format
cd hardware/qcom-caf/msm8996/display
git fetch https://github.com/PixelExperience/hardware_qcom-caf_msm8996_display
git cherry-pick 20a6dc8b24853cffda07e3b454503740bac79a4d
cd ..
# Use LineageOS audio hals
rm -rf audio
git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-18.1-caf-msm8996 audio
cd ../../../
