# Github Actionsはdockerコンテナ内で実行される
workflow "Glong workflow" {
  # ワークフローがキックされるイベントを登録
  on = "push"
  # ワークフローの最終アクションを登録
  resolves = ["Test"]
}

action "GolangCI-Lint" {
　# usesへdockerfileの置き場を指定する
  uses = "./.github/actions/golang"
  args = "lint"
}

action "Test" {
  # 依存関係
  needs = ["GolangCI-Lint"]
  uses = "./.github/actions/golang"
  # cliの引数
  args = "test"
}