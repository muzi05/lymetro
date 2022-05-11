/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : lymetro

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2022-05-10 15:44:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'upload/1650534921479.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'upload/1650534933136.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'upload/1650534943321.jpg');

-- ----------------------------
-- Table structure for discussshiwuxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussshiwuxinxi`;
CREATE TABLE `discussshiwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650276195083 DEFAULT CHARSET=utf8 COMMENT='失物信息评论表';

-- ----------------------------
-- Records of discussshiwuxinxi
-- ----------------------------
INSERT INTO `discussshiwuxinxi` VALUES ('81', '2022-03-24 18:12:53', '1', '1', '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discussshiwuxinxi` VALUES ('82', '2022-03-24 18:12:53', '2', '2', '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discussshiwuxinxi` VALUES ('83', '2022-03-24 18:12:53', '3', '3', '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discussshiwuxinxi` VALUES ('84', '2022-03-24 18:12:53', '4', '4', '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discussshiwuxinxi` VALUES ('85', '2022-03-24 18:12:53', '5', '5', '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discussshiwuxinxi` VALUES ('86', '2022-03-24 18:12:53', '6', '6', '用户名6', '评论内容6', '回复内容6');
INSERT INTO `discussshiwuxinxi` VALUES ('1650273093983', '2022-04-18 17:11:33', '1650270140042', '1649495706413', 'abc', '12', null);
INSERT INTO `discussshiwuxinxi` VALUES ('1650276195082', '2022-04-18 18:03:14', '1650270140042', '1649495706413', 'abc', '12', null);

-- ----------------------------
-- Table structure for ditiexianlu
-- ----------------------------
DROP TABLE IF EXISTS `ditiexianlu`;
CREATE TABLE `ditiexianlu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianlumingcheng` varchar(200) NOT NULL COMMENT '线路名称',
  `xianlutupian` varchar(200) DEFAULT NULL COMMENT '线路图片',
  `qidian` varchar(200) DEFAULT NULL COMMENT '起点',
  `zhongdian` varchar(200) DEFAULT NULL COMMENT '终点',
  `licheng` varchar(200) DEFAULT NULL COMMENT '里程',
  `piaojia` varchar(200) DEFAULT NULL COMMENT '票价',
  `tujingluxian` longtext COMMENT '途径路线',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649575954003 DEFAULT CHARSET=utf8 COMMENT='地铁线路';

-- ----------------------------
-- Records of ditiexianlu
-- ----------------------------
INSERT INTO `ditiexianlu` VALUES ('1649575236777', '2022-04-10 15:20:36', '1号线', 'upload/1650534873562.jpg', '红山站', '杨湾站', '24.92公里', '4元', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(37, 37, 37);\">红山站、谷水站、秦岭路站、武汉路站、长安路站、上海市场站、牡丹广场站、七里河站、王城公园站、解放路站、周王城广场站、应天门站、丽景门站、青年宫站、夹马营站、启明南路站、塔湾站、史家湾站、杨湾站</span></p>', '2021-03-29');
INSERT INTO `ditiexianlu` VALUES ('1649575954002', '2022-04-10 15:32:33', '2号线', 'upload/1650534883864.jpg', '八里堂站', '二乔路站', '17.57公里', '4元', '<p>八里堂站、龙门高铁站、兴洛湖站、开元湖站、市民之家站、体育中心站、隋唐园站、文博园站、牡丹桥站、解放路站、纱厂路站、洛阳火车站、国花路站、邙岭站、二乔路站</p>', '2021-12-24');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649757988348 DEFAULT CHARSET=utf8 COMMENT='新闻中心';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1649756652737', '2022-04-12 17:44:12', '喜讯！洛阳轨道交通控制中心机电及装修项目荣获“中国建筑工程装饰奖”', '', 'upload/1650534957416.jpg', '<p><span style=\"color: rgb(0, 0, 0);\">近日，中国建筑装饰协会发布了2021-2022年度中国建筑工程装饰奖入选名单，洛阳轨道交通控制中心机电及装修项目名列其中。</span></p><p><span style=\"color: rgb(0, 0, 0);\">洛阳市轨道交通控制中心位于洛阳市洛龙区龙门高铁站北广场东侧，是地铁运行的指挥大脑。本工程集办公楼、设备楼、地铁控制楼、车库及配套服务楼等功能为一体，依据相关建筑功能、党政机关直属企业装饰标准，以简约大气、朴素、经济、实用、节约资源为设计理念，体现了简约、现代、环保与节能并举。施工中结合加工、运输、安装方案和施工工艺要求，对工程重点、难点部位和复杂节点等进行深化设计，工程施工中克服了工期紧、交叉多等重重困难，保质保量交付使用，综合空间要素、光影要求、装饰要素等，完美融合了唐风古韵的洛阳文化，助力打造洛阳都市圈城市建设新名片。</span></p><p>中国建筑工程装饰奖是建设部设立的中国建筑装饰行业质量最高奖，也是装饰行业唯一经国务院批准的国家级奖项。该奖项是集团公司获得的首个建筑类国家级奖项，此次获奖，既是集团公司发展理念在工程项目上的渗透和体现，也是行业及社会对本工程在设计创意及施工工艺上的高度肯定。集团公司将以此次获奖为契机，继续开拓进取、砥砺前行，为打造轨道交通上的都市圈，奋力谱写新时代中原更加出彩的洛阳新篇章贡献力量！</p>');
INSERT INTO `news` VALUES ('1649756792833', '2022-04-12 17:46:32', '元宵节洛阳地铁客流再创佳绩', '', 'upload/1650534970374.jpg', '<p><span style=\"color: rgb(0, 0, 0);\">2月15日元宵节，洛阳地铁总客运量达19.73万人次，较春节小长假期间2月1日（正月初一）的18.48万人次客运量再创佳绩。</span></p><p><span style=\"color: rgb(0, 0, 0);\">今年元宵节，洛阳多个景区举行了丰富多彩的文旅活动，吸引众多市民前来夜游。“青春瀍河·创新瀍河”灯光秀表演活动现场，千架无人机为市民送上了一场视觉盛宴；隋唐城遗址植物园内打铁花表演浓烈绚烂，舞火龙表演火爆喜庆；龙门石窟景区的沉浸式灯光秀，让游客沉浸在流光溢彩的场景中；王城公园、隋唐遗址主题灯展，让游客流连忘返……</span></p><p><span style=\"color: rgb(0, 0, 0);\"><img src=\"https://www.lysubway.com.cn/res/image/202202/18/18171451_3143.jpg\" alt=\"526067253224709780.jpg\"></span></p><p><span style=\"color: rgb(0, 0, 0);\">受元宵节文化活动影响，热门景区周边地铁站客流从下午起一路攀升，景区周边及交通接驳的多个重点车站都出现短时大客流的情况。针对这一情况，运营分公司党委、团委提前部署，组织党员、团员奔赴车站一线进行志愿服务活动，缓解一线工作压力。志愿者们秉承“以礼相待，乘人之美”的服务理念，分散在应天门站、王城公园站、青年宫站、隋唐园站等客流量较大的站点，在出入口、售票机、进出站闸机、站台处引导乘客有序购票、排队进站乘车，确保了元宵节地铁车站大客流的有效疏导。</span></p><p><span style=\"color: rgb(0, 0, 0);\"><img src=\"https://www.lysubway.com.cn/res/image/202202/18/18171444_7400.jpg\" alt=\"101946858123952535.jpg\"></span></p><p><span style=\"color: rgb(0, 0, 0);\">当日，高强度客流持续到深夜，志愿者们主动放弃休息，与车站工作人员共同努力，有效疏导热门车站的大客流，车站现场忙而不乱、有条不紊，使乘客感受到了温馨的乘车服务。</span></p><p><span style=\"color: rgb(0, 0, 0);\">接下来，面对节后复学返校高峰，洛阳地铁将继续努力、再接再厉，全心全意为广大市民提供安全、便捷、优质的运营服务，为建设青年友好型城市作出积极贡献！</span></p>');
INSERT INTO `news` VALUES ('1649757121670', '2022-04-12 17:52:00', '地铁开通一周年，城市因你更精彩', '', 'upload/1650534981139.jpg', '<p>2021年3月28日上午10时，随着洛阳地铁1号线首列车迎着朝阳缓缓驶出红山车辆段，从此，千年古都、牡丹花城洛阳正式迈入“地铁时代”。作为我国中西部地区非省会城市中，第一个获批建设地铁、第一个完成单条地铁建设的城市，地铁的开通，对洛阳乃至整个中原城市群建设都意义深远。</p><p>今天，是洛阳地铁1号线开通运营一周年的日子，365个日夜里，洛阳地铁人无数次实战演练、无数次彻夜不眠、无数次暖心服务，只为保障地铁车辆每日安全运营，乘客每日能够便捷出行。</p><p><img src=\"https://www.lysubway.com.cn/res/image/202203/29/29101550_2984.jpg\" alt=\"403921620036018282.jpg\"></p><p><strong>一年来，运营各项指标均优于国标要求。</strong></p><p>洛阳地铁1号线客运总量达1885.65万人次，日均客运量5.18万人次，运营开行载客88074列次，运营里程222.63万列公里，运行图兑现率99.99%，列车正点率99.98%，运营各项指标均优于国标要求。</p><p><br></p><p><strong>一年来，我们不断优化提升服务质量。</strong></p><p>洛阳地铁坚持“以礼相待、乘人之美”的服务理念，乘客回复满意率达100%，有效乘客投诉率优于国家标准。</p><p>密切关注老年人和学生群体的出行需求，全年共制作敬老卡90699张，学生卡3945张，满足乘客出行的个性化需求。</p><p>“洛易行”APP推广、上线及顺利运营，为乘客带来扫码乘车、人脸过闸等便捷服务。多渠道开展便民优惠活动，APP注册量达66.16万人次。增加银联卡及老人人脸过闸、城轨协APP互联互通功能，实现洛阳地铁过闸多样化，提高乘客通行速度，服务水平稳步提升。</p><p><br></p><p><strong>一年来，公共交通分担率明显提升。</strong></p><p>编制2021年牡丹文化节重大活动保障方案及清明节、五一节、中秋节、国庆节、春节等节假日保障方案，全年共完成重大节假日和重大活动运营保障11次，累计客流369.68万人次。</p><p>其中，1号线最大单日客流为2021年4月4日24.64万人次，客流强度为0.97，当日全国排第9名；解放路换乘站日均换乘客运量2.84万人次。</p><p>&nbsp;</p><p><img src=\"https://www.lysubway.com.cn/res/image/202203/29/29101642_4479.jpg\" alt=\"490525880848915052.jpg\"></p><p><br></p><p>地铁1号线的开通运营，对于提升市民的出行效能，加快沿线商圈发展，解决城市拥堵，拓宽城市空间，加快城镇化进程，提升城市管理品质，完善洛阳城市功能等多方面，都产生着巨大的影响。随着洛阳地铁开通运营，为城市的交通动脉注入了新鲜血液，也悄悄地改变了洛阳市民的出行方式。</p><p>穿一线锦绣，连一城繁华。365天，地铁人用心服务，用爱运营。洛阳地铁从春天里呼啸而来，未来，洛阳发展的脚步将迈得更快、更远。</p>');
INSERT INTO `news` VALUES ('1649757571363', '2022-04-12 17:59:31', '请留意！乘坐洛阳地铁扫描车站场所码即可进站乘车', '', 'upload/1650534995224.jpg', '<p>尊敬的市民、乘客朋友们:</p><p>根据市疫情防控最新通知要求，为切实阻断疫情传播渠道，科学精准有效防控新冠疫情。即日起，在佩戴好口罩、测量体温前提下乘坐洛阳地铁扫描车站场所码（河南健康码·到访登记），手持绿色场所码（河南健康码·到访登记）即可进站乘车。场所码（河南健康码·到访登记）张贴在车站出入口右侧墙体上或者立柱上、进站通道两侧以及安检口，乘客进站乘车请提前扫码。支付宝、微信扫一扫均可以扫描场所码，支付宝首次扫码不用输入个人信息，直接跳转“绿色”页面，微信首次扫码需要输入个人信息，之后不再需要。洛阳地铁将持续开展重点区域消杀，提供优质客运服务，做好客流引导工作，全力营造健康、安全、快捷、和谐、有序的绿色出行环境。</p><p><strong>温馨提示:</strong>乘坐地铁时请全程佩戴口罩，做好个人防护，并配合安检及测温工作。如需帮助，请及时联系车站工作人员，我们将竭诚为您服务，感谢您的支持与配合。</p>');
INSERT INTO `news` VALUES ('1649757988347', '2022-04-12 18:06:28', '国家卫健委：已从全国16个省份调派医务人员4万余名支援上海', '今天（4月12日）下午，国务院联防联控机制举行新闻发布会。会上，国家卫健委新闻发言人米锋表示，按照党中央、国务院部署，截至目前，国家卫生健康委已从全国16个省份调派医务人员4万余名和每日238万管核酸检测的能力支援上海，和上海的医务人员一起开展新冠肺炎医疗救治和核酸检测等工作。', 'upload/1650535006413.jpg', '<p><strong>国家卫健委：预计未来几日上海新增感染者人数仍将处于高位</strong></p><p>4月12日，国务院联防联控机制召开新闻发布会，介绍从严从实抓好疫情防控工作有关情况。会上，国家卫生健康委疾控局副局长、一级巡视员雷正龙介绍，3月1日至4月11日，31个省（自治区、直辖市）和新疆生产建设兵团累计报告本土感染者325303例，波及30个省（区、市）。随着各地疫情防控措施的落实落地，新发生疫情的地区能够快速有效处置，没有形成新的规模性疫情。河北、江苏、安徽、广东、福建、浙江、山东等省疫情总体可控。吉林省疫情总体呈下降趋势，已连续三天新增感染者降至千例以下，但仍在高位；长春市每天新增感染者人数下降，但管控区内社区传播没有完全阻断，仍需要继续加强管控区内各项防控工作。上海市连续8天报告新增感染者数超过1万例，疫情处于快速上升期，社区传播尚没有得到有效遏制，且外溢多省多市，预计未来几日新增感染者人数仍将处于高位。</p><p>近期国内疫情防控形势依然严峻复杂，疫情防控工作不能有丝毫放松。国务院联防联控机制要求各地坚持“外防输入、内防反弹”的总策略和“动态清零”的总方针不动摇，要做好各项既定政策和措施的执行，压实“四方”责任，从严从紧、果断快速、落实“四早”，强化社会面重点场所的管理，确保各项工作更有实效。</p><p><strong>国家发改委：目前已有多批蔬菜大米等物资通过铁路支援上海</strong></p><p>4月12日，国务院联防联控机制召开新闻发布会，介绍从严从实抓好疫情防控工作有关情况。会上，国家发展改革委经济运行调节局副局长许正斌介绍，针对吉林、上海等疫情重点地区，国家发改委组建了工作专班，坚持与吉林、上海等有关部门每日衔接，积极协调推动相关保障工作。先后启动了对口吉林、上海的省级间联保联供机制，组织迅速筹集当地蔬菜等货源，并对前往吉林、上海运输生活物资的车辆提供通行便利。同时，针对公路运输受阻的情况主动协调国铁集团，加强对上海蔬菜等重要生活物资的运力保障，目前已有多批蔬菜、大米等物资通过铁路支援上海。</p><p><strong>11省份联保联供向上海供应蔬菜1.8万吨</strong></p><p>商务部消费促进司副司长李党会12日在国务院联防联控机制新闻发布会上表示，针对上海市生活物资保供，已组织11省份开展联保联供，截至4月11日，已累计向上海供应蔬菜1.8万吨，米面850吨，肉蛋500吨，还无偿支援了蔬菜等食品5400多吨。</p><p><strong>国家卫健委：继续坚持“动态清零”总方针不犹豫 不动摇</strong></p><p><span style=\"background-color: rgb(0, 0, 0); color: rgb(51, 51, 51);\"><img src=\"https://p.ivideo.sina.com.cn/video/461/198/401/461198401.jpg\"></span></p><p class=\"ql-align-center\"><a href=\"https://video.sina.com.cn/p/finance/2022-04-12/detail-imcwiwst1397098.d.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">国家卫健委：疫情仍在高位运行 要继续坚持动态清零总方针不犹豫不动摇</a></p><p>今天（4月12日）下午，国务院联防联控机制举行新闻发布会。会上，国家卫健委新闻发言人米锋表示，当前，疫情仍在高位运行，波及范围进一步扩大，防控正处于关键紧要时期。要继续坚持“动态清零”总方针不犹豫、不动摇，坚定信心，更加坚决果断，把各项防控措施落实到每一个环节。</p><p>要以快制快，加快核酸检测、方舱医院建设、感染者收治，尽快阻断社会面传播。要强化风险管控，快速筛查，找出潜在传染源，及时转运隔离。要切实保障好群众基本生活和就医购药需求，积极帮助排忧解难。</p><p>要始终做好个人防护，积极接种新冠病毒疫苗，特别是加快推进老年人接种。（央视新闻）</p><p><strong>中国疾控中心：“动态清零”符合我国实际 是当前抗击疫情最佳选择</strong></p><p><span style=\"background-color: rgb(0, 0, 0); color: rgb(51, 51, 51);\"><img src=\"https://p.ivideo.sina.com.cn/video/461/202/821/461202821.jpg\"></span></p><p class=\"ql-align-center\"><a href=\"https://video.sina.com.cn/p/finance/2022-04-12/detail-imcwiwst1403188.d.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(51, 51, 51);\">吴尊友谈为何抗疫不能躺平</a></p><p>今天（4月12日）下午，国务院联防联控机制举行新闻发布会。会上，中国疾控中心流行病学首席专家吴尊友介绍，我国的防控总方针概括起来，就是“动态清零”，为的是尽一切可能保护人民群众的身体健康和生命安全，尤其是保护老年人和婴幼儿等易受病毒危害的群体。</p><p>实际上，每个国家都希望能够尽早、尽快地控制本国的新冠疫情。在没有疫苗以前，物理阻隔是最主要防控措施，包括疫情特殊时点限制人员流动，鼓励大家戴口罩、保持手卫生、保持社交距离等。但这些措施落实，需要强有力的协调，以及老百姓的配合和支持。在其他国家或地区，很难通过这些措施的综合协调应用，在全国范围内实现“清零”，或保持“动态清零”。随着疫苗研制成功，并在人群中大规模接种后，疫苗在预防感染、预防重症和预防死亡方面发挥了重要作用。</p><p>“躺平”实际上是其他国家一种无奈的选择。在经过多种尝试努力后，仍然找不到一种理想的控制新冠的策略，疫情依然严重流行，很多国家干脆就选择“躺平”，即除强调疫苗接种外，不再强调其他防控措施。我们国家的抗疫实践已经证明，“动态清零”是符合我国实际的，也是我国当前抗击新冠肺炎疫情的最佳选择。</p><p><strong>无症状能否居家隔离？吴尊友：存风险，或致疫情继续传播扩散</strong></p><p>无症状能否居家隔离？4月12日，在国务院联防联控机制新闻发布会上，吴尊友表示：</p><p>①有一部分无症状感染者是确诊病例的潜伏期，如果不能及时发现及时治疗，是存在风险的，可能造成疫情继续传播扩散，或个人可能错过最佳治疗期；</p><p>②集中隔离观察的感染者不会出现交叉传播造成扩散，无症状和轻症隔离期间可以接受治疗。因此要尽可能将轻症和无症状感染者转到集中隔离点。</p><p><strong>吉林省疫情总体呈下降态势 河北等多省疫情总体可控</strong></p><p>今天（4月12日）下午，国务院联防联控机制举行新闻发布会。会上，国家卫生健康委疾控局副局长、一级巡视员雷正龙介绍，3月1日—4月11日，31个省（自治区、直辖市）和新疆生产建设兵团累计报告本土感染者325303例，波及30个省（区、市），随着各地疫情防控措施的落实落地，新发生疫情的地区能够快速有效处置，未形成新的规模性疫情。</p><p>河北、江苏、安徽、广东、福建、浙江、山东等省疫情总体可控。吉林省疫情总体呈下降态势，已连续3天新增感染者降至千例以下，但仍在高位；长春市每日新增感染者人数下降，但管控区内社区传播未完全阻断，仍需继续加强管控区内各项防控工作。（央视新闻）</p><p><strong>中疾控：老年人不和外界接触不意味着没有感染病毒的可能</strong></p><p>4月12日下午，国务院联防联控机制召开新闻发布会，介绍稳妥做好疫情期间生活物资保障供应有关情况并回答记者提问。</p><p>中国疾控中心免疫规划首席专家王华庆表示，老年人不和外界接触不意味着没有感染病毒的可能。老年人是一个非常脆弱的人群：第一，高龄。第二，大多数有慢性基础性疾病。假如老年人在养老院集中居住生活的话，一旦出现感染和病例，其实带来的影响还是非常大的。</p><p>王华庆表示，这次奥密克戎流行期间，根据香港卫生署提供的数据可以看到在死亡的8200多例病人当中，老年人占了绝大多数，他们的中位数是86岁。另外90%左右的人群有慢性基础性疾病，而且在养老机构这样的福利机构，居住的人群占了55%。所以我们看到这个疾病对老年人的危害还是比较大的。</p><p>王华庆表示，导致新冠重症和死亡的三个危险因素当中，我们都知道是高龄还有慢性基础性疾病，这两个因素我们没有办法改变，但是有一个因素，我们可以通过接种疫苗，提高接种率把老年人这种重症的风险和死亡的风险进一步降低。</p><p>王华庆建议符合条件的老年人尽快去接种疫苗，尽快全程接种疫苗，符合条件需要加强的时候，尽快加强。</p><p><strong>中疾控：新冠疫苗对预防奥密克戎导致的重症、死亡非常有效</strong></p><p>4月12日下午，国务院联防联控机制召开新闻发布会，介绍稳妥做好疫情期间生活物资保障供应有关情况并回答记者提问。</p><p>发布会上，有记者提问称，想问一下现在接种的新冠病毒疫苗对于老年人感染奥密克戎有效吗？不打疫苗和打两针、三针疫苗的保护作用有何区别？</p><p>对此，中国疾控中心免疫规划首席专家王华庆回答称，我们都知道现在奥密克戎在流行，疫苗其实随着时间的推移，它对感染的保护作用还有对有症状的预防作用在减弱，也看到了奥密克戎免疫逃逸的现象。但是，我们也看到疫苗对预防奥密克戎变异株导致的重症也好、死亡也好，效果还是非常有效的。</p><p>他提到，香港有一个最新研究，接种三剂次新冠病毒疫苗可以减少重症和死亡的风险在90%以上。4月8日，香港又有一个新的研究公布，60岁以上的人当中，没有接种疫苗所导致的相对死亡风险是接种两次和两剂次以上人群死亡风险的21倍。</p><p>王华庆援引香港卫生署提供的信息称，在没有接种疫苗的全人群当中，病死率是2.87%，接种过两剂次的全人群当中，病死率是0.14%。假如他接种了三剂次，病死率是0.03%，和未接种疫苗相比，接种两剂次也好，接种三剂次也好，相差分别是20倍和95倍，从中我们看到新冠病毒疫苗对于预防新冠，对于预防奥密克戎变异株导致的新冠，从重症和死亡上有非常好的效果。</p><p><strong>中疾控专家：新冠病毒在物体表面存活时间长短取决于两个因素</strong></p><p>4月12日下午，国务院联防联控机制召开新闻发布会，介绍稳妥做好疫情期间生活物资保障供应有关情况并回答记者提问。</p><p>发布会上，有记者提问称，近期多地在溯源里面发现确诊病例和阳性物品有过接触，请问专家，奥密克戎物传人的概率有多大？为什么之前的变异株没有频繁发生这种情况，尤其是非冷链物品传染的情况。奥密克戎体外存活的能力是不是增强了？我们知道入境的货物比入境者的范围更多、更广，请问如何防控物传人？</p><p>对此，中国疾控中心流行病学首席专家吴尊友回答称，一般来说呼吸道传染病主要通过近距离飞沫造成传播，也可以通过手接触被污染的物体表面，在手没有进行消毒处理或者清洗的情况下，又接触到了口、鼻、眼等黏膜部位，这个时候就容易造成感染。因此，我们把手卫生作为新冠防控的一个主要措施，主要是由于奥密克戎既表现为下呼吸道的感染，又表现为上呼吸道的感染，而上呼吸道感染有一个典型的特征，就是潜伏期短、传播快，而且对周围环境物体表面污染比较大。</p><p>他指出，新冠病毒在物体表面存活时间的长短取决于：第一，污染量的大小。第二，环境当中的温度、湿度、光照和紫外线灯情况，一般来说，物体表面污染造成人感染的风险是比较小的，但是如果我们反复多次的接触，又不注意手卫生，又不注意个人防护，他的风险就会明显的加大。所以我们对从事室外冷链以及室外货运人员进行定期的检测，以便及时发现感染者。</p><p><strong>部分阳性感染者来不及转运如何防疫？中疾控：减少家庭内传播</strong></p><p>4月12日下午，国务院联防联控机制召开新闻发布会，介绍稳妥做好疫情期间生活物资保障供应有关情况并回答记者提问。</p><p>发布会上，有记者提问称，部分阳性感染者目前来不及或者暂未转运隔离点治疗，他们居家应如何做好防疫工作？他们同一栋楼的邻居该如何做好防范？他们小区应该如何做好防范？</p><p>对此，中国疾控中心流行病学首席专家吴尊友回答称，对于部分刚刚诊断为阳性的感染者来不及转到隔离点，在这一段期间，还是要注意做好个人的防护，减少传染给家人和传染给邻居及小区的风险。</p><p>他指出，第一，我们先看看如何减少家庭内的传播。要做到减少家庭内的传播，诊断的感染者最好是单独居住的一个卧室，不和其他人在一起居住。第二，最好有独立的卫生间，不和家人共同进餐，不和家人交流谈心，这些都可以减少家庭内的传播。</p><p>吴尊友提到，减少传染给邻居和小区的居民，对于感染者家庭要进行及时的消毒，他的居住环境和卫生间要进行及时的消毒，感染者及家庭成员不能抱着侥幸的心理去串门、聊天，坚决杜绝串门的现象，坚决杜绝在小区内的活动和与人交流。</p><p>而对于生活在同一个楼宇或者小区的居民来说，吴尊友表示，在病人没有转移出去或者转移后一段时间，整个楼宇和小区都属于封控管理，在此期间有严格的要求，各家各户都是居家隔离，不许外出，每个人都要遵守封控管理阶段以及健康监测阶段足不出户的规定。</p><p><strong>飞絮会传播新冠病毒吗？中疾控：没有关于飞絮造成感染的报道</strong></p><p>4月12日下午，国务院联防联控机制召开新闻发布会，介绍稳妥做好疫情期间生活物资保障供应有关情况并回答记者提问。</p><p>澎湃新闻在发布会上提问，很多城市即将迎来飞絮期，请问飞絮会造成新冠病毒传播风险吗？</p><p>“在过去两年多的研究当中，没有发现飞絮吸附了病毒。到目前为止，也没有关于飞絮造成感染的报道。”中国疾控中心流行病学首席专家吴尊友表示，新冠病毒一般不会以游离病毒的方式，直接从一个感染者传染给健康人，新冠病毒通常以飞沫作为载体，吸附在微小的飞沫颗粒表面，患者通过咳嗽、打喷嚏飞沫排出，病毒吸附在颗粒上面，随着飞沫排出。飞沫一般比较小，在1微米-5微米，传播距离应该在1-2米。当健康人吸入了被病毒吸附的飞沫颗粒的时候，就被感染了。</p><p><strong>中疾控专家：感染过德尔塔或奥密克戎后仍然存在再次感染风险</strong></p><p>4月12日下午，国务院联防联控机制召开新闻发布会，介绍稳妥做好疫情期间生活物资保障供应有关情况并回答记者提问。</p><p>发布会上，有记者提问称，如果感染过德尔塔或奥密克戎，会不会有再次感染的可能？另外目前新病毒的变异重组仍在发生，请问对个人防护有什么建议？</p><p>对此，中国疾控中心流行病学首席专家吴尊友回答称，如果一个人自然感染了新冠病毒以后，他能够产生一定的免疫力，但是这种免疫力不足以预防他再感染，而且这个免疫力的持续时间也不是很长。如果一个人感染德尔塔毒株也好或者奥密克戎毒株也好，在不采取任何防护措施的情况下，遇到一个感染者，还是有可能再次被感染。</p><p>他指出，研究发现，一个人感染德尔塔毒株以后，再次感染（德尔塔）的风险比（感染）奥密克戎要低，（如果被）奥密克戎感染以后再感染（奥密克戎）的风险比感染了德尔塔毒株以后再感染德尔塔毒株的风险要高。我们知道新冠病毒的变异一直在持续发生，无论是病毒变成新的毒株还是两种病毒在身体里面重组成新病毒的变异，无论怎么变，我们都可以以不变应万变来应对反复无常的病毒变异现象，减少个人感染的风险。</p><p>吴尊友所说的“不变”包括哪些？他介绍称，对于个人来说，主要是落实好防护措施，这些防护措施包括戴口罩、手卫生，保持社交距离等，以及要积极接种疫苗。</p><p><strong>坚持手卫生能够减少感染新冠的风险</strong></p><p>4月12日，国务院联防联控机制召开新闻发布会，介绍从严从实抓好疫情防控工作有关情况。会上，中国疾控中心流行病学首席专家吴尊友介绍，一般来说，呼吸道传染病主要是通过近距离飞沫造成传播，也可以通过手接触被污染的物体表面，在手没有进行消毒处理或者清洗的情况下又接触到了口、鼻、眼等黏膜部位，就容易造成感染。#疫情仍在高位运行波及范围进一步扩大#</p><p>新冠病毒在物体表面存活的时间长短取决于污染量的大小，以及环境中温度、湿度、光照和紫外线的情况，一般来说物体表面污染造成人感染的风险是比较小的，但是如果反复多次接触，又不注意手卫生和个人防护，感染风险就会明显加大。所以要对从事涉外的冷链以及涉外货运人员进行定期的检测，以便及时发现感染者。对于普通老百姓来说，日常生活当中应对快件包裹进行消毒处理以后再打开，要注意手的卫生、手的清洁，坚持手卫生就能够减少污染的物体表面而感染新冠的风险。</p><p><strong>商务部：全力以赴做好生活必需品市场保供工作</strong></p><p>今天（4月12日）下午，国务院联防联控机制举行新闻发布会。会上，商务部消费促进司副司长李党会介绍，商务部坚持疫情防控总策略、总方针不动摇、不放松，全力以赴做好生活必需品市场保供工作。</p><p>一是指导各地强化疫情防控。商贸领域自身疫情防控是做好市场保供工作的前提和基础。针对奥密克戎变异株传播速度快、隐匿性强的特点，商务部指导各地商务主管部门，督促商场超市、农批市场、宾馆酒店等商贸流通企业，紧扣人员、场所、环节等疫情防控三个重点，严格落实好疫情防控措施，加强重点人员健康监测和闭环管理，把好进门入场关，做好室内通风消毒，为群众营造安心放心的消费环境。</p><p>二是做好市场运行监测预警。紧跟疫情形势，及时分区分级启动生活必需品市场监测和日报制度，动态跟踪各地粮、油、肉、蛋、奶、果、蔬等生活必需品的供应、库存和保障情况。特别是针对疫情防控重点地区，安排专人对接大型农产品批发市场、重点仓储物流基地，及时掌握生活必需品可供应量、可调出量，密切跟踪市场供需变化，加强运行趋势研判，及时发布保供预警信息。</p><p>三是因时因势开展保供指导。年初以来，全国商务系统应急保供机制，一直处于激活状态，商务部保供工作专班也在持续运转。商务部密切跟踪疫情形势发展，结合各地联保联供经验，编发《生活必需品市场供应保障工作手册》，指导、督促、联动各地切实做好应急保供等工作。与天津、河南、陕西、广东、吉林、上海等疫情突发地区，建立分层对接和每日会商机制，帮助有关地区及时解决应急保供中遇到的难题。</p><p>四是紧盯重点地区供应稳定。对近期疫情较重的吉林、上海等地，商务部组织生活物资外延基地省份，建立联保联供机制，加大货源组织力度，密集调运物资支援，保障生活必需品供应总量稳定。指导上海在周边地区，建立生活物资零接触运输中转站，疏通跨区域生活必需品运输堵点，降低疫情传播风险，保障供沪货源稳定。</p><p>五是发挥骨干企业保供作用。指导重点商贸流通企业、跨区域农产品批发市场与疫情突发地区对接，组织国有大型保供企业，加大对重点地区的生活物资调运、供应和保障力度。督促各地强化本地企业保供功能，特别是指导本地大型连锁商超，在做好疫情防控的前提下，充分预估市场需求，延长营业时间，增加重点时段备货，加大对居民生活需求的保障力度。（总台央视记者 史迎春 刘婷玉）</p><p><strong>国家发改委：四大措施协调地方及时解决生活物资保障问题</strong></p><p>4月12日，国务院联防联控机制召开新闻发布会，介绍从严从实抓好疫情防控工作有关情况。会上，国家发展改革委经济运行调节局副局长许正斌介绍，近期部分地区发生疫情以来，国家发展改革委全面启动生活物资保障相关工作机制，会同商务部、农业农村部、交通运输部等有关成员单位，加强与相关地方的沟通联系，指导各地细化实化各项保供措施。</p><p class=\"ql-align-center\"><img src=\"https://n.sinaimg.cn/sinakd20220412s/565/w880h485/20220412/981d-38ad4897dc8b1c7a62fd4f616d633093.png\"></p><p>一是加强监测调度。建立疫情重点地区生活物资日报制度，跟踪政府储备和商业库存、市场供应、价格波动等情况，及时发现苗头性问题并采取针对性举措。建立全覆盖的分省包片协调机制，加强与包干省区市的衔接，及时了解生活物资保障情况和困难并帮助协调解决。</p><p>二是积极督促协调。先后向陕西、山东、广西、吉林、上海等多个地方发函，督促进一步完善工作举措，统筹做好疫情防控和生活物资保障，及时帮助地方协调解决突出问题。利用大数据分析等手段，全网跟踪监测物资供应保障相关情况，积极协调地方及时解决生活物资保障的个案问题。</p><p>三是抓好产销衔接。加强与商务、农业农村、交通运输等部门的沟通衔接与信息共享，按照职责分工做好生活物资生产供应、调运组织等工作，指导各地切实组织好鲜活农产品生产，积极对接外地货源，提醒商超及时补货补架，确保市场供应充足，及时启动了疫情重点地区与周边省份生活物资联保机制，组织加强货源保障和物流支持，建立生活物资运输快捷通道。</p><p>四是强化重点保障。针对吉林、上海等疫情重点地区，国家发展改革委在包省工作机制的基础上，专门组建了工作专班，坚持与吉林、上海等有关部门每日衔接，积极协调推进相关保障工作。先后启动对口吉林、上海的省际间联保联供机制，组织相关省区迅速筹集当地蔬菜等货源，并对前往吉林、上海运送生活物资的车辆提供通行便利。</p><p>同时，主动协调国铁集团加强对上海的蔬菜等重要生活物资的运力保障，目前已有多批蔬菜、大米等物资通过铁路驰援上海。协调江苏、浙江建立服务上海的重要物资中转接驳站，江苏昆山、浙江平湖中转接驳站已经都投入使用。浙江嘉善中转站也已经改造完成，随时可以投用。</p>');

-- ----------------------------
-- Table structure for shikebiao
-- ----------------------------
DROP TABLE IF EXISTS `shikebiao`;
CREATE TABLE `shikebiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhandian` varchar(200) DEFAULT NULL COMMENT '站点',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shoubanche` varchar(200) DEFAULT NULL COMMENT '首班车',
  `mobanche` varchar(200) DEFAULT NULL COMMENT '末班车',
  `jiangeshijian` varchar(200) DEFAULT NULL COMMENT '间隔时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649770672942 DEFAULT CHARSET=utf8 COMMENT='时刻表';

-- ----------------------------
-- Records of shikebiao
-- ----------------------------
INSERT INTO `shikebiao` VALUES ('1649752477475', '2022-04-12 16:34:37', '红山站', 'upload/1650534904572.jpg', '6:30', '22:30', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649753273658', '2022-04-12 16:47:53', '谷水站', 'upload/1650535106700.jpg', '6:33', '22:33', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649753307184', '2022-04-12 16:48:26', '秦岭路站', 'upload/1650535126955.jpg', '6:36', '22:36', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649753346953', '2022-04-12 16:49:06', '武汉路站', 'upload/1650535144479.jpg', '6:39', '22:39', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649753371747', '2022-04-12 16:49:30', '长安路站', 'upload/1650535164769.jpg', '6:41', '22:41', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649753451072', '2022-04-12 16:50:50', '上海市场站', 'upload/1650535183729.jpg', '6:43', '22:43', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649753483879', '2022-04-12 16:51:23', '牡丹广场站', 'upload/1650535216403.jpg', '6:46', '22:46', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649753518826', '2022-04-12 16:51:58', '七里河站', 'upload/1650535238401.jpg', '6:48', '22:48', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649753555547', '2022-04-12 16:52:35', '王城公园站', 'upload/1650535258270.jpg', '6:50', '22:50', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649753921867', '2022-04-12 16:58:41', '解放路站', 'upload/1650535273480.jpg', '6:30', '22:52', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649753965724', '2022-04-12 16:59:25', '周王城广场站', 'upload/1650535292109.jpg', '6:32', '22:54', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649754001510', '2022-04-12 17:00:00', '应天门站', 'upload/1650535310128.jpg', '6:34', ' 22:57', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649754032799', '2022-04-12 17:00:32', '丽景门站', 'upload/1650535462852.jpg', '6:36', '22:59', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649754065120', '2022-04-12 17:01:04', '青年宫站', 'upload/1650535505162.jpg', '6:38', '23:01', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649754098579', '2022-04-12 17:01:37', '夹马营站', 'upload/1650535519672.jpg', '6:40', '23:03', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649754130318', '2022-04-12 17:02:09', '启明南路站', 'upload/1650535408448.jpg', '6:42', '23:05', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649754163161', '2022-04-12 17:02:42', '塔湾站', 'upload/1650535375016.jpg', '6:45', '23:08', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649754194648', '2022-04-12 17:03:14', '史家湾站', 'upload/1650535358802.jpg', '6:47', '23:10', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649754229306', '2022-04-12 17:03:49', '杨湾站', 'upload/1650535343234.jpg', '6:49', '23:13', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649770197096', '2022-04-12 21:29:57', '八里堂站', 'upload/1650535324363.jpg', '06:30', '22:30', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649770237588', '2022-04-12 21:30:37', '龙门高铁站', 'upload/1650535476717.jpg', '06:32', '22:32', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649770300812', '2022-04-12 21:31:40', '兴洛湖站', 'upload/1650535491441.jpg', '06:35', '22:35', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649770335869', '2022-04-12 21:32:15', '开元湖站', 'upload/1650535546761.jpg', '06:37', '22:37', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649770370541', '2022-04-12 21:32:50', '市民之家站', 'upload/1650535582047.jpg', '06:39', '22:39', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649770400571', '2022-04-12 21:33:20', '体育中心站', 'upload/1650535669423.jpg', '06:41', '22:41', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649770432816', '2022-04-12 21:33:52', '隋唐园站', 'upload/1650535652473.jpg', '06:44', '22:44', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649770469310', '2022-04-12 21:34:29', '文博园站', 'upload/1650535638026.jpg', '06:46', '22:46', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649770503210', '2022-04-12 21:35:02', '牡丹桥站', 'upload/1650535623313.jpg', '06:49', '22:49', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649770538121', '2022-04-12 21:35:37', '纱厂路站', 'upload/1650535610557.jpg', '06:31', '22:53', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649770576036', '2022-04-12 21:36:15', '洛阳火车站', 'upload/1650535597177.jpg', '06:33', '22:55', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649770610927', '2022-04-12 21:36:50', '国花路站', 'upload/1650535449589.jpg', '06:36', '22:57', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649770638834', '2022-04-12 21:37:18', '邙岭站', 'upload/1650535436625.jpg', '06:38', '23:00', '7分钟');
INSERT INTO `shikebiao` VALUES ('1649770672941', '2022-04-12 21:37:52', '二乔路站', 'upload/1650535423199.jpg', '06:40', '23:01', '7分钟');

-- ----------------------------
-- Table structure for shiwuxinxi
-- ----------------------------
DROP TABLE IF EXISTS `shiwuxinxi`;
CREATE TABLE `shiwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `wupinmingcheng` varchar(200) NOT NULL COMMENT '物品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `wupinxiangqing` longtext COMMENT '物品详情',
  `diushididian` varchar(200) DEFAULT NULL COMMENT '丢失地点',
  `shiqushijian` datetime DEFAULT NULL COMMENT '拾取时间',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650534853306 DEFAULT CHARSET=utf8 COMMENT='失物信息';

-- ----------------------------
-- Records of shiwuxinxi
-- ----------------------------
INSERT INTO `shiwuxinxi` VALUES ('1650534853305', '2022-04-21 17:54:12', '失物1', '台灯', 'upload/1650534773507.jpg', '<p>无</p>', '八里路', '2021-12-30 09:08:10', '136......23');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649073381529 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('1648179512649', '2022-03-25 11:38:31', '1648179490024', '43', 'ditiexianlu', '线路名称3', 'upload/ditiexianlu_xianlutupian3.jpg', '1', null);
INSERT INTO `storeup` VALUES ('1649072345073', '2022-04-04 19:39:04', '1649072230516', '1649069816966', 'ditiexianlu', '1号线', 'upload/1649069705122.png', '1', null);
INSERT INTO `storeup` VALUES ('1649073381528', '2022-04-04 19:56:21', '1649069898799', '1649070153333', 'shikebiao', '红山站', 'upload/1649070900113.jpeg', '1', null);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', 'kzfdgdd2iglwvl2wfqghd5to5owaaqrh', '2022-03-25 10:03:06', '2022-04-24 17:07:10');
INSERT INTO `token` VALUES ('2', '1648179490024', '001', 'yonghu', '用户', '0iswe4wjd407gw6wxkvqocuv969qhkew', '2022-03-25 11:38:15', '2022-03-25 12:38:15');
INSERT INTO `token` VALUES ('3', '11', '用户账号1', 'yonghu', '用户', 'anqcnja8xlar928a9mzu06d89imvw3c3', '2022-03-28 16:12:30', '2022-03-28 17:48:31');
INSERT INTO `token` VALUES ('4', '1649069898799', '1', 'yonghu', '用户', 'xa5fg5ovmljkcyemp95d4wue0i2vgpsj', '2022-04-04 18:58:29', '2022-04-09 17:24:01');
INSERT INTO `token` VALUES ('5', '1649072230516', '2', 'yonghu', '用户', 'k4wnmexzbxq8rur90nwx8p1h6dbzc1qo', '2022-04-04 19:37:19', '2022-04-04 20:41:11');
INSERT INTO `token` VALUES ('6', '1649495706413', 'abc', 'yonghu', '用户', 'rifhhuupn1d9pg9dlrgumgna28fdre97', '2022-04-09 17:15:21', '2022-04-24 14:59:09');
INSERT INTO `token` VALUES ('7', '1649576318661', 'mno', 'yonghu', '用户', '38miww6no1luqjn2y8yjr3fdwhnmeif9', '2022-04-10 15:39:45', '2022-04-10 16:39:45');
INSERT INTO `token` VALUES ('8', '1649576175937', 'def', 'yonghu', '用户', 'en40pqkjfus5wxyes62fvisyapwzmzar', '2022-04-16 14:04:47', '2022-04-16 15:04:48');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '123456', '管理员', '2022-03-24 18:12:53');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1649576357937 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1649495706413', '2022-04-09 17:15:06', 'abc', '123456', '李某', '男', '18', 'upload/1650534681846.jpg', '13643956536');
INSERT INTO `yonghu` VALUES ('1649576175937', '2022-04-10 15:36:15', 'def', '123456', '刘某', '女', '19', 'upload/1650534691735.jpg', '');
INSERT INTO `yonghu` VALUES ('1649576221108', '2022-04-10 15:37:01', 'ghi', '123456', '王某', '女', '18', 'upload/1650534704878.jpg', '');
INSERT INTO `yonghu` VALUES ('1649576264879', '2022-04-10 15:37:44', 'jkl', '123456', '赵某', '女', '21', 'upload/1650534716306.jpg', '');
INSERT INTO `yonghu` VALUES ('1649576318661', '2022-04-10 15:38:38', 'mno', '123456', '孙某', '女', '22', 'upload/1650534726537.jpg', '');
INSERT INTO `yonghu` VALUES ('1649576357936', '2022-04-10 15:39:17', 'pqr', '123456', '黄某', '女', '21', 'upload/1650534737267.jpg', '');

-- ----------------------------
-- Table structure for zhandian
-- ----------------------------
DROP TABLE IF EXISTS `zhandian`;
CREATE TABLE `zhandian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhandian` varchar(200) DEFAULT NULL COMMENT '站点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649575532236 DEFAULT CHARSET=utf8 COMMENT='站点';

-- ----------------------------
-- Records of zhandian
-- ----------------------------
INSERT INTO `zhandian` VALUES ('1649069498363', '2022-04-04 18:51:37', '红山站');
INSERT INTO `zhandian` VALUES ('1649069518546', '2022-04-04 18:51:58', '谷水站');
INSERT INTO `zhandian` VALUES ('1649069537991', '2022-04-04 18:52:17', '秦岭路站');
INSERT INTO `zhandian` VALUES ('1649069546057', '2022-04-04 18:52:25', '武汉路站');
INSERT INTO `zhandian` VALUES ('1649069555034', '2022-04-04 18:52:34', '长安路站');
INSERT INTO `zhandian` VALUES ('1649069563613', '2022-04-04 18:52:43', '上海市场站');
INSERT INTO `zhandian` VALUES ('1649069575190', '2022-04-04 18:52:54', '牡丹广场站');
INSERT INTO `zhandian` VALUES ('1649069584495', '2022-04-04 18:53:04', '七里河站');
INSERT INTO `zhandian` VALUES ('1649069596121', '2022-04-04 18:53:15', '王城公园站');
INSERT INTO `zhandian` VALUES ('1649069602269', '2022-04-04 18:53:21', '解放路站');
INSERT INTO `zhandian` VALUES ('1649069613429', '2022-04-04 18:53:32', '周王城广场站');
INSERT INTO `zhandian` VALUES ('1649069621598', '2022-04-04 18:53:40', '应天门站');
INSERT INTO `zhandian` VALUES ('1649069630326', '2022-04-04 18:53:49', '丽景门站');
INSERT INTO `zhandian` VALUES ('1649069640297', '2022-04-04 18:54:00', '青年宫站');
INSERT INTO `zhandian` VALUES ('1649069649783', '2022-04-04 18:54:08', '夹马营站');
INSERT INTO `zhandian` VALUES ('1649069657853', '2022-04-04 18:54:17', '启明南路站');
INSERT INTO `zhandian` VALUES ('1649069664933', '2022-04-04 18:54:24', '塔湾站');
INSERT INTO `zhandian` VALUES ('1649069676032', '2022-04-04 18:54:35', '史家湾站');
INSERT INTO `zhandian` VALUES ('1649074012609', '2022-04-04 20:06:52', '杨湾站');
INSERT INTO `zhandian` VALUES ('1649575404075', '2022-04-10 15:23:23', '八里堂站');
INSERT INTO `zhandian` VALUES ('1649575414366', '2022-04-10 15:23:33', '龙门高铁站');
INSERT INTO `zhandian` VALUES ('1649575421629', '2022-04-10 15:23:40', '兴洛湖站');
INSERT INTO `zhandian` VALUES ('1649575428733', '2022-04-10 15:23:48', '开元湖站');
INSERT INTO `zhandian` VALUES ('1649575435771', '2022-04-10 15:23:55', '市民之家站');
INSERT INTO `zhandian` VALUES ('1649575444495', '2022-04-10 15:24:04', '体育中心站');
INSERT INTO `zhandian` VALUES ('1649575456528', '2022-04-10 15:24:16', '隋唐园站');
INSERT INTO `zhandian` VALUES ('1649575485123', '2022-04-10 15:24:44', '文博园站');
INSERT INTO `zhandian` VALUES ('1649575492386', '2022-04-10 15:24:51', '牡丹桥站');
INSERT INTO `zhandian` VALUES ('1649575500620', '2022-04-10 15:25:00', '纱厂路站');
INSERT INTO `zhandian` VALUES ('1649575509195', '2022-04-10 15:25:08', '洛阳火车站');
INSERT INTO `zhandian` VALUES ('1649575516661', '2022-04-10 15:25:15', '国花路站');
INSERT INTO `zhandian` VALUES ('1649575524518', '2022-04-10 15:25:24', '邙岭站');
INSERT INTO `zhandian` VALUES ('1649575532235', '2022-04-10 15:25:31', '二乔路站');
