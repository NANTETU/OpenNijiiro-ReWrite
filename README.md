# OpenNijiiro-ReWrite

## <ins>作成者のSNS</ins>
- YouTube : https://www.youtube.com/@なんてつ
- Discord (日本語) : https://x.com/NanTetu777

## 目次

1. [ソフトウェアについて](#ソフトウェアについて)
2. [注意事項](#注意事項)
3. [動画、配信等でのご利用について](動画、配信等でのご利用について)
4. [改造・再配布(二次配布)を行う場合について](改造・再配布(二次配布)を行う場合について)
5. [Q＆A](Q＆A)

<!-- プロジェクト名を記載 -->

## ソフトウェアについて
このソフトはOpenNijiiroの自称改良版です。

DTXMania → [Tjaplayer2fPC](https://github.com/kairera0467/TJAP2fPC) → Tjaplayer3 → Tjaplayer3-develop → 

[Tjaplayer3-Develop-Write](https://github.com/touhourenren/TJAPlayer3-Develop-ReWrite) → [Opentaiko](https://github.com/close109/OpenNijiiro) → [OpenNijiiro](https://github.com/close109/OpenNijiiro) → OpenNijiiro-ReWrite ←今ここ

すごいね


## 注意事項
### ・このゲームを使用する場合は、全て自己責任でお願いします。
### ・常時60fpsを保てないPCでの動作は快適なプレイは期待できません。
### ・バグなどは[NanTetu777](https://x.com/NanTetu777)まで。


## 動画、配信等でのご利用について
タグ機能のあるサイトの場合、「OpenTaiko」「TJAPlayer3」「TJAP3」といったタグを付けることで、誤解を防ぐとともに、関連動画として出やすくなるメリットがあるため、推奨します。

知的所有権侵害は支援しておりませんので、自国の著作権規則に基づいて行動してください。 制作者も著作権を反するスキンの二次配布についても固く反対します。


## 改造・再配布(二次配布)を行う場合について
OpenNijiiro-ReWriteはオープンソースソフトウェア(MIT)です。 MITライセンスのルールのもと、改造・再配布を行うことは自由ですが、全て自己責任でお願いします。 また、使用しているライブラリのライセンス上、必ず「Licenses」フォルダを同梱の上、改造・再配布をお願いします。 外部スキンや、譜面パッケージを同梱する場合は、それぞれの制作者のルールや規約を守ってください。 これらにOpenNijiiro-ReWriteのライセンスは適用されません。

## Q＆A

- 選曲画面の段位道場の曲の難易度が全部鬼の☆１０になってます

```
.tjaファイルの#NEXTSONG行に「,[LEVEL],[COURSE]」を追加してください。

例：

旧： #NEXTSONG [TITLE],[SUBTITLE],[GENRE],[WAVE],[SCOREINIT],[SCOREDIFF]

新： #NEXTSONG [TITLE],[SUBTITLE],[GENRE],[WAVE],[SCOREINIT],[SCOREDIFF],[LEVEL],[COURSE]
```

- エントリー画面から進めません。

```
Pキーを長押し、または面のキー（デフォルトではF、J／B、N）を押してください。
```

- バグを発見しました、どうすればいいですか？

```
バグを発見したらGithubのIssue、またはDiscordサーバーの#bugsチャンネルまでご報告ください。
```

- 追加したキャラクター・プチキャラが表示されていません。

```
v0.5.3.1からキャラクターおよびプチキャラはGlobalフォルダに読み込まれます（スキンフォルダ以外）、そこに入れてください。
```

<!-- 言語、フレームワーク、ミドルウェア、インフラの一覧とバージョンを記載 -->

## スペシャルサンクス

> * [Takkkom/Major OpenTaiko features (1080p support, AI Battle mode, 5P mode and so on)](https://github.com/Takkkom)
> * [AkiraChnl/OpenTaiko Icon](https://github.com/AkiraChnl)(@akirach_jp)
> * [Reichisama/OpenTaiko 0.6.0 Icon](https://twitter.com/himikoreichi135)(@himikoreichi135)
> * [cien/OpenTaiko Logo/Various Default Skin Assets](https://twitter.com/CienpixeL)(@CienpixeL)
> * [funnym0th/OpenTaiko Spanish Translation](https://github.com/funnym0th) (@funnym0th)
> * [basketballsmash/English README Translation](https://twitter.com/basketballsmash)(@basketballsmash)
> * [Meowgister/OpenTaiko English Translation](https://www.youtube.com/channel/UCDi5puZaJLMUA6OgIAb7rmQ)
> * [WHMHammer/OpenTaiko Chinese Translation](https://github.com/whmhammer)(@WHMHammer)
> * [Expédic Habbet/OpenTaiko Chinese Text Assistance, Russian Text](https://github.com/ExpedicHabbet)(@ExpedicHabbet)
> * [Aioilight/TJAPlayer3](https://github.com/aioilight/TJAPlayer3)(@aioilight)
> * [TwoPointZero/TJAPlayer3](https://github.com/twopointzero/TJAPlayer3)(@twopointzero)
> * [KabanFriends/TJAPlayer3](https://github.com/KabanFriends/TJAPlayer3/tree/features)(@KabanFriends)
> * [Mr-Ojii/TJAPlayer3-f](https://github.com/Mr-Ojii/TJAPlayer3-f)(@Mr-Ojii)
> * [Akasoko/TJAPlayer3](https://github.com/Akasoko-Master/TJAPlayer3)(@AkasokoR)
> * [FROM/DTXMaina](https://github.com/DTXMania)(@DTXMania)
> * [Kairera0467/TJAP2fPC](https://github.com/kairera0467/TJAP2fPC)(@Kairera0467)
> * [touhourenren/TJAPlayer3-Develop-Rewrite](https://github.com/touhourenren)

([OpenTaiiko](https://github.com/0auBSQ/OpenTaiko/tree/main)からの引用)
