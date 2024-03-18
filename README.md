# Study the Cost of OOP in Different Languages

This is a project for researching the cost of OOP in different languages
by implementing some of the most common OOP features (objects construction
and destruction, dynamic polymorphism).

All you need to repeat our research is to run main.sh file from this repo!

P.S. Maybe it will be necessary to install some packages like gdate or g++ compiler

Results #1 (10^8 times, in milliseconds)

| language\type | Simple loop | Object Creation | Dynamic dispatch |
| ------------- | ----------- | --------------- | ---------------- |
| c++           | 97          | 98              | 160              |
| c#            | 1302        | 720             | 2901             |
| java          | 415         | 3395            | 1638             |
| go            | 170         | 165             |  -               |
| python3       | 2399        | 8758            |  -               |
| javascript    | 73          | 728             |  -               |
| php           | 637         | 2685            |  -               |
| swift         | 23089       | 26410           | 23180            |
| kotlin        | 41          | 47              | 43               |
| rust          | 287         | 292             | 442              |
| ruby          | 2116        | 7348            |  -               |
| fortran       | 207         | 207             | 218              |
| delphi        | 225         | 3088            | 211              |
| matlab        | 59          | 273614          |  -               |
| visual basic  | 139         | 939             | 320              |
