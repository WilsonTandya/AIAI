;Main Question
(defrule Question-Concave
	?x <- (initial-fact)
	=>
	(retract ?x)
	(printout t "mean concave points? " )
    (assert (concave (read)))
)

; Check Concave
(defrule Check-ConcaveSmall
	(concave ?concave)
	(test (<= ?concave 0.05))
	=>
	(assert (concaveSmall))
)

(defrule Check-ConcaveBig
	(concave ?concave)
	(test (> ?concave 0.05))
	=>
	(assert (concaveBig))
)

; Question
(defrule Question-Radius
	(concaveSmall)
	=>
	(printout t "worst radius? " )
    (assert (radius (read)))

)

; Check Radius
(defrule Check-RadiusSmall
	(radius ?radius)
	(test (<= ?radius 16.83))
	=>
	(assert (radiusSmall))
)

(defrule Check-RadiusBig
	(radius ?radius)
	(test (> ?radius 16.83))
	=>
	(assert (radiusBig))
)

; Question
(defrule Question-RadiusError
	(radiusSmall)
	=>
	(printout t "radius error? " )
    (assert (radiusError (read)))

)


; Check Radius Error
(defrule Check-RadiusErrorSmall
	(radiusError ?radiusError)
	(test (<= ?radiusError 0.63))
	=>
	(assert (radiusErrorSmall))
)

(defrule Check-RadiusErrorBig
	(radiusError ?radiusError)
	(test (> ?radiusError 0.63))
	=>
	(assert (radiusErrorBig))
)

; Question
(defrule Question-WorstTexture
	(radiusErrorSmall)
	=>
	(printout t "worst texture? " )
    (assert (worstTexture (read)))

)

; Check Worst Texture
(defrule Check-WorstTextureSmall
	(worstTexture ?worstTexture)
	(test (<= ?worstTexture 30.15))
	=>
	(assert (worstTextureSmall))
)

(defrule Check-WorstTextureBig
	(worstTexture ?worstTexture)
	(test (> ?worstTexture 30.15))
	=>
	(assert (worstTextureBig))
)

; Determined
(defrule cancer1
	(worstTextureSmall)
	=>
	(printout t "Terprediksi Kanker Payudara" crlf)

)

; Question
(defrule Question-WorstArea
	(worstTextureBig)
	=>
	(printout t "worst area? " )
    (assert (worstArea (read)))

)

; Check Worst Area
(defrule Check-WorstAreaSmall
	(worstArea ?worstArea)
	(test (<= ?worstArea 641.6))
	=>
	(assert (worstAreaSmall))
)

(defrule Check-WorstAreaBig
	(worstArea ?worstArea)
	(test (> ?worstArea 641.6))
	=>
	(assert (worstAreaBig))
)

; Determined
(defrule cancer2
	(worstAreaSmall)
	=>
	(printout t "Terprediksi Kanker Payudara" crlf)

)

; Question
(defrule Question-MeanRadius
	(worstAreaBig)
	=>
	(printout t "mean radius? " )
    (assert (meanRadius (read)))

)

; Mean Radius
(defrule Check-MeanRadiusSmall
	(meanRadius ?meanRadius)
	(test (<= ?meanRadius 13.45))
	=>
	(assert (meanRadiusSmall))
)

(defrule Check-MeanRadiusBig
	(meanRadius ?meanRadius)
	(test (> ?meanRadius 13.45))
	=>
	(assert (meanRadiusBig))
)

; Determined
(defrule cancer3
	(meanRadiusBig)
	=>
	(printout t "Terprediksi Kanker Payudara" crlf)

)

; Question
(defrule Question-MeanTexture
	(meanRadiusSmall)
	=>
	(printout t "mean texture? " )
    (assert (meanTexture (read)))

)

; Mean Texture
(defrule Check-MeanTextureSmall
	(meanTexture ?meanTexture)
	(test (<= ?meanTexture 28.79))
	=>
	(assert (meanTextureSmall))
)

(defrule Check-MeanTextureBig
	(meanTexture ?meanTexture)
	(test (> ?meanTexture 28.79))
	=>
	(assert (meanTextureBig))
)

; Determined
(defrule cancer4
	(meanTextureBig)
	=>
	(printout t "Terprediksi Kanker Payudara" crlf)

)

; Determined
(defrule noCancer1
	(meanTextureSmall)
	=>
	(printout t "Terprediksi TIDAK Kanker Payudara" crlf)

)

; Question
(defrule Question-MeanSmoothness
	(radiusErrorBig)
	=>
	(printout t "mean smoothness? " )
    (assert (meanSmoothness (read)))

)

; Mean Smoothness
(defrule Check-MeanSmoothnessSmall
	(meanSmoothness ?meanSmoothness)
	(test (<= ?meanSmoothness 0.09))
	=>
	(assert (meanSmoothnessSmall))
)

(defrule Check-MeanSmoothnessBig
	(meanSmoothness ?meanSmoothness)
	(test (> ?meanSmoothness 0.09))
	=>
	(assert (meanSmoothnessBig))
)

; Determined
(defrule cancer5
	(meanSmoothnessSmall)
	=>
	(printout t "Terprediksi Kanker Payudara" crlf)

)

; Determined
(defrule noCancer2
	(meanSmoothnessBig)
	=>
	(printout t "Terprediksi TIDAK Kanker Payudara" crlf)

)

; Question
(defrule Question-MeanTexture2
	(radiusBig)
	=>
	(printout t "mean texture? " )
    (assert (meanTexture2 (read)))

)

; Mean Texture 2
(defrule Check-MeanTextureSmall2
	(meanTexture2 ?meanTexture2)
	(test (<= ?meanTexture2 16.19))
	=>
	(assert (meanTexture2Small))
)

(defrule Check-MeanTextureBig2
	(meanTexture2 ?meanTexture2)
	(test (> ?meanTexture2 16.19))
	=>
	(assert (meanTexture2Big))
)

; Determined
(defrule cancer6
	(meanTexture2Small)
	=>
	(printout t "Terprediksi Kanker Payudara" crlf)

)

; Question
(defrule Question-ConcavePointsError
	(meanTexture2Big)
	=>
	(printout t "concave points error? " )
    (assert (concavePointsError (read)))

)

; Concave Points Error
(defrule Check-ConcavePointsErrorSmall
	(concavePointsError ?concavePointsError)
	(test (<= ?concavePointsError 0.01))
	=>
	(assert (concavePointsErrorSmall))
)

(defrule Check-ConcavePointsErrorBig
	(concavePointsError ?concavePointsError)
	(test (> ?concavePointsError 0.01))
	=>
	(assert (concavePointsErrorBig))
)

; Determined
(defrule noCancer3
	(concavePointsErrorSmall)
	=>
	(printout t "Terprediksi TIDAK Kanker Payudara" crlf)

)

; Determined
(defrule cancer7
	(concavePointsErrorBig)
	=>
	(printout t "Terprediksi Kanker Payudara" crlf)

)

; Question
(defrule Question-WorstPerimeter
	(concaveBig)
	=>
	(printout t "worst perimeter? " )
    (assert (worstPerimeter (read)))

)

; Worst Perimeter
(defrule Check-WorstPerimeterSmall
	(worstPerimeter ?worstPerimeter)
	(test (<= ?worstPerimeter 114.45))
	=>
	(assert (worstPerimeterSmall))
)

(defrule Check-WorstPerimeterBig
	(worstPerimeter ?worstPerimeter)
	(test (> ?worstPerimeter 114.45))
	=>
	(assert (worstPerimeterBig))
)

; Question
(defrule Question-WorstTexture2
	(worstPerimeterSmall)
	=>
	(printout t "worst texture? " )
    (assert (worstTexture2 (read)))

)

; Worst Texture 2
(defrule Check-WorstTextureSmall2
	(worstTexture2 ?worstTexture2)
	(test (<= ?worstTexture2 25.65))
	=>
	(assert (worstTexture2Small))
)

(defrule Check-WorstTextureBig2
	(worstTexture2 ?worstTexture2)
	(test (> ?worstTexture2 25.65))
	=>
	(assert (worstTexture2Big))
)

; Question
(defrule Question-WorstConcavePoints
	(worstTexture2Small)
	=>
	(printout t "worst concave points? " )
    (assert (worstConcavePoints (read)))

)

; Worst Concave Points
(defrule Check-WorstConcavePointsSmall
	(worstConcavePoints ?worstConcavePoints)
	(test (<= ?worstConcavePoints 0.17))
	=>
	(assert (worstConcavePointsSmall))
)

(defrule Check-WorstConcavePointsBig
	(worstConcavePoints ?worstConcavePoints)
	(test (> ?worstConcavePoints 0.17))
	=>
	(assert (worstConcavePointsBig))
)

; Determined
(defrule cancer8
	(worstConcavePointsSmall)
	=>
	(printout t "Terprediksi Kanker Payudara" crlf)

)

; Determined
(defrule noCancer4
	(worstConcavePointsBig)
	=>
	(printout t "Terprediksi TIDAK Kanker Payudara" crlf)

)

; Question
(defrule Question-PerimeterError
	(worstTexture2Big)
	=>
	(printout t "perimeter error? " )
    (assert (perimeterError (read)))

)

; Perimeter Error
(defrule Check-PerimeterErrorSmall
	(perimeterError ?perimeterError)
	(test (<= ?perimeterError 1.56))
	=>
	(assert (perimeterErrorSmall))
)

(defrule Check-PerimeterErrorBig
	(perimeterError ?perimeterError)
	(test (> ?perimeterError 1.56))
	=>
	(assert (perimeterErrorBig))
)

; Question
(defrule Question-MeanRadius2
	(perimeterErrorSmall)
	=>
	(printout t "mean radius? " )
    (assert (meanRadius2 (read)))

)

; Mean Radius 2
(defrule Check-MeanRadiusSmall2
	(meanRadius2 ?meanRadius2)
	(test (<= ?meanRadius2 13.34))
	=>
	(assert (meanRadius2Small))
)

(defrule Check-MeanRadiusBig2
	(meanRadius2 ?meanRadius2)
	(test (> ?meanRadius2 13.34))
	=>
	(assert (meanRadius2Big))
)

; Determined
(defrule noCancer5
	(meanRadius2Small)
	=>
	(printout t "Terprediksi TIDAK Kanker Payudara" crlf)

)

; Determined
(defrule cancer9
	(meanRadius2Big)
	=>
	(printout t "Terprediksi Kanker Payudara" crlf)

)

; Determined
(defrule noCancer6
	(perimeterErrorBig)
	=>
	(printout t "Terprediksi TIDAK Kanker Payudara" crlf)

)

; Determined
(defrule noCancer7
	(worstPerimeterBig)
	=>
	(printout t "Terprediksi TIDAK Kanker Payudara" crlf)

)