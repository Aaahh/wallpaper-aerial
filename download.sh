#!/bin/sh
# run this from /opt/ATV4 which you created and assigned 755 premissions manually

if [ ! $(id -u) = 0 ]; then
	echo "Must be run as root."
	exit 1
fi

dir=/opt/ATV4

if [ ! -d "$dir" ]; then
	mkdir -p "$dir"
fi

cd "$dir"

url="http://a1.phobos.apple.com/us/r1000/000/Features/atv/AutumnResources/videos"
for i in b10-1.mov b10-2.mov b10-3.mov b10-4.mov b1-1.mov b1-2.mov b1-3.mov b1-4.mov \
	b2-1.mov b2-2.mov b2-3.mov b2-4.mov b3-1.mov b3-2.mov b3-3.mov b4-1.mov b4-2.mov \
	b4-3.mov b5-1.mov b5-2.mov b5-3.mov b6-1.mov b6-2.mov b6-3.mov b6-4.mov b7-1.mov \
	b7-2.mov b7-3.mov b8-1.mov b8-2.mov b8-3.mov b9-1.mov b9-2.mov b9-3.mov \
	comp_GL_G004_C010_v03_6Mbps.mov comp_DB_D011_D009_SIGNCMP_v15_6Mbps.mov \
	comp_HK_H004_C008_v10_6Mbps.mov comp_LA_A009_C009_t9_6M_tag0.mov \
	comp_C002_C005_0818SC_001_v01_6M_HB_tag0.mov comp_GL_G010_C006_v08_6Mbps.mov \
	comp_LW_L001_C006_t9_6M_tag0.mov comp_DB_D011_C010_v10_6Mbps.mov \
	comp_LA_A005_C009_v05_t9_6M.mov comp_HK_B005_C011_t9_6M_tag0.mov \
	plate_G002_C002_BG_t9_6M_HB_tag0.mov comp_C007_C011_08244D_001_v01_6M_HB_tag0.mov \
	comp_LA_A006_C008_t9_6M_HB_tag0.mov comp_DB_D001_C001_v03_6Mbps.mov \
	comp_HK_H004_C010_4k_v01_6Mbps.mov comp_LA_A008_C004_ALT_v33_6Mbps.mov \
	comp_DB_D002_C003_t9_6M_HB_tag0.mov comp_C007_C004_0824AJ_001_v01_6M_HB_tag0.mov \
	comp_DB_D001_C005_t9_6M_HB_tag0.mov comp_HK_H004_C013_t9_6M_HB_tag0.mov \
	comp_DB_D008_C010_v04_6Mbps.mov; do
	wget -c "$url/$i"
	chmod 644 $(pwd)/$i
done

url="https://sylvan.apple.com/Aerials/2x/Videos"
#for i in DB_D001_C005_2K_HDR_HEVC.mov LA_A005_C009_2K_HDR_HEVC.mov DB_D001_C001_2K_HDR_HEVC.mov\
#	HK_B005_C011_2K_HDR_HEVC.mov LA_A009_C009_2K_HDR_HEVC.mov DB_D008_C010_2K_HDR_HEVC.mov \
#	LW_L001_C006_2K_HDR_HEVC.mov LA_A006_C008_2K_HDR_HEVC.mov DB_D011_C009_2K_HDR_HEVC.mov; do
for i in DB_D011_C009_2K_SDR_HEVC.mov LA_A011_C003_2K_SDR_HEVC.mov \
	comp_A001_C004_1207W5_v23_SDR_FINAL_20180706_SDR_2K_HEVC.mov \
	comp_A009_C001_010181A_v09_SDR_PS_FINAL_20180725_SDR_2K_HEVC.mov \
	comp_A083_C002_1130KZ_v04_SDR_PS_FINAL_20180725_SDR_2K_HEVC.mov \
	comp_A103_C002_0205DG_v12_SDR_FINAL_20180706_SDR_2K_HEVC.mov \
	comp_A105_C003_0212CT_FLARE_v10_SDR_PS_FINAL_20180711_SDR_2K_HEVC.mov \
	comp_A108_C001_v09_SDR_FINAL_22062018_SDR_2K_HEVC.mov \
	comp_A114_C001_0305OT_v10_SDR_FINAL_22062018_SDR_2K_HEVC.mov \
	comp_GMT026_363A_103NC_E1027_KOREA_JAPAN_NIGHT_v17_SDR_FINAL_25062018_SDR_2K_HEVC.mov \
	comp_GMT306_139NC_139J_3066_CALI_TO_VEGAS_v07_SDR_FINAL_22062018_SDR_4K_HEVC.mov \
	comp_GMT308_139K_142NC_CARIBBEAN_DAY_v09_SDR_FINAL_22062018_SDR_2K_HEVC.mov \
	comp_GMT312_162NC_139M_1041_AFRICA_NIGHT_v14_SDR_FINAL_20180706_SDR_2K_HEVC.mov \
	comp_GMT329_113NC_396B_1105_CHINA_v04_SDR_FINAL_20180706_F900F2700_SDR_2K_HEVC.mov \
	comp_GMT329_117NC_401C_1037_IRELAND_TO_ASIA_v48_SDR_PS_FINAL_20180725_F0F6300_SDR_2K_HEVC.mov; do
	wget -c --no-check-certificate "$url/$i"
	chmod 644 $(pwd)/$i
done

exit 0
