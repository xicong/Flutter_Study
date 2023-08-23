import 'package:flutter_study/generated/json/base/json_field.dart';
import 'package:flutter_study/generated/json/article_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class ArticleEntity {
	ArticleData? data;
	int? errorCode = 0;
	String? errorMsg = '';

	ArticleEntity();

	factory ArticleEntity.fromJson(Map<String, dynamic> json) => $ArticleEntityFromJson(json);

	Map<String, dynamic> toJson() => $ArticleEntityToJson(this);

	ArticleEntity copyWith({ArticleData? data, int? errorCode, String? errorMsg}) {
		return ArticleEntity()
			..data= data ?? this.data
			..errorCode= errorCode ?? this.errorCode
			..errorMsg= errorMsg ?? this.errorMsg;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ArticleData {
	int? curPage = 0;
	List<ArticleDataDatas>? datas;
	int? offset = 0;
	bool? over = false;
	int? pageCount = 0;
	int? size = 0;
	int? total = 0;

	ArticleData();

	factory ArticleData.fromJson(Map<String, dynamic> json) => $ArticleDataFromJson(json);

	Map<String, dynamic> toJson() => $ArticleDataToJson(this);

	ArticleData copyWith({int? curPage, List<ArticleDataDatas>? datas, int? offset, bool? over, int? pageCount, int? size, int? total}) {
		return ArticleData()
			..curPage= curPage ?? this.curPage
			..datas= datas ?? this.datas
			..offset= offset ?? this.offset
			..over= over ?? this.over
			..pageCount= pageCount ?? this.pageCount
			..size= size ?? this.size
			..total= total ?? this.total;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class ArticleDataDatas {
	bool? adminAdd = false;
	String? apkLink = '';
	int? audit = 0;
	String? author = '';
	bool? canEdit = false;
	int? chapterId = 0;
	String? chapterName = '';
	bool? collect = false;
	int? courseId = 0;
	String? desc = '';
	String? descMd = '';
	String? envelopePic = '';
	bool? fresh = false;
	String? host = '';
	int? id = 0;
	bool? isAdminAdd = false;
	String? link = '';
	String? niceDate = '';
	String? niceShareDate = '';
	String? origin = '';
	String? prefix = '';
	String? projectLink = '';
	int? publishTime = 0;
	int? realSuperChapterId = 0;
	int? selfVisible = 0;
	int? shareDate = 0;
	String? shareUser = '';
	int? superChapterId = 0;
	String? superChapterName = '';
	List<dynamic>? tags;
	String? title = '';
	int? type = 0;
	int? userId = 0;
	int? visible = 0;
	int? zan = 0;

	ArticleDataDatas();

	factory ArticleDataDatas.fromJson(Map<String, dynamic> json) => $ArticleDataDatasFromJson(json);

	Map<String, dynamic> toJson() => $ArticleDataDatasToJson(this);

	ArticleDataDatas copyWith({bool? adminAdd, String? apkLink, int? audit, String? author, bool? canEdit, int? chapterId, String? chapterName, bool? collect, int? courseId, String? desc, String? descMd, String? envelopePic, bool? fresh, String? host, int? id, bool? isAdminAdd, String? link, String? niceDate, String? niceShareDate, String? origin, String? prefix, String? projectLink, int? publishTime, int? realSuperChapterId, int? selfVisible, int? shareDate, String? shareUser, int? superChapterId, String? superChapterName, List<dynamic>? tags, String? title, int? type, int? userId, int? visible, int? zan}) {
		return ArticleDataDatas()
			..adminAdd= adminAdd ?? this.adminAdd
			..apkLink= apkLink ?? this.apkLink
			..audit= audit ?? this.audit
			..author= author ?? this.author
			..canEdit= canEdit ?? this.canEdit
			..chapterId= chapterId ?? this.chapterId
			..chapterName= chapterName ?? this.chapterName
			..collect= collect ?? this.collect
			..courseId= courseId ?? this.courseId
			..desc= desc ?? this.desc
			..descMd= descMd ?? this.descMd
			..envelopePic= envelopePic ?? this.envelopePic
			..fresh= fresh ?? this.fresh
			..host= host ?? this.host
			..id= id ?? this.id
			..isAdminAdd= isAdminAdd ?? this.isAdminAdd
			..link= link ?? this.link
			..niceDate= niceDate ?? this.niceDate
			..niceShareDate= niceShareDate ?? this.niceShareDate
			..origin= origin ?? this.origin
			..prefix= prefix ?? this.prefix
			..projectLink= projectLink ?? this.projectLink
			..publishTime= publishTime ?? this.publishTime
			..realSuperChapterId= realSuperChapterId ?? this.realSuperChapterId
			..selfVisible= selfVisible ?? this.selfVisible
			..shareDate= shareDate ?? this.shareDate
			..shareUser= shareUser ?? this.shareUser
			..superChapterId= superChapterId ?? this.superChapterId
			..superChapterName= superChapterName ?? this.superChapterName
			..tags= tags ?? this.tags
			..title= title ?? this.title
			..type= type ?? this.type
			..userId= userId ?? this.userId
			..visible= visible ?? this.visible
			..zan= zan ?? this.zan;
	}

	@override
	String toString() {
		return jsonEncode(this);
	}
}