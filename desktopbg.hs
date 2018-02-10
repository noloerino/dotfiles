import Graphics.Gloss

main = do
    display FullScreen bgColor genPicture

bgColor = makeColor 197 25 255 50

s1StartColor = makeColorI 55 252 213 10 -- hex #37fcd5
s1EndColor = makeColorI 58 111 234 10 -- hex #1b7a0
--endColor = makeColorI 40 51 155 255 -- hex #28339b
s2EndColor = makeColorI 196 26 17 10
s2StartColor = makeColorI 221 158 48 10

genPicture :: Picture
genPicture = Pictures $ concat [s2Gradient, s1Gradient]

x0 = 800
y0 = -400
startRadius = 2000
stopRadius = 60
colScale = 0.97
radDiff = 30

s1Gradient = makeGradient (800, -500) s1StartColor s1EndColor
s2Gradient = makeGradient (-800, 500) s2StartColor s2EndColor

makeGradient :: Point -> Color -> Color -> [Picture]
makeGradient p start end = fadingCircles p startRadius (take 40 $ makeColorString 70 start end)

fadingCircles :: Point -> Float -> [Color] -> [Picture]
fadingCircle (_, _)  _ [] = []
--fadingCirlce (x, y) r [c] = [Translate x y (Color c(circleSolid r))]
fadingCircles (x, y) r colors
    | length colors == 1 = [Translate x y (Color color (circleSolid r))]
    | r <= stopRadius = fadingCircles (x, y) nextR [color]
    | otherwise = [Translate x y pic] ++ fadingCircles (x, y) nextR (tail colors)
        where color = head colors
              rDiff = (r - stopRadius) / (fromIntegral $ length colors)
              nextR = r - rDiff
              pic = Color color (circleSolid r) --(thickArc 0 359 nextR rDiff)

-- | Makes a list of colors smoothly transitioning from startColor to endColor
makeColorString :: Int -> Color -> Color -> [Color]
makeColorString 0 _ _ = []
makeColorString 1 c0 _ = [c0]
makeColorString n c0 c1 = [c0] ++ makeColorString (n - 1) nextColor c1
    -- gets the difference between the current color value and next color value
    -- for two colors, the difference should just be nb - na
    where nextComp na nb = na + (nb - na) / (fromIntegral (n - 1))
          (r, g, b, _) = zip4Tuple nextComp (rgbaOfColor c0) (rgbaOfColor c1)
          a = 0.03 --1 / (1 + 650 * (exp (-0.07 * (fromIntegral n - 20)))) --1 - 0.9 * (exp ((-0.0005) * fromIntegral n))
          nextColor = makeColor r g b a

zip4Tuple :: (a -> b -> c) -> (a, a, a, a) -> (b, b, b, b) -> (c, c, c, c)
zip4Tuple f (a1, b1, c1, d1) (a2, b2, c2, d2) = ((f a1 a2), (f b1 b2), (f c1 c2), (f d1 d2))
