var $j = jQuery.noConflict();

//地铁站数据
var subwayData = {
  "1号线": [
    "红山",
    "谷水",
    "秦岭路",
    "武汉路",
    "长安路",
    "上海市场",
    "牡丹广场",
    "七里河",
    "王城公园",
    "解放路",
    "周王城广场",
    "应天门",
    "丽景门",
    "青年宫",
    "夹马营",
    "启明南路",
    "塔湾",
    "史家湾",
    "杨湾",
  ],
  "2号线": [
    "八里堂",
    "龙门高铁站",
    "兴洛湖",
    "开元湖",
    "市民之家",
    "体育中心",
    "隋唐园",
    "文博园",
    "牡丹桥",
    "解放路",
    "纱厂路",
    "洛阳火车站",
    "国花路",
    "邙岭",
    "二乔路",
  ],
};

var edgesData = [
  ["红山", "谷水", 2.7],
  ["谷水", "秦岭路", 1.9],
  ["秦岭路", "武汉路", 1.6],
  ["武汉路", "长安路", 1.3],
  ["长安路", "上海市场", 0.8],
  ["上海市场", "牡丹广场", 1.3],
  ["牡丹广场", "七里河", 1.2],
  ["七里河", "王城公园", 1.6],
  ["王城公园", "解放路", 0.9],
  ["解放路", "周王城广场", 0.8],
  ["周王城广场", "应天门", 1.4],
  ["应天门", "丽景门", 1.0],
  ["丽景门", "青年宫", 1.3],
  ["青年宫", "夹马营", 1.1],
  ["夹马营", "启明南路", 1.1],
  ["启明南路", "塔湾", 1.2],
  ["塔湾", "史家湾", 1.4],
  ["史家湾", "杨湾", 1.9],

  ["八里堂", "龙门高铁站", 1.9],
  ["龙门高铁站", "兴洛湖", 1.5],
  ["兴洛湖", "开元湖", 0.7],
  ["开元湖", "市民之家", 1.2],
  ["市民之家", "体育中心", 1.1],
  ["体育中心", "隋唐园", 1.6],
  ["隋唐园", "文博园", 0.8],
  ["文博园", "牡丹桥", 2.3],
  ["牡丹桥", "解放路", 1.1],
  ["解放路", "纱厂路", 0.9],
  ["纱厂路", "洛阳火车站", 0.8],
  ["洛阳火车站", "国花路", 1.4],
  ["国花路", "邙岭", 1.7],
  ["邙岭", "二乔路", 0.7],
];

//Dijkstra算法
Dijkstra = (function () {
  //source起点    target终点    weight权重
  function addEdge(source, target, weight) {
    if (!(source in graph)) graph[source] = {};
    if (!(target in graph)) graph[target] = {};
    if ("number" != typeof weight) weight = 1;
    (graph[source][target] = weight), (graph[target][source] = weight);
  }
  function addEdges(edges) {
    for (var i = 0; i < edges.length; ++i) {
      var edge = edges[i];
      addEdge(edge[0], edge[1], edge[2]);
    }
  }

  //通过起点终点求最小路径
  function shortestPath(source, target) {
    if (!(source in graph) || !(target in graph)) return 1 / 0; //取1/0为无穷大，将邻接矩阵所有元素赋值正无穷
    var dist = {}, //存放最小距离
      visited = {}, //判断是否到达过该点
      numVertex = 0;

    for (var v in graph)
      (dist[v] = 1 / 0), //初始化最小距离的数组全为无穷大
        numVertex++;
    dist[source] = 0;

    //求最小路径核心
    for (var i = 0; i < numVertex; ++i) {
      var minDist = 1 / 0,
        minV = void 0;

      for (var v in dist)
        if (!(v in visited)) {
          if (minDist > dist[v]) (minDist = dist[v]), (minV = v);
        } else;
      if (void 0 === minV) break;
      if (minV === target) return minDist;
      visited[minV] = true;
      var edges = graph[minV];
      for (var v in edges)
        if (!(v in visited)) {
          var newDist = minDist + edges[v];
          if (dist[v] > newDist) dist[v] = newDist;
        } else;
    }
    return 1 / 0;
  }

  //定义联结矩阵存放距离

  var graph = {};
  return {
    addEdge: addEdge,
    addEdges: addEdges,
    shortestPath: shortestPath,
  };
})();

function genSubwayStationHtml(lineName) {
  for (
    var stations = subwayData[lineName], htmls = [], i = 0;
    i < stations.length;
    ++i
  )
    htmls.push("<li>" + stations[i] + "</li>");
  return htmls.join("");
}

function genSubwayLineHtml() {
  var htmls = [],
    i = -1,
    classname = [
      "op-subway-one",
      "op-subway-two",
      "op-subway-four",
      "op-subway-five",
      "op-subway-six",
      "op-subway-seven",
      "op-subway-eight",
      "op-subway-nine",
      "op-subway-ten",
      "op-subway-thirteen",
      "op-subway-fourteen",
      "op-subway-fifteen",
      "op-subway-batong",
      "op-subway-changpi",
      "op-subway-yizhuan",
      "op-subway-fangsan",
      "op-subway-jichang",
    ];
  for (var lineName in subwayData)
    i++,
      htmls.push(
        "<li><span class=" + classname[i] + "></span>" + lineName + "</li>"
      );
  return htmls.join("");
}

//选择按钮设置
function tryActiveCalcButton() {
  var start = $j(".op-subway-box-start .op-subway-station em").text(),
    end = $j(".op-subway-box-end .op-subway-station em").text();
  if ("选择车站" != start && "选择车站" != end)
    $j(".op-subway-calc-false")
      .addClass("op-subway-calc-fare")
      .removeClass("op-subway-calc-false");
}

//c初始化线路盒子
function initSubwayBox() {
  var lineHtml = genSubwayLineHtml();
  $j(".op-subway-line .op-subway-ul").html(lineHtml),
    $j(".op-subway-line .op-subway-ul").on("click", "li", function () {
      var lineName = $j(this).text();
      $j(this).parent().parent().parent().find(".op-subway-line em").css({
        padding: "0px 5px 0px 20px",
      }),
        $j(this).parent().parent().parent().find(".op-subway-station").css({
          background: "#fff",
        }),
        $j(this).parent().parent().parent().find(".op-subway-station em").css({
          color: "#333",
        });
      var stationHtml = genSubwayStationHtml(lineName),
        $box = $j(this).parent().parent().parent();
      $box.find(".op-subway-ulk").html(stationHtml);
      var firstStation = subwayData[lineName][0];
      $box.find(".op-subway-station em").text(firstStation),
        tryActiveCalcButton();
    }),
    $j(".op-subway-ul, .op-subway-ulk").each(function () {
      $j(this).find("li").eq(0).addClass("op-subway-textone");
    });
}

function format(distance) {
  distance += 0.001;
  var s = distance + "",
    index = s.indexOf(".");
  if (index >= 0) if (s.length > index + 2) s = s.substr(0, index + 2);
  return s;
}

function genText(distance, fare) {
  var increase = calcMonthlyFare(fare);
  if (((distance = format(distance)), 0 === increase))
    return '<p class="op-subway-span"></p>';
  else
    return (
      '<p class="op-subway-span">计算结果：距离<em class="op-subway-increase">' +
      distance +
      '</em>公里，票价<em class="op-subway-increase ">' +
      fare +
      "</em>元！"
    );
}

function initCalcFare() {
  $j(".op-subway-main").on("click", ".op-subway-calc-fare", function () {
    var start = $j(".op-subway-box-start .op-subway-station em").html(),
      end = $j(".op-subway-box-end .op-subway-station em").html();
    if ("选择车站" == start || "选择车站" == end)
      return $j(".op-subway-ts").show(), false;
    if (start == end)
      return $j(".op-subway-ts").html("你还在原地，要用地铁？").show(), false;
    else $j(".op-subway-ts").hide();
    $j(this).parent().css({
      "border-bottom": "1px solid #fff",
    }),
      $j(".op-subway-tab,.op-subway-footer,.op-subway-Share").show(),
      $j(".op-subway-tab li").eq(0).removeClass("on").siblings().addClass("on"),
      $j($j(".op-subway-tab li").eq(0).attr("data"))
        .show()
        .siblings()
        .not(".Share")
        .hide();
    var distance = Dijkstra.shortestPath(start, end),
      fare1 = calcFare1(distance),
      fare2 = calcFare2(distance);
    $j(".op-subway-content1 .op-subway-text .op-subway-fareinfo").html(
      genText(distance, fare1)
    );
    $j(".op-subway-content2 .op-subway-text .op-subway-fareinfo").html(
      genText(distance, fare2)
    );
  });
}

function genVoteText(count) {
  return "(" + count + ")";
}

//点击选项设置
function initSubwayClick() {
  $j(".op-subway-line,.op-subway-station").on("click", function (event) {
    if (
      (event.stopPropagation(),
      $j(".op-subway-ts").hide(),
      $j(".op-subway-box ul").hide(),
      $j(this).find("ul").children().length)
    )
      $j(this).find("ul").show();
    $j(document).on("click", function () {
      $j(".op-subway-box ul").hide();
    });
  }),
    $j(".op-subway-line,.op-subway-station").on("mouseover", "li", function () {
      $j(this).addClass("op-subway-ons");
    }),
    $j(".op-subway-line,.op-subway-station").on("mouseout", "li", function () {
      $j(this).removeClass("op-subway-ons");
    }),
    $j(".op-subway-ul,.op-subway-ulk").on("click", "li", function (event) {
      event.stopPropagation(),
        $j(this).parent().parent().find("em").html($j(this).html()),
        $j(this).parent().parent().find("ul").hide();
    }),
    $j(".op-subway-close").on("mouseover", function () {
      $j(this).addClass("op-subway-close-on"),
        $j(this).on("click", function () {
          $j(this).parent().hide();
        });
    }),
    $j(".op-subway-close").on("mouseout", function () {
      $j(this).removeClass("op-subway-close-on");
    }),
    $j(".op-subway-code").on("click", function (event) {
      event.stopPropagation();
    }),
    $j(".op-subway-messages").on("click", function (event) {
      event.stopPropagation();
    }),
    $j(document).on("click", function () {
      $j(".op-subway-code").hide(), $j(".op-subway-messages").hide();
    });
  var tabIndex = 0;
  $j(".op-subway-tab .op-subway-li").on("click", ".hard", function (event) {
    event.preventDefault();
    var $el = $j(this),
      tag = "option" + tabIndex,
      cookieName = "subway_" + tag;
    if (null === CookieUtil.getCookie(cookieName))
      Bbstat.addCount("subway", tag, 1, function (rsp) {
        if (rsp.count)
          $el.next().text(genVoteText(rsp.count)),
            CookieUtil.setCookie(cookieName, "voted", 86400);
      });
  });
}
function init() {
  initSubwayBox(), initSubwayClick(), initCalcFare(), initDijkstra();
}

function initDijkstra() {
  Dijkstra.addEdges(edgesData);
}

function calcFare1(distance) {
  if (distance <= 3) return 2;
  if (distance <= 6) return 3;
  if (distance <= 18) return 3 + Math.ceil((distance - 6) / 6);
  if (distance <= 42) return 5 + Math.ceil((distance - 18) / 12);
  else return 7 + Math.ceil((distance - 42) / 18);
}
function calcFare2(distance) {
  if (distance <= 6) return 2;
  if (distance <= 14) return 3;
  if (distance <= 22) return 3 + Math.ceil((distance - 14) / 10);
  else return 6 + Math.ceil((distance - 22) / 9);
}
function calcMonthlyFare(fare) {
  var addtext = 2 * (fare - 2) * 22 * 12;
  return addtext;
}

init();
