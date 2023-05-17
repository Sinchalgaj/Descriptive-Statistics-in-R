# 1.Try to write a code for printing sequence of numbers from 1 to 50 with the differences of 3, 5, 10

# Difference of 3
seq(1, 50, by = 3)

# Difference of 5
seq(1, 50, by = 5)

# Difference of 10
seq(1, 50, by = 10)

# Combine sequences
seqs <- c(seq(1, 50, by = 3), seq(1, 50, by = 5), seq(1, 50, by = 10))
print(seqs)



# 2. What are the different data objects in R? and write syntax and example for each and every object

# 1. Vectors:

  #Syntax :
  vector_name <- c(element1, element2, ..., element_n)
  #Example
  x <- c(1, 2, 3, 4, 5)

# 2.Matrices:
  
  #Syntax :
  matrix_name <- matrix(data, nrow, ncol, byrow)
  #Example
  m <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = TRUE)

# 3.Arrays:
  
  #Syntax :
  array_name <- array(data, dim, dimnames)
  #Example
  a <- array(c(1:20), dim = c(2,3,4), dimnames = list(c("A","B"), c("C","D","E"), c("F","G","H","I")))

# 4.Lists:
  
  #Syntax :
  list_name <- list(element1, element2, ..., element_n)
  #Example
  list <- list(name = "Mack", age = 31, hobbies = c("reading", "running", "swimming"))
  
# 5.Data frames:
  
  #Syntax :
  data_frame_name <- data.frame(column1, column2, ..., column_n)
  #Example
  df <- data.frame(name = c("Mack","lucy","Mike"), age = c(31,28,35), gender = c("Male","Female","Male"))

# 6.Factors:
  
  #Syntax :
  factor_name <- factor(vector, levels)
  #Example
  gender <- factor(c("Male","Female","Male"), levels = c("Male","Female"))
  

# 3. Create Data frame with 3 columns and 5 rows and write a code to fetch and delete row and a column using index and add new column and row to the existed data frame.
  
  # Create a data frame with 3 columns and 5 rows
  df <- data.frame(
    id = c(1, 2, 3, 4, 5),
    name = c("Mack","lucy","mike","Jane","Leon"),
    age = c(31,28,35,28,40)
  )
  
  # Print the data frame
  df
  
  # Fetch a row by index
  row <- df[2, ]
  print(row)
  
  # Fetch a column by index
  col <- df[ ,3]
  print(col)
  #   OR
  age_col <- df$age
  print(age_col)
  
  # Delete a row by index
  df <- df[-3, ]
  print(df)
  
  # Delete a column by index
  df <- df[, -1]
  print(df)
  
  # Add a new column to the data frame
  gender <- c("Male", "Female", "Male", "Female", "Male")
  df$gender <- gender
  print(df)
  
  # Add a new row to the data frame
  new_row <- data.frame(id = 6, name = "Rose", age = 27, gender = "Female")
  df <- rbind(df, new_row)
  print(df)

  
# 4.Write nested if else statements to print whether the given number is negative, positive or Zero.
  
  num <- -5
  
  if(num > 0){
    print("The number is positive")
  } else{
    if(num == 0){
      print("The number is zero")
    } else{
      print("The number is negative")
    }
  }
  

# 5.write a program to input any value and check whether it is character, numeric or special character.
  
  # take an input value
  value <- readline(prompt ="Enter any value: ")

  if(is.character(value)){
    print("The value is a character")
  } else{
    if(is.numeric(value)){
      print("The value is numeric")
    } else{
      if(!grepl("[A-Za-z0-9]", value)){
        print("The value is a special character")
      } else{
        print("The value is a combination of character and numeric")
      }
    }
  }
  
  
  
# 6. write difference between break and next also write examples for both.
  
  # 'break' is used to immediately terminate a loop.
  # 'next' is used to skip that step and continue with the loop.
  
  # break loop
  for (i in 1:10) {
    if (i == 5) {
      break
    }
    print(i)
  } 
  
  # next loop
  for (i in 1:10) {
    if (i == 5) {
      next
    }
    print(i)
  }
  
  
# 7.write a program to print a given vector in reverse format  
  v= c(1,5.6,3,10,3.5,5)
  
  # Print the vector in reverse order
  rev_v <- rev(v)
  print(rev_v)
  
  
# 8.write a program to get the mode value of the given vector

  a <- c('a', 'b', 'c', 't', 'a', 'c', 'r', 'a', 'c', 't', 'z', 'r', 'v', 't', 'u', 'e', 't')

  # Define a function to find the mode value
  find_mode <- function(a)

  # Call the function to find the mode value of the vector
  mode_val <- function(a)
  print(mode_val)


# 9.Write a function to filter only data belongs to ‘setosa’ in species of Iris dataset.( using dplyr package) 
  
  library(dplyr)
  setosa_data <- iris %>% filter(Species == "setosa")
  print(setosa_data)
  
  
# 10.Create a new column for iris dataset with the name of Means_of_obs, which contains mean value of each row.( using dplyr package)
  
  library(dplyr)
  data(iris)
  
  iris <- iris %>% 
    mutate(Means_of_obs = rowMeans(select(., -Species)))
  print(iris)
  
  
# 11.Filter data for the “versicolor” and get only ‘sepel_length’ and Sepel _width’ columns.( using dplyr package)
  
  library(dplyr)
  data(iris)
  
  versicolor_data <- iris %>%
    filter(Species == "versicolor") %>%
    select(Sepal.Length, Sepal.Width,Species)
  print(versicolor_data)
  
 
# 12.create below plots for the mtcars also write your inferences for each and every plot (use ggplot package) Use Different ( Size , Colour ) 
  
  library(ggplot2)
  data(mtcars)
  
  # Scatter plot : mpg vs. wt
  ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl), size = hp)) +
    geom_point() +
    labs(title = "Scatter plot of mpg vs. wt",
         x = "Weight (1000 lbs)",
         y = "Miles per gallon",
         color = "Cylinders",
         size = "Horsepower") +
    theme_bw()
  
  
  # Box Plot : mpg vs. cyl
  ggplot(mtcars, aes(x = factor(cyl), y = mpg, fill = factor(cyl))) +
    geom_boxplot() +
    labs(title = "Box plot of mpg by number of cylinders",
         x = "Number of cylinders",
         y = "Miles per gallon",
         fill = "Number of cylinders") +
    theme_bw()
  

  # histogram of mpg variable
  ggplot(mtcars, aes(x = mpg)) +
    geom_histogram(fill = "blue", color = "black", size = 0.2) +
    labs(title = "Histogram of MPG", x = "Miles per gallon", y = "Count")

  
  # line graph of mpg variable
  ggplot(mtcars, aes(x = rownames(mtcars), y = mpg)) +
    geom_line(color = "blue", size = 1) +
    labs(title = "Line Graph of MPG", x = "Car Models", y = "MPG") +
    theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))
  
  
  # bar graph of mpg variable
  ggplot(mtcars, aes(x = rownames(mtcars), y = mpg)) +
    geom_bar(stat = "identity", fill = "blue", width = 0.5) +
    labs(title = "Bar Graph of MPG", x = "Car Models", y = "MPG") +
    theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))
  
  
  