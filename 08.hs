
-- https://qiita.com/7shi/items/4a8a2807bb5186576c61

test1 =
    print "abc" >>= \_ ->
    print "def" >>= \_ ->
    print "ghi" >>= \_ ->
    print "jkl" >>= \_ ->
    print "mno"


test2 = do
    _ <- print "abc"
    _ <- print "def"
    print "ghi"

main = test2

