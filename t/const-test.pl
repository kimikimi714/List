# クラス名 Class をインポート
BEGIN {
push(@INC, '../t');
}
use Class;

# クラスのオブジェクトリファレンスを作成
my $obj = new Class;

# メソッド method1 の呼び出し
$obj->method1();
