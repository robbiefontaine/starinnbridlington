src1 <- c("https://github.com/robbiefontaine/starinnbridlington/blob/main/public/images/inside_1.png?raw=true",
          "https://github.com/robbiefontaine/starinnbridlington/blob/main/public/images/inside_2.png?raw=true",
          "https://github.com/robbiefontaine/starinnbridlington/blob/main/public/images/inside_3.png?raw=true",
          "https://github.com/robbiefontaine/starinnbridlington/blob/main/public/images/outside_1.png?raw=true",
          "https://github.com/robbiefontaine/starinnbridlington/blob/main/public/images/outside_2.png?raw=true",
          "https://github.com/robbiefontaine/starinnbridlington/blob/main/public/images/outside_3.png?raw=true",
          "https://github.com/robbiefontaine/starinnbridlington/blob/main/public/images/outside_4.png?raw=true"
          )


imgs_bare <- lapply(src1[c(1:6)],function(x){
  htmltools::tags$img(src = x)
})
slickR::slickR(imgs_bare)

slickR::slickR(slick_div(src1))

