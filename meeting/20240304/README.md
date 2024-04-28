# [Hackmd](https://hackmd.io/@vic9112/By69dSXa6)
# 事項: 分析 keygen、sign、vrfy   
# 分工表:
根據之前paper讀的內容大致分以下

Keygen(NTRU): 祐瑋、彥智

sign(ffsampling): Vic 、柏翰

vrfy(NTT) : 昇達、育碩

# 參考資料
## papers
[官網](https://falcon-sign.info/)

 [Hardware Architectures for Post-Quantum Digital Signature -- Deepraj Soni, Kanad Basu, Mohammed Nabeel, Najwa Aaraj, Marc -- 1st ed.](https://www.dropbox.com/scl/fi/3hgs19l5mj5jf3z8ximkh/HLS-PQC_Papers.zip?e=7&file_subpath=%2F%5B2021.eBook%5D+Hardware+Architectures+for+Post-Quantum+Digital+Signature+--+Deepraj+Soni%2C+Kanad+Basu%2C+Mohammed+Nabeel%2C+Najwa+Aaraj%2C+Marc+--+1st+ed.%2C+2021+--+Springer.pdf&rlkey=6pn3tw8mjvfzdpozcjhutrmwd&dl=0)

[Falcon Takes Off - A Hardware Implementation of the Falcon Signature Scheme](https://eprint.iacr.org/2023/1885.pdf)
## source code
[官網(reference code)](https://github.com/nthuyouwei/PQC/tree/main/falcon-round3/Extra/c)

[Hardware Architectures for Post-Quantum Digital Signature ](https://github.com/deepraj88/FALCON_Final)

[Falcon Takes Off](https://gitlab.ost.ch/imes/public/papers/FalconHLS/-/tree/master?ref_type=heads)

# 分析輔助工具
## Callgraph
這裡利用 reference code 中test_falcon.c中三個test function來跑call graph(記得先載kcachegrind，詳如[此](https://github.com/nthuyouwei/PQC/tree/main/Meeting/20240220))

```
cd PQC/Meeting/20240304/CallGraph
kcachegrind test_xxxxx.out.xxxxx  //對應的檔案
```

## Vitis_hls
我把 Falcon Takes Off  中的code_hls放進去vitis_hls，可以直接叫vitis_hls然後利用GUI介面來open project (選PQC/Meeting/20240304/vitis_hls/hls_ip這個資料夾open就可)

![image](https://github.com/nthuyouwei/PQC/assets/145022311/481864a7-032f-49db-b537-7c44e1b21533)

tb中有kengen、 sign、 vrfy可以跑csim.

跑csynthesis時記得改對應的top funtion.(top function 名稱要自行看論文研究一下，設置top function 方法如同soc lab1)
