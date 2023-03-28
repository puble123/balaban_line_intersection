addpath("sort", "classbalaban", "calbalaban")
clc; clear all;
segments = randi(5,5,4);
[P, S, E] = mainBalaban(segments);
