# UseRails

このプロジェクトは、Ruby on Railsで構築されたアプリケーションです。

## 動作環境 (Prerequisites)

システムを動かすために必要な環境とバージョンは以下の通りです。
（※実際の環境に合わせて変更してください）

* **Ruby:** 3.2.2
* **Rails:** 7.1.x
* **Database:** PostgreSQL 14 (or MySQL / SQLite)
* **Node.js:** 18.x (フロントエンドのビルドツールを使用する場合)
* **Yarn:** 1.22.x (JavaScriptパッケージマネージャ)

## セットアップ手順 (Getting Started)

リポジトリをクローンした後、以下の手順でローカル環境を構築します。

### 1. 依存関係のインストール
```bash
bundle install
yarn install # もしJavaScriptのパッケージ管理にYarnを使用している場合
```

### 2. 環境変数の設定

環境変数の設定が必要な場合は、.env.example などをコピーして .env を作成してください。
```bash

cp .env.example .env
```
### 3. データベースの作成と初期化
```bash

rails db:create
rails db:migrate
rails db:seed # 初期データがある場合
```
アプリケーションの起動方法 (Running the Application)

ローカルサーバーを起動するには、以下のコマンドを実行します。
```bash

bin/dev
# または以下
rails server
```
起動後、ブラウザで http://localhost:3000 にアクセスしてください。