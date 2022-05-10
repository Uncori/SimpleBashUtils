#b-----b-------b
Ny=1
N=1
Nfail=0
Nok=0
for file in test_file/b_flag_tests/*; do
    cat -b $file > test_cat;
    ./s21_cat -b $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "b_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "b_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "b_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
for file in test_file/b_flag_tests/*; do
    cat -be $file > test_cat;
    ./s21_cat -be $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "be_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "be_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "be_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
for file in test_file/b_flag_tests/*; do
    cat -bn $file > test_cat;
    ./s21_cat -bn $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "bn_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "bn_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "bn_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
for file in test_file/b_flag_tests/*; do
    cat -bs $file > test_cat;
    ./s21_cat -bs $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "bs_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "bs_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "bs_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0
for file in test_file/b_flag_tests/*; do
    cat -bt $file > test_cat;
    ./s21_cat -bt $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "bt_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "bt_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "bt_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

#e-----e-------e


for file in test_file/e_flag_tests/*; do
    cat -e $file > test_cat;
    ./s21_cat -e $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "e_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "e_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "e_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/e_flag_tests/*; do
    cat -eb $file > test_cat;
    ./s21_cat -eb $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "eb_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "eb_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "eb_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/e_flag_tests/*; do
    cat -en $file > test_cat;
    ./s21_cat -en $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "en_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "en_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "en_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/e_flag_tests/*; do
    cat -es $file > test_cat;
    ./s21_cat -es $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "es_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "es_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "es_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/e_flag_tests/*; do
    cat -et $file > test_cat;
    ./s21_cat -et $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "et_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "et_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "et_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

#n-----n-------n

for file in test_file/n_flag_tests/*; do
    cat -n $file > test_cat;
    ./s21_cat -n $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "n_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "n_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "n_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/n_flag_tests/*; do
    cat -nb $file > test_cat;
    ./s21_cat -nb $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "nb_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "nb_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "nb_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/n_flag_tests/*; do
    cat -ne $file > test_cat;
    ./s21_cat -ne $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "ne_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "ne_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "ne_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/n_flag_tests/*; do
    cat -ns $file > test_cat;
    ./s21_cat -ns $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "ns_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "ns_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "ns_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/n_flag_tests/*; do
    cat -nt $file > test_cat;
    ./s21_cat -nt $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "nt_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "nt_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "nt_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

#s-----s-------s

for file in test_file/s_flag_tests/*; do
    cat -s $file > test_cat;
    ./s21_cat -s $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "s_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "s_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "s_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/s_flag_tests/*; do
    cat -sb $file > test_cat;
    ./s21_cat -sb $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "sb_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "sb_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "sb_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/s_flag_tests/*; do
    cat -se $file > test_cat;
    ./s21_cat -se $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "se_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "se_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "se_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/s_flag_tests/*; do
    cat -sn $file > test_cat;
    ./s21_cat -sn $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "sn_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "sn_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "sn_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/s_flag_tests/*; do
    cat -st $file > test_cat;
    ./s21_cat -st $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "st_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "st_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "st_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

#t-----t-------t

for file in test_file/t_flag_tests/*; do
    cat -t $file > test_cat;
    ./s21_cat -t $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "t_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "t_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "t_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/t_flag_tests/*; do
    cat -tb $file > test_cat;
    ./s21_cat -tb $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "tb_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "tb_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "tb_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/t_flag_tests/*; do
    cat -te $file > test_cat;
    ./s21_cat -te $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "te_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "te_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "te_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/t_flag_tests/*; do
    cat -tn $file > test_cat;
    ./s21_cat -tn $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "tn_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "tn_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "tn_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/t_flag_tests/*; do
    cat -ts $file > test_cat;
    ./s21_cat -ts $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "ts_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "ts_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "ts_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0



for file in test_file/all_flag_tests/*; do
    cat -benst $file > test_cat;
    ./s21_cat -benst $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "-benst_flag_tests [$N] OK"
        ((Nok++))
    else
        echo "-benst_flag_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "-benst_flag_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/all_flag_tests/*; do
    cat $file > test_cat;
    ./s21_cat $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "simple_tests [$N] OK"
        ((Nok++))
    else
        echo "simple_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    ((Ny++))
    rm test_cat test_S21_cat;
done
echo "simple_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

for file in test_file/binary_files_tests/*; do
    cat $file > test_cat;
    ./s21_cat $file > test_S21_cat;
    cmp test_cat test_S21_cat;
    if [ $? -eq 0 ]; then
        echo "binary_files_tests [$N] OK"
        ((Nok++))
    else
        echo "binary_files_tests [$N] FAIL WITH FILE $file"
        ((Nfail++))
    fi
    ((N++))
    rm test_cat test_S21_cat;
done
echo "binary_files_tests FAIL = [$Nfail] OK = [$Nok]"
N=1
Nfail=0
Nok=0

echo "ALL TESTS = [$Ny]"