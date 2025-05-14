module Main where

import Text.Read (readMaybe)

-- 1. Operações puras
add, sub, mul :: Double -> Double -> Double
add x y = x + y
sub x y = x - y
mul x y = x * y

divide :: Double -> Double -> Maybe Double
divide _ 0 = Nothing
divide x y = Just (x / y)

power :: Double -> Double -> Double
power = (**)

root :: Double -> Double -> Maybe Double
root 0 _ = Nothing
root n x = Just (x ** (1 / n))

-- 2. Parser: String -> String
calcular :: String -> String
calcular input =
  case words input of
    [sx, op, sy] ->
      case (readMaybe sx, readMaybe sy) of
        (Just x, Just y) ->
          let resultado = case op of
                "+"    -> Just (add x y)
                "-"    -> Just (sub x y)
                "*"    -> Just (mul x y)
                "/"    -> divide x y
                "^"    -> Just (power x y)
                "root" -> root x y
                _      -> Nothing
          in case resultado of
               Just r  -> show r
               Nothing ->
                 case op of
                   "/"    -> "Erro: divisao por zero"
                   "root" -> "Erro: raiz de ordem zero"
                   _      -> "Operador invalido"
        _ -> "Expressao invalida"
    _ -> unlines
           [ "Formato esperado: \"<numero> <op> <numero>\""
           , "Operadores suportados: +  -  *  /  ^  root"
           ]

-- 3. I/O isolado no main
main :: IO ()
main = do
  putStrLn "Calculadora Funcional"
  putStrLn "Operadores: +  -  *  /  ^  root"
  putStrLn "Exemplos: 2 + 3    5 ^ 2    3 root 27    sair"
  loop
  where
    loop = do
      line <- getLine
      if line == "sair"
        then putStrLn "Adeus!"
        else do
          putStrLn $ "=> " ++ calcular line
          loop
