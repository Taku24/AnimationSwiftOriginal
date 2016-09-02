# AnimationSwiftOriginal
  なんとなくメモ程度でこのプログラムで使われているメソッドの備忘録 (マークダウンの書き方は勉強中なので悪しからず)
  
#ここで使ってるアニメーションの基本メソッド
  ・CABasicAnimation    :アニメーションで変化させるプロパティの変化前と後、インターバルを設定することでアニメーションさせるクラス  
  ・fromValue           :アニメーションの開始位置  
  ・toValue             :アニメーションの終端位置  
  ・duration            :アニメーションの長さ
  ・fillMode            :よくわかってないのでこちらを参照(http://swift-studying.com/blog/swift/?p=1400)  
  ・setValue            :そのままですが値を設定する(アニメーションが終わってからの処理等に活用)
  
#keyPathについて
  keyPathの値を変更することによってアニメーションの動きを変化させることができる  
  ・position.x : x軸の移動  
  ・position.y : y軸の移動  
  ・transform : 変形??
  ・transform.scale : 上記+大きさ??
  
#moveAnimation
  画面の左から真ん中へ向けてimageViewが移動するメソッド  
  
#rotationAnimation
  画面中央でimageViewが回転するメソッド  
  ・repeatCount: アニメーションのリピート回数  
  ・autoreverses: 逆方向のアニメーションを行うかどうか
  
#animationDidStop
  アニメーションが終わると呼ばれるメソッド
  
  


  
