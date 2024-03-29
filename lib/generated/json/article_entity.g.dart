import 'package:flutter_study/generated/json/base/json_convert_content.dart';
import 'package:flutter_study/network/article_entity.dart';

ArticleEntity $ArticleEntityFromJson(Map<String, dynamic> json) {
  final ArticleEntity articleEntity = ArticleEntity();
  final ArticleData? data = jsonConvert.convert<ArticleData>(json['data']);
  if (data != null) {
    articleEntity.data = data;
  }
  final int? errorCode = jsonConvert.convert<int>(json['errorCode']);
  if (errorCode != null) {
    articleEntity.errorCode = errorCode;
  }
  final String? errorMsg = jsonConvert.convert<String>(json['errorMsg']);
  if (errorMsg != null) {
    articleEntity.errorMsg = errorMsg;
  }
  return articleEntity;
}

Map<String, dynamic> $ArticleEntityToJson(ArticleEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['data'] = entity.data?.toJson();
  data['errorCode'] = entity.errorCode;
  data['errorMsg'] = entity.errorMsg;
  return data;
}

ArticleData $ArticleDataFromJson(Map<String, dynamic> json) {
  final ArticleData articleData = ArticleData();
  final int? curPage = jsonConvert.convert<int>(json['curPage']);
  if (curPage != null) {
    articleData.curPage = curPage;
  }
  final List<ArticleDataDatas>? datas = (json['datas'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<ArticleDataDatas>(e) as ArticleDataDatas)
      .toList();
  if (datas != null) {
    articleData.datas = datas;
  }
  final int? offset = jsonConvert.convert<int>(json['offset']);
  if (offset != null) {
    articleData.offset = offset;
  }
  final bool? over = jsonConvert.convert<bool>(json['over']);
  if (over != null) {
    articleData.over = over;
  }
  final int? pageCount = jsonConvert.convert<int>(json['pageCount']);
  if (pageCount != null) {
    articleData.pageCount = pageCount;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    articleData.size = size;
  }
  final int? total = jsonConvert.convert<int>(json['total']);
  if (total != null) {
    articleData.total = total;
  }
  return articleData;
}

Map<String, dynamic> $ArticleDataToJson(ArticleData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['curPage'] = entity.curPage;
  data['datas'] = entity.datas?.map((v) => v.toJson()).toList();
  data['offset'] = entity.offset;
  data['over'] = entity.over;
  data['pageCount'] = entity.pageCount;
  data['size'] = entity.size;
  data['total'] = entity.total;
  return data;
}

ArticleDataDatas $ArticleDataDatasFromJson(Map<String, dynamic> json) {
  final ArticleDataDatas articleDataDatas = ArticleDataDatas();
  final bool? adminAdd = jsonConvert.convert<bool>(json['adminAdd']);
  if (adminAdd != null) {
    articleDataDatas.adminAdd = adminAdd;
  }
  final String? apkLink = jsonConvert.convert<String>(json['apkLink']);
  if (apkLink != null) {
    articleDataDatas.apkLink = apkLink;
  }
  final int? audit = jsonConvert.convert<int>(json['audit']);
  if (audit != null) {
    articleDataDatas.audit = audit;
  }
  final String? author = jsonConvert.convert<String>(json['author']);
  if (author != null) {
    articleDataDatas.author = author;
  }
  final bool? canEdit = jsonConvert.convert<bool>(json['canEdit']);
  if (canEdit != null) {
    articleDataDatas.canEdit = canEdit;
  }
  final int? chapterId = jsonConvert.convert<int>(json['chapterId']);
  if (chapterId != null) {
    articleDataDatas.chapterId = chapterId;
  }
  final String? chapterName = jsonConvert.convert<String>(json['chapterName']);
  if (chapterName != null) {
    articleDataDatas.chapterName = chapterName;
  }
  final bool? collect = jsonConvert.convert<bool>(json['collect']);
  if (collect != null) {
    articleDataDatas.collect = collect;
  }
  final int? courseId = jsonConvert.convert<int>(json['courseId']);
  if (courseId != null) {
    articleDataDatas.courseId = courseId;
  }
  final String? desc = jsonConvert.convert<String>(json['desc']);
  if (desc != null) {
    articleDataDatas.desc = desc;
  }
  final String? descMd = jsonConvert.convert<String>(json['descMd']);
  if (descMd != null) {
    articleDataDatas.descMd = descMd;
  }
  final String? envelopePic = jsonConvert.convert<String>(json['envelopePic']);
  if (envelopePic != null) {
    articleDataDatas.envelopePic = envelopePic;
  }
  final bool? fresh = jsonConvert.convert<bool>(json['fresh']);
  if (fresh != null) {
    articleDataDatas.fresh = fresh;
  }
  final String? host = jsonConvert.convert<String>(json['host']);
  if (host != null) {
    articleDataDatas.host = host;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    articleDataDatas.id = id;
  }
  final bool? isAdminAdd = jsonConvert.convert<bool>(json['isAdminAdd']);
  if (isAdminAdd != null) {
    articleDataDatas.isAdminAdd = isAdminAdd;
  }
  final String? link = jsonConvert.convert<String>(json['link']);
  if (link != null) {
    articleDataDatas.link = link;
  }
  final String? niceDate = jsonConvert.convert<String>(json['niceDate']);
  if (niceDate != null) {
    articleDataDatas.niceDate = niceDate;
  }
  final String? niceShareDate = jsonConvert.convert<String>(
      json['niceShareDate']);
  if (niceShareDate != null) {
    articleDataDatas.niceShareDate = niceShareDate;
  }
  final String? origin = jsonConvert.convert<String>(json['origin']);
  if (origin != null) {
    articleDataDatas.origin = origin;
  }
  final String? prefix = jsonConvert.convert<String>(json['prefix']);
  if (prefix != null) {
    articleDataDatas.prefix = prefix;
  }
  final String? projectLink = jsonConvert.convert<String>(json['projectLink']);
  if (projectLink != null) {
    articleDataDatas.projectLink = projectLink;
  }
  final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
  if (publishTime != null) {
    articleDataDatas.publishTime = publishTime;
  }
  final int? realSuperChapterId = jsonConvert.convert<int>(
      json['realSuperChapterId']);
  if (realSuperChapterId != null) {
    articleDataDatas.realSuperChapterId = realSuperChapterId;
  }
  final int? selfVisible = jsonConvert.convert<int>(json['selfVisible']);
  if (selfVisible != null) {
    articleDataDatas.selfVisible = selfVisible;
  }
  final int? shareDate = jsonConvert.convert<int>(json['shareDate']);
  if (shareDate != null) {
    articleDataDatas.shareDate = shareDate;
  }
  final String? shareUser = jsonConvert.convert<String>(json['shareUser']);
  if (shareUser != null) {
    articleDataDatas.shareUser = shareUser;
  }
  final int? superChapterId = jsonConvert.convert<int>(json['superChapterId']);
  if (superChapterId != null) {
    articleDataDatas.superChapterId = superChapterId;
  }
  final String? superChapterName = jsonConvert.convert<String>(
      json['superChapterName']);
  if (superChapterName != null) {
    articleDataDatas.superChapterName = superChapterName;
  }
  final List<dynamic>? tags = (json['tags'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (tags != null) {
    articleDataDatas.tags = tags;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    articleDataDatas.title = title;
  }
  final int? type = jsonConvert.convert<int>(json['type']);
  if (type != null) {
    articleDataDatas.type = type;
  }
  final int? userId = jsonConvert.convert<int>(json['userId']);
  if (userId != null) {
    articleDataDatas.userId = userId;
  }
  final int? visible = jsonConvert.convert<int>(json['visible']);
  if (visible != null) {
    articleDataDatas.visible = visible;
  }
  final int? zan = jsonConvert.convert<int>(json['zan']);
  if (zan != null) {
    articleDataDatas.zan = zan;
  }
  return articleDataDatas;
}

Map<String, dynamic> $ArticleDataDatasToJson(ArticleDataDatas entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['adminAdd'] = entity.adminAdd;
  data['apkLink'] = entity.apkLink;
  data['audit'] = entity.audit;
  data['author'] = entity.author;
  data['canEdit'] = entity.canEdit;
  data['chapterId'] = entity.chapterId;
  data['chapterName'] = entity.chapterName;
  data['collect'] = entity.collect;
  data['courseId'] = entity.courseId;
  data['desc'] = entity.desc;
  data['descMd'] = entity.descMd;
  data['envelopePic'] = entity.envelopePic;
  data['fresh'] = entity.fresh;
  data['host'] = entity.host;
  data['id'] = entity.id;
  data['isAdminAdd'] = entity.isAdminAdd;
  data['link'] = entity.link;
  data['niceDate'] = entity.niceDate;
  data['niceShareDate'] = entity.niceShareDate;
  data['origin'] = entity.origin;
  data['prefix'] = entity.prefix;
  data['projectLink'] = entity.projectLink;
  data['publishTime'] = entity.publishTime;
  data['realSuperChapterId'] = entity.realSuperChapterId;
  data['selfVisible'] = entity.selfVisible;
  data['shareDate'] = entity.shareDate;
  data['shareUser'] = entity.shareUser;
  data['superChapterId'] = entity.superChapterId;
  data['superChapterName'] = entity.superChapterName;
  data['tags'] = entity.tags;
  data['title'] = entity.title;
  data['type'] = entity.type;
  data['userId'] = entity.userId;
  data['visible'] = entity.visible;
  data['zan'] = entity.zan;
  return data;
}