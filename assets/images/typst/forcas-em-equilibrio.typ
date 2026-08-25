// Bibliotecas importadas
#import "@preview/cetz:0.4.0" // Desenho vetorial

#set page(width: auto, height: auto, margin: 5pt) // Use margin para dar um respiro, se desejar

// 🎨 Definição de Cores
#let uft-green = rgb("#008577")
#let uft-blue = rgb("#004A80")
#let uft-yellow = rgb("#FDB913")
#let uft-gray = rgb("#666666")
#let primary-color = uft-blue
#let secondary-color = uft-green

#let F1 = (1.5, 1.5)
#let F2 = (1, -F1.at(0))
#let Fr = (F1.at(0)+F2.at(0), F1.at(1)+F2.at(1))
#let F3 = (-Fr.at(0), -Fr.at(1))
#let alfa1 = calc.atan2(F1.at(0), F1.at(1))
#let alfa2 = -calc.atan2(F2.at(0), F2.at(1))
#let alfa = alfa1+alfa2

#cetz.canvas({
  import cetz.draw: *

  //Transferidor
  circle((0, 0), radius: 3.5, stroke: uft-gray+0.8pt)
  //line((0, -2.7), (0, 2.7), stroke: (dash: "dashed", paint: uft-gray))
  for i in range(0, 360, step: 5) {
    let th = 1deg * i
    if th==0deg or th==180deg {
      line((3*calc.cos(th), 3*calc.sin(th)), (3.4*calc.cos(th), 3.4*calc.sin(th)), stroke: uft-gray+0.8pt)
      content((3.8*calc.cos(th), 3.8*calc.sin(th)), [#text(uft-gray)[$0°$]])
    } else if th==90deg or th==270deg {
      line((3*calc.cos(th), 3*calc.sin(th)), (3.4*calc.cos(th), 3.4*calc.sin(th)), stroke: uft-gray+0.8pt)
      content((3.8*calc.cos(th), 3.8*calc.sin(th)), [#text(uft-gray)[$90°$]])
    } else {
      line((3.2*calc.cos(th), 3.2*calc.sin(th)), (3.4*calc.cos(th), 3.4*calc.sin(th)), stroke: uft-gray+0.8pt)
    }
  }


  // Força F1
  line((0, 0), (F1),
    mark: (end: "stealth", fill: black), name: "F1"
  )
  content("F1.end", [$arrow(F_1)$], anchor: "south-east")
  // Força F2
  line((0,0), (F2),
    mark: (end: "stealth", fill: black), name: "F2"
  )
  content("F2.end", [$arrow(F_2)$], anchor: "north-east")
  // Força F3
  line((0,0), (F3),
    mark: (end: "stealth", fill: black), name: "F3"  
  )
  content("F3.end", [$arrow(F_3)$], anchor: "east")
  // Força Fr
  line((0,0), (Fr),
    mark: (end: "stealth", fill: black), name: "Fr"  
  )
  content("Fr.end", [$arrow(F_r)$], anchor: "west")
  // Paralelogramo
  line(
    (F1), (Fr), (F2), stroke: (dash: "dashed", thickness: 0.5pt)
  )
  content((5mm, -3mm), [$theta$], anchor: "west")
  rotate(z: -alfa2)
  arc((5mm,0), start: 0deg, stop: alfa, radius: 5mm, mode: "PIE", fill: gray.transparentize(80%), stroke: (thickness: 0.6pt))
  
})
