import gleeunit
import gleeunit/should
import aoc2022/day4

pub fn main() {
  gleeunit.main()
}

pub fn day4part1_example_test() {
  sample
  |> day4.sum_fully_contained()
  |> should.equal(2)
}

pub fn day4part1_data_test() {
  data
  |> day4.sum_fully_contained()
  |> should.equal(518)
}

pub fn day4part2_example_test() {
  sample
  |> day4.sum_any_overlap()
  |> should.equal(4)
}

pub fn day4part2_data_test() {
  data
  |> day4.sum_any_overlap()
  |> should.equal(909)
}

const sample = "2-4,6-8
2-3,4-5
5-7,7-9
2-8,3-7
6-6,4-6
2-6,4-8"

const data = "24-66,23-25
3-3,2-80
14-80,13-20
39-78,40-40
36-90,89-90
51-94,50-50
10-72,10-98
54-81,2-90
27-84,27-85
21-57,21-57
6-55,4-5
80-87,87-90
23-71,22-90
24-37,2-36
79-91,78-91
75-92,91-93
23-80,23-81
67-94,68-94
79-85,79-81
40-88,39-89
15-75,14-76
18-77,34-78
2-99,4-93
1-74,15-75
39-82,39-81
19-91,18-84
56-87,57-86
15-72,14-71
37-88,36-87
21-24,18-23
34-83,34-34
20-95,94-95
27-75,26-80
91-93,27-92
55-66,56-62
29-31,30-89
85-95,89-99
1-2,1-3
63-64,13-64
66-95,30-86
2-73,3-74
25-99,6-25
10-28,28-87
10-42,9-43
12-46,46-75
91-97,91-96
46-59,46-59
34-35,5-34
27-93,93-93
4-12,21-97
7-65,5-8
42-63,2-62
70-76,64-75
1-95,1-94
12-30,13-30
3-99,2-99
46-60,58-60
1-94,93-98
7-98,8-98
7-51,8-81
39-84,40-85
43-84,8-84
10-93,11-93
3-63,2-47
18-87,18-18
77-96,95-97
2-99,1-99
3-45,2-45
19-99,8-97
7-98,8-60
3-94,2-2
51-71,21-51
28-98,10-27
13-96,13-97
4-99,1-1
3-93,93-97
13-13,14-98
16-38,17-17
16-46,16-46
7-63,4-8
18-85,13-19
17-21,18-21
7-74,8-73
5-77,4-6
11-18,1-18
3-25,4-4
2-96,2-93
19-38,18-39
11-45,10-10
20-20,21-83
2-97,97-97
81-81,2-80
5-82,58-59
47-51,4-47
89-93,40-89
19-29,18-84
18-36,16-18
41-55,47-47
6-34,7-33
5-82,6-81
6-19,18-27
42-55,43-55
1-99,2-71
45-94,45-45
2-88,1-88
15-35,14-36
17-36,10-25
20-96,84-98
81-87,81-81
85-87,85-86
34-74,73-74
17-97,16-98
11-50,12-51
2-99,3-3
79-90,79-91
89-99,1-89
87-93,72-93
31-52,30-96
75-84,45-83
81-96,81-96
84-85,24-85
36-60,35-36
11-91,10-91
18-19,19-62
50-52,50-54
59-86,52-86
61-65,70-70
28-96,58-99
10-46,46-46
10-10,10-25
17-72,18-18
58-77,34-59
3-5,5-34
14-14,14-83
5-88,6-14
2-70,3-69
42-79,48-80
26-48,26-27
15-84,14-85
82-83,33-76
14-34,5-33
27-76,26-26
3-88,2-2
19-58,20-57
26-79,25-89
94-95,13-94
35-77,35-78
63-99,69-99
18-26,27-99
1-76,76-77
37-44,22-44
3-64,3-89
54-86,55-85
92-92,92-95
26-38,26-38
62-81,19-80
20-63,8-65
46-79,46-80
35-71,70-72
12-81,11-11
34-69,18-77
1-84,2-2
19-24,18-21
8-90,89-91
12-64,64-65
18-97,17-19
93-93,5-93
34-46,34-46
14-82,13-81
32-46,46-47
1-8,9-97
3-4,3-54
85-87,69-86
12-90,12-91
7-11,10-33
19-34,18-24
36-63,26-62
4-98,6-98
80-96,80-81
10-11,10-34
21-69,8-70
6-80,5-81
14-92,3-15
23-40,16-39
8-66,20-66
12-79,12-13
14-61,15-52
10-29,10-29
36-37,36-89
46-48,18-47
24-98,23-25
81-96,13-81
6-88,1-89
58-76,57-75
56-76,57-75
1-84,1-1
1-20,2-20
38-98,38-99
33-73,32-73
41-95,40-94
29-44,28-44
68-86,67-69
1-66,1-2
12-28,13-90
28-74,19-29
48-51,51-65
11-64,11-64
74-74,66-74
2-5,5-87
69-69,4-69
21-51,51-56
51-83,13-83
12-99,5-6
3-91,4-90
3-55,8-36
12-44,36-45
6-86,5-87
9-18,8-16
13-63,14-57
3-96,4-95
41-87,42-86
44-62,22-48
17-62,46-63
62-63,63-64
31-59,30-60
10-78,9-79
41-97,20-96
18-92,18-92
30-30,30-90
6-80,4-79
46-98,13-36
7-70,7-7
35-46,25-46
77-77,76-76
8-10,9-78
4-98,5-36
37-96,41-96
35-68,34-88
22-69,40-70
13-90,12-89
11-39,12-56
51-82,50-81
47-96,46-73
95-96,2-91
66-95,56-77
84-84,83-85
7-58,8-87
6-83,5-83
23-49,14-48
4-97,5-96
17-18,17-46
15-76,93-99
63-64,63-67
45-46,29-45
29-84,13-84
95-95,95-98
19-91,11-37
14-19,19-94
24-93,75-91
52-79,78-80
3-94,4-93
2-99,2-3
40-96,38-95
23-91,23-91
88-89,66-88
14-92,91-92
14-94,6-94
21-57,36-84
15-97,99-99
2-98,1-99
38-80,38-80
12-93,29-98
19-34,20-42
11-70,10-71
44-95,45-95
53-69,54-68
33-68,10-34
33-35,33-34
3-5,4-66
57-82,56-56
36-54,36-53
14-15,10-15
24-51,38-52
16-76,72-76
56-57,3-57
6-89,5-90
12-45,13-70
36-38,37-88
19-31,25-31
2-2,8-96
5-92,4-69
9-98,8-8
5-14,5-14
46-99,9-46
55-56,2-55
7-95,7-94
45-65,41-65
80-81,4-80
6-47,48-86
25-34,35-75
72-74,71-71
2-94,1-3
31-49,32-49
20-61,19-35
11-86,11-90
52-78,52-53
42-42,18-43
2-2,4-94
8-78,78-78
3-49,2-50
5-74,11-73
17-56,16-72
46-87,47-79
72-80,47-51
11-69,12-12
2-99,3-99
13-27,12-15
23-95,22-96
39-41,40-96
74-98,73-73
82-83,80-82
12-79,11-32
6-58,7-7
3-3,3-97
4-97,24-95
3-80,4-75
72-83,71-84
20-82,21-21
6-73,6-72
77-77,77-97
18-57,57-57
53-76,46-75
21-40,20-74
60-65,55-64
78-78,32-78
22-46,42-46
4-46,3-47
35-39,39-40
79-90,80-89
36-36,37-60
9-28,13-29
15-85,82-85
5-5,4-79
17-86,9-17
6-57,57-57
76-88,76-88
73-79,78-80
52-54,2-53
1-95,6-94
46-91,23-99
70-86,11-71
19-96,18-96
25-42,24-24
32-88,88-94
7-93,8-99
5-21,5-20
34-94,93-94
92-93,15-92
38-84,39-85
79-80,7-79
48-72,72-72
10-92,93-98
14-53,15-92
7-42,7-37
11-88,11-87
41-65,64-65
71-85,11-64
21-79,79-87
80-81,22-81
40-79,39-41
18-67,67-91
11-13,12-61
1-97,96-98
5-66,4-4
1-1,2-75
15-62,16-62
28-56,28-28
3-3,4-79
68-94,3-68
8-92,7-9
69-83,69-84
6-90,22-90
10-20,5-10
21-80,20-21
15-76,14-76
75-75,74-83
5-13,6-22
39-84,83-84
30-43,34-38
42-98,43-97
6-29,5-59
62-80,63-88
5-93,6-6
53-64,54-64
47-47,4-47
62-62,59-62
46-87,46-87
93-95,43-55
4-4,4-19
86-91,48-86
22-45,23-44
13-38,38-93
5-36,4-20
27-27,27-33
10-12,11-83
10-93,3-93
79-80,35-80
64-90,53-68
52-91,47-89
2-66,2-3
58-58,22-57
7-58,5-94
3-11,4-10
32-38,31-39
10-76,21-29
15-42,15-42
9-43,9-95
3-56,4-57
35-68,36-68
55-89,56-88
2-3,2-99
2-97,97-99
29-66,30-65
5-25,4-25
52-87,51-54
28-64,36-66
52-90,51-51
95-96,33-95
1-2,1-82
19-32,20-31
73-75,74-83
73-87,87-88
19-70,70-70
4-93,5-13
96-96,6-95
10-17,10-18
70-73,24-70
25-25,26-76
58-58,10-58
5-83,4-84
45-47,46-74
50-67,66-68
88-89,89-93
15-19,16-24
28-30,2-29
17-19,18-77
21-94,21-83
23-81,81-82
2-91,3-66
75-94,76-94
2-4,3-99
19-82,82-83
3-85,3-3
62-74,45-61
33-33,33-47
66-72,66-72
62-97,61-61
41-74,40-75
7-89,4-7
56-67,55-57
6-25,25-89
11-11,10-14
89-98,16-97
18-76,18-76
23-96,61-97
6-15,16-68
3-99,2-99
22-61,9-22
45-86,44-44
30-46,45-46
55-86,1-97
21-95,20-95
20-47,48-82
15-47,16-80
39-51,39-52
9-15,9-90
1-86,85-86
38-38,38-79
41-41,18-42
7-98,87-98
9-87,60-88
30-87,87-88
10-58,1-6
5-58,5-58
38-76,37-76
9-82,81-82
2-10,5-43
50-51,2-51
35-93,34-93
18-75,17-75
14-59,14-59
27-27,28-88
61-62,46-61
38-74,38-51
49-87,50-50
39-39,38-95
48-98,2-97
27-29,28-92
23-55,22-54
30-31,29-31
11-59,10-58
15-84,59-85
22-57,24-56
17-42,6-42
5-93,92-94
76-89,76-90
1-84,84-85
36-77,13-78
31-78,31-57
23-89,22-90
36-37,36-48
41-84,34-83
6-36,5-6
74-91,45-92
62-99,62-65
3-30,4-98
9-83,9-83
11-93,13-94
7-35,6-6
36-38,37-67
84-93,1-92
28-57,27-56
94-97,95-98
41-74,40-75
7-91,12-88
42-97,43-96
7-13,14-85
58-96,4-98
15-95,47-95
87-90,5-87
35-71,36-71
27-29,29-29
21-28,28-46
2-13,13-99
38-52,39-51
12-79,61-80
59-81,19-59
87-88,15-87
10-53,8-10
4-10,2-9
13-93,69-94
42-61,82-83
9-97,10-10
9-21,8-20
42-89,89-90
4-86,79-87
11-58,11-47
83-84,14-84
5-75,32-75
45-97,97-97
39-39,38-48
44-44,43-58
50-69,49-68
61-87,55-86
4-95,94-95
47-48,47-48
40-67,39-39
15-68,15-69
4-84,4-84
98-99,1-99
3-8,8-98
2-97,3-97
20-46,46-90
25-64,43-83
26-47,26-47
27-28,1-28
50-52,51-64
76-87,91-99
39-60,38-40
3-99,4-99
67-82,10-67
45-76,46-59
16-79,15-78
11-63,19-62
9-54,10-55
4-95,96-96
16-87,15-88
9-30,29-88
68-69,10-68
51-54,52-74
2-4,4-59
1-96,97-99
17-90,54-91
25-27,26-88
95-97,57-95
25-33,25-25
33-64,33-47
32-93,33-93
3-37,37-38
60-80,54-79
38-39,21-39
9-94,94-96
27-80,27-81
1-74,22-75
11-89,11-89
7-81,82-98
5-56,56-75
3-3,3-90
18-62,18-19
28-99,29-98
2-2,2-75
31-86,12-65
71-72,20-71
73-73,56-72
94-98,7-88
91-91,92-92
3-98,4-97
2-71,70-71
5-63,63-63
39-81,21-81
44-44,44-78
64-88,15-87
95-95,92-96
17-32,32-94
11-81,12-82
86-97,85-98
92-99,8-98
22-70,23-23
11-97,10-11
72-73,61-72
25-58,24-98
52-65,53-55
66-67,1-66
8-65,53-65
83-98,82-89
33-79,33-79
65-79,65-92
7-34,8-53
27-43,34-73
28-77,28-77
59-96,27-98
7-55,19-66
2-78,3-79
13-13,12-81
2-92,91-92
2-44,1-43
32-33,32-99
92-93,20-93
97-98,8-98
15-60,16-60
3-98,2-99
37-37,13-37
9-82,82-97
23-86,22-67
18-35,9-27
57-73,57-58
36-93,36-37
15-15,15-77
52-82,51-73
13-22,14-96
9-67,8-68
6-76,7-83
1-4,1-4
1-95,1-90
25-29,29-80
77-91,39-90
7-97,8-96
45-77,46-88
20-59,59-82
64-64,63-96
31-83,32-32
11-96,96-97
59-77,59-59
47-75,47-65
8-95,2-8
19-81,19-81
35-36,36-37
83-84,83-90
4-97,2-49
39-96,38-97
64-99,6-86
29-95,29-96
27-84,7-27
4-63,6-62
60-66,61-66
58-91,90-91
44-65,62-69
13-24,23-61
45-88,88-93
62-95,95-96
1-86,1-85
33-33,12-33
36-67,37-66
11-49,48-50
4-76,1-4
5-84,4-53
22-65,22-65
12-22,13-64
16-16,16-33
10-97,44-98
47-52,48-64
58-95,59-99
18-71,37-72
7-79,8-79
2-61,3-98
67-84,83-85
56-86,82-85
22-97,28-98
42-57,41-57
23-26,11-25
45-82,5-81
41-43,42-79
3-93,93-93
60-87,59-84
93-99,44-93
47-95,74-95
51-52,40-52
11-32,12-84
4-89,1-4
3-93,93-94
97-97,17-96
12-67,11-11
25-80,39-60
98-99,3-98
61-62,60-62
24-35,34-35
10-86,11-87
64-66,4-90
1-1,2-89
15-75,46-76
71-72,17-72
7-9,8-91
18-36,18-70
3-5,4-16
8-88,7-88
69-85,69-69
17-46,18-47
8-37,37-50
2-38,1-39
99-99,9-99
30-78,31-89
51-64,52-63
11-99,1-99
81-82,23-81
54-62,53-53
80-91,24-80
96-98,75-97
78-78,46-78
7-88,7-89
1-22,1-22
5-39,5-38
95-95,13-96
19-49,17-85
7-96,6-96
29-93,49-75
42-76,43-75
62-62,61-70
36-42,37-46
5-84,91-92
26-95,25-27
36-81,63-82
17-51,18-50
34-74,34-75
6-53,53-86
28-28,28-36
6-6,6-77
42-70,41-70
29-92,92-93
10-50,9-51
90-93,80-90
3-84,28-97
3-3,2-74
9-92,8-10
58-70,58-70
1-61,2-16
29-85,29-69
61-96,31-96
30-81,12-30
25-72,24-26
60-96,60-96
2-29,2-28
27-57,26-57
5-94,2-99
5-15,4-19
2-46,3-29
39-60,38-99
1-2,1-83
17-86,18-87
68-95,69-94
31-52,8-53
80-89,81-88
17-57,16-56
7-28,6-24
35-63,63-63
42-89,88-89
97-98,71-98
79-82,6-68
8-34,34-34
66-71,38-70
15-65,66-71
22-82,21-83
9-81,10-22
19-85,18-86
19-19,20-70
6-76,45-76
1-37,36-55
49-98,98-98
9-88,4-10
74-83,17-82
30-63,22-62
8-89,4-8
3-87,2-16
91-91,49-91
2-53,53-97
9-14,13-71
33-98,34-99
31-58,27-59
22-34,34-34
3-5,4-97
36-93,25-31
50-62,35-61
43-84,43-83
60-81,19-60
2-90,2-89
1-3,5-44
5-99,8-96
7-7,8-8
27-39,28-80
6-89,4-5
44-66,11-67
15-88,7-99
5-44,5-6
70-95,71-94
2-2,2-81
99-99,4-99
98-99,22-98
69-78,65-77
46-51,45-51
34-67,66-68
36-74,35-75
38-63,39-62
22-72,39-73
15-52,16-52
19-98,19-97
4-99,3-3
2-2,3-96
3-85,4-4
19-91,10-20
4-20,20-78
2-56,6-85
6-54,5-54
4-65,5-65
13-74,15-74
78-92,79-94
68-77,62-76
5-75,5-75
68-85,69-88
62-94,21-94
6-94,5-95
1-3,3-61
37-68,37-69
4-4,5-65
96-97,3-97
8-96,7-7
69-96,8-91
87-88,8-88
17-32,74-91
13-93,13-93
44-46,21-45
37-49,49-50
9-53,53-90
43-51,49-49
5-91,6-92
12-77,12-13
29-94,30-32
77-78,53-77
10-62,26-83
44-46,45-60
79-90,79-97
5-89,89-89
3-64,2-65
58-96,73-96
49-97,16-96
27-49,26-50
25-51,51-71
45-48,46-51
80-81,3-80
26-30,25-25
94-95,50-94
65-95,63-94
11-95,3-44
11-97,10-10
97-98,2-97
46-50,53-66
7-23,22-97
55-85,55-85
85-92,11-85
98-99,5-99
60-61,4-61
30-31,8-30
53-54,38-53
2-3,4-5
3-99,2-99
19-85,21-66
36-53,36-50
70-71,24-70
19-85,20-85
1-84,15-86
30-57,30-58
78-81,77-82
19-26,26-27
52-73,51-72
73-89,69-88
2-5,4-79
9-35,10-34
4-60,3-61
5-5,4-69
98-99,16-98
57-85,85-86
1-81,2-80
44-73,44-73
90-97,68-90
75-88,1-75
95-98,12-95
40-66,39-67
3-99,4-26
52-76,93-99
16-30,30-66
68-69,68-69
19-68,9-19
37-90,37-41
1-94,94-94
2-2,1-83
12-93,2-12
27-96,17-28
44-46,36-67
72-90,73-89
20-29,21-21
7-59,59-60
69-74,66-74
27-82,69-83
12-78,12-78
13-64,63-70
41-60,40-40
32-96,59-97
1-98,1-97
9-64,8-19
4-4,3-97
8-96,8-9
5-5,4-68
44-68,45-45
42-67,41-71
49-50,18-49
1-95,83-91
7-8,7-82
31-76,32-75
45-63,54-64
92-93,84-92
94-96,95-97
21-61,20-62
13-67,5-42
15-58,16-84
47-55,29-46
56-65,55-57
11-53,12-52
1-48,48-57
20-75,15-75
1-95,21-95
2-39,3-90
4-54,24-55
8-42,41-46
9-97,9-98
45-83,39-82
23-72,22-71
68-68,62-68
2-96,1-1
15-90,16-91
25-27,26-93
34-36,30-35
2-65,3-64
2-54,53-54
39-84,38-84
9-96,10-96
79-80,70-76
22-47,31-47
13-87,12-87
87-93,87-94
24-44,25-94
36-93,6-97
8-94,28-41
50-61,56-62
32-74,74-75
3-78,13-78
99-99,23-87
25-83,25-83
15-15,14-20
62-63,32-63
36-49,35-57
48-93,14-49
52-71,51-53
1-2,1-11
22-99,98-99
28-29,28-49
7-8,7-81
27-64,64-93
13-59,14-60
12-88,10-11
13-79,14-50
2-3,5-87
18-77,18-76"
