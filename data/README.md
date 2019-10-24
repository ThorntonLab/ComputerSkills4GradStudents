# Data sources

## mtcars.txt

This was dumped to text from R 3.5.2 on Oct 28, 2019 using the following command:

```{r}
data(mtcars)
write.table(mtcars, file = "mtcars.txt", sep = "\t",
            row.names = TRUE, col.names = NA)
```

