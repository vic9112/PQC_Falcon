if you want to run simulation
```
cd vivado
./run_vivado_fsic_sim
```
會產生updma_output_fir.log which is the output data from fir y

if you want to run validation
```
cd vivado
./run_vivado_fsic
```
會在../vivado/jupyter_notebook中產生對應的bistream檔案，同時你可以開啟vivado來觀看block design(這部分已經修改好tcl，會自動連上userdma)

而上版所需要的檔案都放在../jupyter_notebook，可以直接拿來使用。
