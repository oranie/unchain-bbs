module Concerns::DefaultPost
  extend ActiveSupport::Concern

  included do
    def fill_in_blank_params
      if params[:title].blank?
        params[:title] = %w(
          俺が中島だ
          凸した結果wwwww
        ).sample
      end
      if params[:name].blank?
        params[:name] = "nakashii_"
      end
      if params[:content].blank?
        params[:content] = %w(
          でもブラウザベースなゲームの時代からネイティブアプリになってDBの負荷がくっと下がった感あるしどういうプロジェクトがそういう高単価なストレージ必要としていくのかな
          chef12入れたらfailedがreportingされてテストが雑なことがバレつつある事案
          笑い事じゃない
          作業内容を察して行くスタイル
          Jenkinsのビューがごっちゃごっちゃになるのみんなどうしているんだろう
          晴海トリトンでエビチリ丼ランチ食べたい
          雑なんだよなあ…
          サポートに入ったプロジェクトなのに自分が一番ドキュメント書いてる気がする
          インフラをコード化した結果コミュニケーション不足がそのままコードに反映されてストレスマッハ事例
          だから一人でやりたいなんて言い出すんだ
          風邪引いてる間にすごくいいまとめが
          僕はただ平穏にサーバーを構築したいだけなのに
          置いといたら腐るから出しときます
          ドッグフーディングか！！！！
          餌を自分で食えみたいな開発の言葉なんだったかいろいろ言葉を変えてググっても思い出せない。当然だが餌を与えるとか飯を食うみたいな話ばっかりでてくる。（英語）
          意識の改革は長いな…
          自分からぶっちゃけると相手もぶっちゃけてくれますねコミュニケーションの基本ですね
        ).sample
      end
    end
  end
end