leap_year <- function(year){
    if(year %% 100 == 0){
        return (year%%400 == 0)
    }
    else{
        return(year%%4 == 0)
    }
}

cat(leap_year(1997), leap_year(1900), leap_year(2000), "\n")