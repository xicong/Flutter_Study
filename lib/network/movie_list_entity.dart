import 'package:Flutter_Study/generated/json/base/json_convert_content.dart';
import 'package:Flutter_Study/generated/json/base/json_filed.dart';

class MovieListEntity with JsonConvert<MovieListEntity> {
	int count;
	int start;
	int total;
	List<MovieListSubject> subjects;
	String title;
}

class MovieListSubject with JsonConvert<MovieListSubject> {
	MovieListSubjectsRating rating;
	List<String> genres;
	String title;
	List<MovieListSubjectsCast> casts;
	List<String> durations;
	@JSONField(name: "collect_count")
	int collectCount;
	@JSONField(name: "mainland_pubdate")
	String mainlandPubdate;
	@JSONField(name: "has_video")
	bool hasVideo;
	@JSONField(name: "original_title")
	String originalTitle;
	String subtype;
	List<MovieListSubjectsDirector> directors;
	List<String> pubdates;
	String year;
	MovieListSubjectsImages images;
	String alt;
	String id;
}

class MovieListSubjectsRating with JsonConvert<MovieListSubjectsRating> {
	int max;
	double average;
	MovieListSubjectsRatingDetails details;
	String stars;
	int min;
}

class MovieListSubjectsRatingDetails with JsonConvert<MovieListSubjectsRatingDetails> {
	@JSONField(name: "1")
	double x1;
	@JSONField(name: "3")
	double x3;
	@JSONField(name: "2")
	double x2;
	@JSONField(name: "5")
	double x5;
	@JSONField(name: "4")
	double x4;
}

class MovieListSubjectsCast with JsonConvert<MovieListSubjectsCast> {
	MovieListSubjectsCastsAvatars avatars;
	@JSONField(name: "name_en")
	String nameEn;
	String name;
	String alt;
	String id;
}

class MovieListSubjectsCastsAvatars with JsonConvert<MovieListSubjectsCastsAvatars> {
	String small;
	String large;
	String medium;
}

class MovieListSubjectsDirector with JsonConvert<MovieListSubjectsDirector> {
	MovieListSubjectsDirectorsAvatars avatars;
	@JSONField(name: "name_en")
	String nameEn;
	String name;
	String alt;
	String id;
}

class MovieListSubjectsDirectorsAvatars with JsonConvert<MovieListSubjectsDirectorsAvatars> {
	String small;
	String large;
	String medium;
}

class MovieListSubjectsImages with JsonConvert<MovieListSubjectsImages> {
	String small;
	String large;
	String medium;
}
