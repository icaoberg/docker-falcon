# docker-falcon

![Big Data](https://img.shields.io/badge/big%20data-true-blue.svg)
[![GitHub issues](https://img.shields.io/github/issues/icaoberg/docker-falcon.svg)](https://github.com/icaoberg/docker-falcon/issues)
[![GitHub forks](https://img.shields.io/github/forks/icaoberg/docker-falcon.svg)](https://github.com/icaoberg/docker-falcon/network)
[![GitHub stars](https://img.shields.io/github/stars/icaoberg/docker-falcon.svg)](https://github.com/icaoberg/docker-falcon/stargazers)
[![GitHub license](https://img.shields.io/badge/license-GPLv3-blue.svg)](https://raw.githubusercontent.com/icaoberg/docker-falcon/master/LICENSE)

FALCON for Python over Docker. halcon is a python implementation of the Feedback Adaptive Loop for Content-Based Retrieval (FALCON) algorithm as described in

* Leejay Wu, Christos Faloutsos, Katia P. Sycara, and Terry R. Payne. 2000. [FALCON: Feedback Adaptive Loop for Content-Based Retrieval](http://www.cs.cmu.edu/~christos/PUBLICATIONS/vldb2k-falcon.pdf). In Proceedings of the 26th International Conference on Very Large Data Bases (VLDB '00), Amr El Abbadi, Michael L. Brodie, Sharma Chakravarthy, Umeshwar Dayal, Nabil Kamel, Gunter Schlageter, and Kyu-Young Whang (Eds.). Morgan Kaufmann Publishers Inc., San Francisco, CA, USA, 297-306.

FALCON is, as described in the article abstract, "a novel method that is designed to handle disjunctive queries within metric spaces. The user provides weights for positive examples; our system 'learns' the implied concept and returns similar objects."

## Examples
These examples are include with HALCON for Python.

### iris.py

```
➜ docker run -i -t icaoberg/falcon /bin/bash -c "python falcon/examples/iris.py"

This example uses the iris dataset from

Machine Learning Repository
Center for Machine Learning and Intelligent Systems
http://archive.ics.uci.edu/ml/datasets/Iris

I will use the first feature vector as my query image
[[0, 1, array([ 5.1,  3.5,  1.4,  0.2,  1. ])]]

And I will use the rest of the feature vectors to find the most similar images

Now notice that feature vector with iid1 has the same values iid0
[1, 1, array([ 5.1,  3.5,  1.4,  0.2,  1. ])]

So I expect that if FALCON is working correctly, then iid1 should be the top hit!
Elapsed time: 0.0696499347687 seconds

  Ranking    Identifier  Class                  Score
---------  ------------  ---------------  -----------
        0             1  Iris-setosa      0
        1            28  Iris-setosa      1.27788e-43
        2             5  Iris-setosa      2.40121e-40
        3            29  Iris-setosa      2.40121e-40
        4            40  Iris-setosa      5.83391e-40
        5             8  Iris-setosa      7.04398e-39
        6            18  Iris-setosa      1.1259e-35
        7            41  Iris-setosa      1.51906e-34
        8            50  Iris-versicolor  6.99696e-34
        9            37  Iris-setosa      1.09221e-32
       10            12  Iris-setosa      1.22203e-32
       11            49  Iris-setosa      2.05046e-32
       12            11  Iris-setosa      4.25801e-31
       13            21  Iris-setosa      6.55842e-31
       14            47  Iris-setosa      5.54098e-29
       15            36  Iris-setosa      7.93943e-29
       16             7  Iris-setosa      2.16985e-28
       17            20  Iris-setosa      4.23544e-28
       18            25  Iris-setosa      1.67453e-27
       19             3  Iris-setosa      2.40919e-27

Do the top results in the list above belong to the same class as the query image?
If so, then SCORE! It seems to work.
```

### wine.py

```
➜ docker run -i -t icaoberg/falcon /bin/bash -c "python falcon/examples/wine.py"

This example uses the wine dataset from

Machine Learning Repository
Center for Machine Learning and Intelligent Systems
http://archive.ics.uci.edu/ml/datasets/Wine

I will use the first three feature vectors as my query wine set

And I will use the rest of the feature vectors to find the most similar images
Elapsed time: 0.364924907684 seconds

  Ranking  Identifier          Score
---------  ------------  -----------
        0  wine1         0
        1  wine2         0
        2  wine3         0
        3  wine21        2.77663e-05
        4  wine30        0.000629879
        5  wine23        0.00252617
        6  wine49        0.00318536
        7  wine57        0.00456123
        8  wine36        0.0152067
        9  wine39        0.0197516
```
