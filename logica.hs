nand :: Bool -> Bool -> Bool
nand True True = False
nand a b = True
maj :: Bool -> Bool -> Bool -> Bool
maj True True _ = True
maj True _ True = True
maj _ True True = True
maj _ _ _ = False

-- ---------------------------------------------------- 
-- Para las siguientes funciones se debe respetar el 
-- perfil propuesto.
-- La lista [Int] de paraTodo representa las posiciones 
-- sobre las que cuantificamos en [a].
-- Mientras que (Int -> [a] -> Bool) es la propiedad.
--		Ejemplo: paraTodo [0,1,2,3] [4,1,2,6] even 
--		retorna False, ya que existe una posición 
--		en la que el elemento de la lista es impar. 
--		paraTodo [0,2,4,6] [2,2,4,4,4,5,6] even  
--		retorna True.
-- ----------------------------------------------------
--paraTodo :: [Int] -> [a] -> (Int -> [a] -> Bool)-> Bool
--paraTodo ns xs p = and [(xs!!n) |n <- ns,p n xs]

paraTodo :: [Int] -> [Bool] -> (Int -> [Bool] -> Bool)-> Bool
paraTodo ns xs p = and [(xs!!n) |n <- ns,p n xs]


-- ----------------------------------------------------
-- La lista [Int] de paraTodo representa las posiciones 
-- sobre las que cuantificamos en [a]. 
-- (Int -> [a] -> Bool) es la propiedad.
--
--		Ejemplo: existe [0,1,2,3] [4,1,2,6] odd
--		retorna True.
-- ----------------------------------------------------
--existe :: [Int] -> [a] -> (Int -> [a] -> Bool)-> Bool
--existe ns xs p = or [(xs!!n) |n <- ns,p n xs]

existe :: [Int] -> [Bool] -> (Int -> [Bool] -> Bool)-> Bool
existe ns xs p = or [(xs!!n) |n <- ns,p n xs]

sumatoria :: [Int] -> [Integer] -> Integer
sumatoria ns xs = sum [(xs!!n) | n <- ns]

productoria :: [Int] -> [Integer] -> Integer
productoria ns xs = product [(xs!!n) | n <- ns]

contatoria :: [Int] -> [Int] -> Int
contatoria ns xs = length [(xs!!n) | n <- ns]