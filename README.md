# 把csgo.sh放到/root/csgoserver中
# 每次想运行服务器的时候直接到/root/csgoserver中screen ./csgo.sh 1就可以.1是参数，代表跑图模式，2代表躲猫猫模式，如果你没有安装躲猫猫插件，切勿使用。
# 比较熟练的服务器维护者，可以vim编辑这个文本把相应的路径改成自己的路径即可
# 其他的5个文件夹包括了手套、刀、探员插件以及躲猫猫、跳舞、跑图插件。这些插件的依赖我都已配置好。直接把这5个文件夹覆盖到/root/csgoserver/csgo下即可
# 特别注意皮肤插件需要编辑 csgo/addons/sourcemod/configs/core.cfg => 改变 “FollowCSGOServerGuidelines” 的值 “yes” 为 “no”.
