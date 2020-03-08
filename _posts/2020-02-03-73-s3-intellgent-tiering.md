---
layout: post
title: "스탠다드아웃_069.log: S3 인텔리전트 티어링, RDS와 DMS 연동 삽질기, 클라우드프론트 지연 이슈 w/ ecleya"
permalink: /69/
contributors:
  - name: 'raccoonyy'
    uri: 'https://twitter.com/raccoonyy'
  - name: 'nacyot'
    uri: 'https://twitter.com/nacyot'
  - name: 'seapy'
    uri: 'https://twitter.com/seapyy'
social:
  twitter: "스탠다드아웃 69번째 로그에서는 S3 인텔리전트 티어링, RDS와 DMS 연동 삽질기, 클라우드프론트 지연 이슈 등에 대해서 이야기를 나눴습니다."
  facebook: "스탠다드아웃 69번째 로그에서는 S3 인텔리전트 티어링, RDS와 DMS 연동 삽질기, 클라우드프론트 지연 이슈 등에 대해서 이야기를 나눴습니다."
duration: "00:50:30"
enclosure:
  url: https://cdn-cf.podty.me/meta/episode_audio/513940/188843_1580687432815.mp3
  length: 72740038
---

![](https://github.com/44bits/stdout.fm/raw/master/_posts/images/stdout_069-log.png)

스탠다드아웃 69번째 로그에서는 S3 인텔리전트 티어링, RDS와 DMS 연동 삽질기, 클라우드프론트 지연 이슈 등에 대해 이야기를 나눴습니다.

* 게스트: [@ecleya][ecl]
* 참가자: [@nacyo_t][nac], [@raccoonyy][rac], [@seapy][sea]
* 정기 후원 - [stdout.fm are creating 프로그래머들의 팟캐스트 \| Patreon](https://www.patreon.com/stdoutfm)

[nac]: https://twitter.com/nacyo_t
[rac]: https://twitter.com/raccoonyy
[sea]: https://twitter.com/seapy
[ecl]: https://twitter.com/ecleya

## 주제별 바로 듣기
* <a href="#" onclick="jumpPlayer(0.0); return false;">00:00:00 69번째 에피소드 시작</a>
* <a href="#" onclick="jumpPlayer(188.0); return false;">00:03:08 단신</a>
* <a href="#" onclick="jumpPlayer(290.0); return false;">00:04:50 아마존 S3 인텔리전트 티어링 적용</a>
* <a href="#" onclick="jumpPlayer(1728.0); return false;">00:28:48 RDS와 DMS 연동하면서 Auto Vacuum이 멈춰버린 문제</a>
* <a href="#" onclick="jumpPlayer(2374.0); return false;">00:39:34 클라우드프론트 특정 통신망 지연 이슈</a>

## 시작하며
* [스탠다드아웃_067.log: RDS 인증서 업데이트, 파이썬 2.7 지원 종료, 스톡옵션 등 \| 개발자 팟캐스트 stdout.fm](https://stdout.fm/67/)
* [정년 60세 더 늘려봐야 실제 은퇴나이는 ‘49.1세’](http://www.donga.com/news/article/all/20190922/97522045/1)

## 단신
[Amazon RDS 스냅샷, Parquet 포맷 기반 Amazon S3 내보내기 기능 출시 \| Amazon Web Services 한국 블로그](https://aws.amazon.com/ko/blogs/korea/new-exporting-db-snapshot-data-to-amazon-s3-in-apache-parquet-format/)

## 아마존 S3 인텔리전트 티어링 적용
* [Object Storage Classes – Amazon S3](https://aws.amazon.com/s3/storage-classes/)
* [객체 수명 주기 관리 - Amazon Simple Storage Service](https://docs.aws.amazon.com/ko_kr/AmazonS3/latest/dev/object-lifecycle-mgmt.html)
* [서버 백업 솔루션 \| 백업 솔루션 \| Amazon Web Services](https://aws.amazon.com/ko/glacier/)
* [Amazon S3 Glacier의 볼트 알림 구성 - Amazon S3 Glacier](https://docs.aws.amazon.com/ko_kr/amazonglacier/latest/dev/configuring-notifications.html)
* [AWS Lambda@Edge에서 실시간 이미지 리사이즈 & WebP 형식으로 변환 - 당근마켓 팀블로그 - Medium](https://medium.com/daangn/lambda-edge%EB%A1%9C-%EA%B5%AC%ED%98%84%ED%95%98%EB%8A%94-on-the-fly-%EC%9D%B4%EB%AF%B8%EC%A7%80-%EB%A6%AC%EC%82%AC%EC%9D%B4%EC%A7%95-f4e5052d49f3)
* [New Amazon S3 Storage Class – Glacier Deep Archive \| AWS News Blog](https://aws.amazon.com/blogs/aws/new-amazon-s3-storage-class-glacier-deep-archive/)
* [Archival Cloud Storage  \|  Google Cloud](https://cloud.google.com/storage/archival/)
* [Cloud Storage: Object Storage  \|  Google Cloud](https://cloud.google.com/storage)
* [Turing machine - Wikipedia](https://en.wikipedia.org/wiki/Turing_machine)
* [보안, 클라우드 전송, 웹 성능 \| 아카마이 테크놀로지스 KR](https://www.akamai.com/kr/ko/)
* [노래는대한해협을타고(2014) - 제2회 AWSKRUG 세미나 발표자료](https://www.slideshare.net/awskr/awskrug)
* [생활TECH - 블랙홀 데이터 5페타바이트, 어떻게 처리했을까? - 테크월드](https://www.epnc.co.kr/news/articleView.html?idxno=83274)

## RDS와 DMS 연동하면서 Auto Vacuum이 멈춰버린 문제
* [AWS Database Migration Service - Amazon Web Services](https://aws.amazon.com/dms/)
* [PostgreSQL: Documentation: 10: 30.2. Write-Ahead Logging (WAL)](https://www.postgresql.org/docs/10/wal-intro.html)
* [PostgreSQL: Documentation: 10: 51.80. pg_replication_slots](https://www.postgresql.org/docs/10/view-pg-replication-slots.html)
* [PostgreSQL: Documentation: 10: VACUUM](https://www.postgresql.org/docs/10/sql-vacuum.html)
* [PostgreSQL을 원본으로 사용하고 모든 복제 슬롯이 사용 중이기 때문에 실패하는 AWS DMS 작업 문제 해결](https://aws.amazon.com/ko/premiumsupport/knowledge-center/dms-postgresql-fail-slots-in-use/)

## 클라우드프론트 특정 통신망 지연 이슈
* [Content Delivery Network (CDN) \| Low Latency, High Transfer Speeds, Video Streaming \| Amazon CloudFront](https://aws.amazon.com/cloudfront/)
* [Facebook AWSKRUG - 김현민: 유저그룹 슬랙 General 채널에서 이야기 됐던 부분일수도 있는데요, 공식 가이드 문서대로 IPv6를 사용하신다면 Route 53에 A레코드와 AAAA레코드 2개를 등록해주먄 됩니다. ...](https://www.facebook.com/groups/awskrug/permalink/2278291878939490/?comment_id=2278301895605155)
* [IPv6 address#AAAA Record - Wikipedia](https://en.wikipedia.org/wiki/IPv6_address#Domain_Name_System)
* [44BITS 기술 블로그 👩‍💻👨‍💻 on Twitter: "최근 SKT LTE망에서 AWS CF 전송 지연이 발생하고 있습니다. ipv6를 사용하지 않는다면...](https://mobile.twitter.com/fortyfourbits/status/1220241946343403520)
* [zzerjae on Twitter: "내 일주일을 순삭한이슈 https://t.co/fzfiGvpjH4" / Twitter](https://mobile.twitter.com/zzerjae/status/1220243114826166272)
