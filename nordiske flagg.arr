use context essentials2021

fun flagg(land):
  if land == "norge":
    block:
      place-image(
        rectangle(300, 200, "outline", "black"),
        150,
        100,

        place-image(
          rectangle(30, 350, "solid", "dark blue"),
          100,
          160, 
          place-image(
            rectangle(400, 30, "solid", "dark blue"),
            100,
            100,
            place-image(
              rectangle(55, 550, "solid", "white"),
              100,
              200,
              place-image(
                rectangle(600, 55, "solid", "white"),
                5,
                100,   
                place-image(
                  rectangle(500, 400, "solid", "crimson"),
                  150,
                  130,                 
                  rectangle(300, 200, "outline", "black")
                  ))))))


    end
  else if land == "svergie":
    block:
      place-image(
        rectangle(300, 200, "outline", "black"),
        150,
        100,

        place-image(
          rectangle(40, 350, "solid", "yellow"),
          100,
          160, 
          place-image(
            rectangle(400, 40, "solid", "yellow"),
            100,
            100,
            place-image(
              rectangle(55, 550, "solid", "blue"),
              100,
              200,
              place-image(
                rectangle(600, 55, "solid", "blue"),
                5,
                100,   
                place-image(
                  rectangle(500, 400, "solid", "blue"),
                  150,
                  130,                 
                  rectangle(300, 200, "outline", "black")
                  ))))))

    end
  else if land == "danmark":
    block:
      place-image(
        rectangle(300, 200, "outline", "black"),
        150,
        100,

        place-image(
          rectangle(40, 350, "solid", "white"),
          100,
          160, 
          place-image(
            rectangle(400, 40, "solid", "white"),
            100,
            100,
            place-image(
              rectangle(55, 550, "solid", "crimson"),
              100,
              200,
              place-image(
                rectangle(600, 55, "solid", "crimson"),
                5,
                100,   
                place-image(
                  rectangle(500, 400, "solid", "crimson"),
                  150,
                  130,                 
                  rectangle(300, 200, "outline", "black")
                  ))))))

end
    
  else if land == "finland":
    block:
      place-image(
        rectangle(300, 200, "outline", "black"),
        150,
        100,

        place-image(
          rectangle(40, 350, "solid", "dark blue"),
          100,
          160, 
          place-image(
            rectangle(400, 40, "solid", "dark blue"),
            100,
            100,
            place-image(
              rectangle(55, 550, "solid", "white"),
              100,
              200,
              place-image(
                rectangle(600, 55, "solid", "white"),
                5,
                100,   
                place-image(
                  rectangle(500, 400, "solid", "white"),
                  150,
                  130,                 
                  rectangle(300, 200, "outline", "black")
                  ))))))
      
      end
    
  else if land == "island":
    block:
      place-image(
        rectangle(300, 200, "outline", "black"),
        150,
        100,

        place-image(
          rectangle(30, 350, "solid", "crimson"),
          100,
          160, 
          place-image(
            rectangle(400, 30, "solid", "crimson"),
            100,
            100,
            place-image(
              rectangle(55, 550, "solid", "white"),
              100,
              200,
              place-image(
                rectangle(600, 55, "solid", "white"),
                5,
                100,   
                place-image(
                  rectangle(500, 400, "solid", "dark blue"),
                  150,
                  130,                 
                  rectangle(300, 200, "outline", "black")
                  ))))))
      end
    
  else if land == "færøyene":
    block:
      place-image(
        rectangle(300, 200, "outline", "black"),
        150,
        100,

        place-image(
          rectangle(30, 350, "solid", "crimson"),
          100,
          160, 
          place-image(
            rectangle(400, 30, "solid", "crimson"),
            100,
            100,
            place-image(
              rectangle(55, 550, "solid", "dark blue"),
              100,
              200,
              place-image(
                rectangle(600, 55, "solid", "dark blue"),
                5,
                100,   
                place-image(
                  rectangle(500, 400, "solid", "white"),
                  150,
                  130,                 
                  rectangle(300, 200, "outline", "black")
                  ))))))
    end
  end
end



flagg("norge")
flagg("svergie")
flagg("danmark")
flagg("finland")
flagg("island")
flagg("færøyene")