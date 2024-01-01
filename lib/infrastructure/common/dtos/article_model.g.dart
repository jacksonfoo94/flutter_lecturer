// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleModelImpl _$$ArticleModelImplFromJson(Map<String, dynamic> json) =>
    _$ArticleModelImpl(
      id: json['short_url'] as String,
      title: json['title'] as String,
      byline: json['byline'] as String,
      multimedia: multimediaFromJson(json['multimedia']),
      publishedDate: json['published_date'] as String,
    );

Map<String, dynamic> _$$ArticleModelImplToJson(_$ArticleModelImpl instance) =>
    <String, dynamic>{
      'short_url': instance.id,
      'title': instance.title,
      'byline': instance.byline,
      'multimedia': instance.multimedia,
      'published_date': instance.publishedDate,
    };
