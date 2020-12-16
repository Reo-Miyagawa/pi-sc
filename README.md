# README

## usersテーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| name               | string     | null: false                    |
| email              | string     | null: false, unique: true      |
| encrypted_password | string     | null: false                    |

### Association
- has_many :lists




## listsテーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| user_id            | references | null: false, foreign_key:true  |

### Association
- belongs_to :user
- has_many :cards



## cardsテーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| memo               | text       | null: false                    |
| list_id            | references | null: false, foreign_key:true  |

### Association
- belongs_to :list


アプリケーション名：
PI-SC

アプリケーション概要：
paizaラーニングにて各言語事に何を学んだかを可視化しやすくするtrelloふうのアプリケーションになります。
対象の言語をリストへ、学んだ内容をカードへ（詳細内容含む）をそれぞれで管理することを想定しております。
またその他必要に応じてメモとして活用。

デプロイ：
URL：https://git.heroku.com/pi-sc.git

テスト用アカウント：
-----

利用方法:
-----

目指した課題解決:
プログラミング学習において汎用性の高い人材になることを目指しています。
その中で一つの言語のみではなく、複数の言語を並行して学びたいと考えました。
paizaは一から全て自分でコーディングをする必要があり、また模範解答がありません。
その中で調べながら記述していき新たに発見した事を簡単に可視化でき、且つリストとして管理したいと考えました。
そのような学習における重要点をまとめるために作成をしております。

洗い出した要件：
-----

実装した機能についてのGIFと説明:
-----

実装予定の機能:
-----

データベース設計:
GyazoURL:https://gyazo.com/884ed9263c1d685ba7dc28d451af350e

ローカルでの動作方法:
-----