compile:
	g++ -o dc_fix/exec dc_fix/src.cpp

run_dc_fix:
	g++ -o dc_fix/exec dc_fix/src.cpp
	./dc_fix/exec

run_dc_dev:
	g++ -o dc_dev/exec dc_dev/src.cpp
	rm -f dc_dev/bin/*
	./dc_dev/exec

clean:
	rm -f dc_fix/exec
	rm -f dc_dev/exec

run_py:
	python3 read_test_c.py
	python3 read_test_D.py
	python3 read_test_delT.py
	python3 read_test_I.py
	python3 read_test_sig.py
	python3 read_test_T.py
	python3 read_test_V.py
	python3 read_test_W.py
	python3 read_test_yVa.py

run_fft:
	g++ -o fft/exec fft/I_field_FFT_00.cpp
	rm -f fft/bin/*
	./fft/exec
	python3 read_result_c.py
	python3 read_result_V.py
	python3 read_result_S.py
