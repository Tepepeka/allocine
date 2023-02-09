# README

## In rails console :

```
tp Movie.all, :id, :name, :year, :allocine_rating, :my_rating, :already_seen
```

### Choose ur favorite movie
```
best_01 = Movie.find(22)
best_02 = Movie.find_by(name:"Scarface")
best_03 = Movie.find_by(name:"Alien")
```

### Rate ur movie
```
best_01.update(my_rating:4.8,already_seen:true)
best_02.update(my_rating:4.8,already_seen:true)
best_03.update(my_rating:4.8,already_seen:true)
```