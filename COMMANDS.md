Once you’ve cloned the haskell-mooc repository, go into the exercises directory. 

To download and build dependencies needed for running the exercise tests (such as the correct version of GHC and various libraries), run following command in your terminal:

```
    stack build
```

Use the tests file to check your answers. For example when you have solved some of the exercises in Set1.hs, run the following command:

```
    stack runhaskell Set1Test.hs
```

To make debugging faster and more straightforward, I can load my exercise file in GHCi, which allows me to evaluate any top-level function manually. 

For instance I can verify the above mistake by:

```
    stack ghci Set1.hs
```