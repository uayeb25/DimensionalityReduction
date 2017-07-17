a <- data.frame(user = "A", HP1 = 4, HP2 = NA, HP3 = NA, 
                TW=1, SW1 = 1, SW2= NA, SW2 = NA)
b <- data.frame(user = "B", HP1 = 5, HP2 = 5, HP3 = 4, 
                TW=NA, SW1 = NA, SW2= NA, SW2 = NA)
c <- data.frame(user = "C", HP1 = NA, HP2 = NA, HP3 = NA, 
                TW=2, SW1 = 4, SW2= 5, SW2 = NA)
d <- data.frame(user = "D", HP1 = NA, HP2 = 3, HP3 = NA, 
                TW=NA, SW1 = NA, SW2= NA, SW2 = 3)

movies.rating <- rbind(a,b,c,d)

Jaccard <- function(data.set, user1, user2){
  
  u1 <- subset(data.set, user == user1)
  u2 <- subset(data.set, user == user2)
  
  u1 <- u1[, !(names(u1) %in% c("user"))]
  u2 <- u2[, !(names(u2) %in% c("user"))]
  
  union_ <- 0
  intersect_ <- 0
  
  for(name_ in names(u1)){
    
    if( !is.na(u1[,name_]) & !is.na(u2[,name_])){
      intersect_ <- intersect_ + 1
    }
    
    if( !is.na(u1[,name_]) | !is.na(u2[,name_])){
      union_ <- union_ + 1
    }
    
  }
  
  intersect_/union_
  
}
