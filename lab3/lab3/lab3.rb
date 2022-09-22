
A = true
B = false
C = false

X = 22
Y = 30
Z = 50

#3_1

printf("a) !(A  B)  (A  !B): #{!(A || B) && (A && !B)}\n")
printf("b) (Z != Y) ≤ (6 ≥ Y)  A  B  C  X ≥ 1.5: #{(Z != Y).object_id <= (6 >= Y).object_id && A || B && C && X >= 1.5}\n")
printf("c) (8 – X * 2 ≤ Z)  (X^2 <= Y^2))  (Z ≥ 15): #{(8 - X * 2 <= Z) && (X ** 2 <= Y ** 2) || (Z >= 15)}\n")
printf("d) X > 0  Y < 0  Z ≥ (X*Y + (–Y/X))+(–Z): #{X > 0 && Y < 0 || Z >= (X * Y + (-Y / X)) + (-Z)}\n")
printf("e) !(A  B  !(C  (!A  B))): #{!(A || B && !(C || (!A || B)))}\n")
printf("f) X^2 + Y^2 ≥ 1  X ≥ 0  Y ≥ 0: #{X ** 2 + Y ** 2 >= 1 && X >= 0 && Y >= 0}\n")
printf("g) (A  (C  B <> B  A)  C)  B: #{(A && (C && B != B || A) || C) && B}\n")

#3_2

n = 1
P = true
printf("\n (exp(n*ln(2)<sqr(n)) или не (P или не P): #{!(Math.exp(n*Math.log(2)) < Math.sqrt(n) || !(P || !P))}")