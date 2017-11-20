game_on <- function(rounds = 30) {
  balance <- 75
  for(i in 1:rounds){
    coin <- rbinom(1,1,prob = .5)
    if(coin == 1){balance <- balance*1.2}
    else{ balance <- balance-17}
  }
  return(balance)
}
set.seed(10)
simulations <- data.frame(x = sapply(rep(30,200), game_on))
simulations$Play <- 'Yes!'
simulations$Play[ simulations$x <= 75*1.2] <- 'No!'