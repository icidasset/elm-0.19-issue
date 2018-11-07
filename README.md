Elm 0.19 compiler issue.  
__Compiling succeeds when it should fail.__

### Procedure

1. Compile using `elm make src/Main.elm --output=tmp.js`
2. Open the `src/Other/Sub.elm` file in your editor
3. Change the type signature of `add` to `Int -> { x : Int, y : Int } -> Int`
4. Change `add { x, y } =` to `add z { x, y } =`
5. Recompile using `elm make src/Main.elm --output=tmp.js`

### Conclusion

The `elm make` commands succeeds at step 5,
but it should fail with an error message.

### Important details

- Occurs when faulty code is at least two levels deep.
- When the `elm-stuff` directory is removed after step 5, re-compiling gives the proper error.
