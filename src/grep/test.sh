Ny=1
N=1
Nfail=0
Nok=0
for file in test_file/full.txt; do
    grep My $file > test_grep;
    ./s21_grep My $file > test_S21_grep;
    cmp test_grep test_S21_grep;
    if [ $? -eq 0 ]; then
        echo "test [$N] OK"
        ((Nok++))
    else
        echo "test [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_grep test_S21_grep;
done
echo "tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
for file in test_file/full.txt; do
    grep -emy $file > test_grep;
    ./s21_grep -emy $file > test_S21_grep;
    cmp test_grep test_S21_grep;
    if [ $? -eq 0 ]; then
        echo "test [$N] OK"
        ((Nok++))
    else
        echo "test [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_grep test_S21_grep;
done
echo "tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
for file in test_file/full.txt; do
    grep -e my $file > test_grep;
    ./s21_grep -emy $file > test_S21_grep;
    cmp test_grep test_S21_grep;
    if [ $? -eq 0 ]; then
        echo "test [$N] OK"
        ((Nok++))
    else
        echo "test [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_grep test_S21_grep;
done
echo "tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
for file in test_file/full.txt; do
    grep -f test_file/template.txt $file > test_grep;
    ./s21_grep -f test_file/template.txt $file > test_S21_grep;
    cmp test_grep test_S21_grep;
    if [ $? -eq 0 ]; then
        echo "test [$N] OK"
        ((Nok++))
    else
        echo "test [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_grep test_S21_grep;
done
echo "tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
for file in test_file/full.txt; do
    grep -ftest_file/template.txt $file > test_grep;
    ./s21_grep -ftest_file/template.txt $file > test_S21_grep;
    cmp test_grep test_S21_grep;
    if [ $? -eq 0 ]; then
        echo "test [$N] OK"
        ((Nok++))
    else
        echo "test [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_grep test_S21_grep;
done
echo "tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
for file in test_file/full.txt; do
    grep -i you $file > test_grep;
    ./s21_grep -i you $file > test_S21_grep;
    cmp test_grep test_S21_grep;
    if [ $? -eq 0 ]; then
        echo "test [$N] OK"
        ((Nok++))
    else
        echo "test [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_grep test_S21_grep;
done
echo "tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
for file in test_file/full.txt; do
    grep -v you $file > test_grep;
    ./s21_grep -v you $file > test_S21_grep;
    cmp test_grep test_S21_grep;
    if [ $? -eq 0 ]; then
        echo "test [$N] OK"
        ((Nok++))
    else
        echo "test [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_grep test_S21_grep;
done
echo "tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
for file in test_file/full.txt; do
    grep -c you $file > test_grep;
    ./s21_grep -c you $file > test_S21_grep;
    cmp test_grep test_S21_grep;
    if [ $? -eq 0 ]; then
        echo "test [$N] OK"
        ((Nok++))
    else
        echo "test [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_grep test_S21_grep;
done
echo "tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
for file in test_file/full.txt; do
    grep -l you $file > test_grep;
    ./s21_grep -l you $file > test_S21_grep;
    cmp test_grep test_S21_grep;
    if [ $? -eq 0 ]; then
        echo "test [$N] OK"
        ((Nok++))
    else
        echo "test [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_grep test_S21_grep;
done
echo "tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
for file in test_file/full.txt; do
    grep -n you $file > test_grep;
    ./s21_grep -n you $file > test_S21_grep;
    cmp test_grep test_S21_grep;
    if [ $? -eq 0 ]; then
        echo "test [$N] OK"
        ((Nok++))
    else
        echo "test [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_grep test_S21_grep;
done
echo "tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
for file in test_file/full.txt; do
    grep -h you $file > test_grep;
    ./s21_grep -h you $file > test_S21_grep;
    cmp test_grep test_S21_grep;
    if [ $? -eq 0 ]; then
        echo "test [$N] OK"
        ((Nok++))
    else
        echo "test [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_grep test_S21_grep;
done
echo "tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
for file in test_file/full.txt; do
    grep -s qwert $file > test_grep;
    ./s21_grep -s qwert $file > test_S21_grep;
    cmp test_grep test_S21_grep;
    if [ $? -eq 0 ]; then
        echo "test [$N] OK"
        ((Nok++))
    else
        echo "test [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_grep test_S21_grep;
done
echo "tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
for file in s21_grep.h; do
    grep -e void -e char -e int -e include -cv s21_grep.h s21_grep.h s21_grep.h $file > test_grep;
    ./s21_grep -e void -e char -e int -e include -cv s21_grep.h s21_grep.h s21_grep.h $file > test_S21_grep;
    cmp test_grep test_S21_grep;
    if [ $? -eq 0 ]; then
        echo "test [$N] OK"
        ((Nok++))
    else
        echo "test [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_grep test_S21_grep;
done
echo "tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
