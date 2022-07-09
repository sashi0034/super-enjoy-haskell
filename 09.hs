loopInGlobal i
    | i <= 6 = do
        print i
        loopInGlobal $ i + 1
    | otherwise = return ()

main = do
    let loop i | i <= 3 = do
            print i
            loop $ i + 1
        loop _ = return ()

    loop 1
    loopInGlobal 1
