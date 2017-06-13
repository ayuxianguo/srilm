# 小数据
#  $1 表示输入数据
#  $2 表示输出统计数据
#  $3 表示模型文件 
ngram-count -text $1  -order 3 -write $2
ngram-count -read $2 -order 3 -lm $3 -interpolate -kndiscount

# 测试
#   $1 表示测试数据
#   $2 表示模型文件
#   $3表示输出结果
# ngram -ppl $1 -order 3 -lm $2 > $3

