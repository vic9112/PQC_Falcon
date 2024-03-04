# PQC Study - Falcon

**Algorithm Desciption**

FALCON is an instantiation of the GPV framework for constructing a hash-and-sign lattice-based signature scheme, for which the authors chose NTRU lattices and devised a practical instantiation of the fast Fourier trapdoor sampler.

There are three top algorithm modules:

#### key generation

分析: keygen.c 中的keygen函數。


##### 函數定義和參數
- **函數定義**：`void Zf(keygen)()`是一個金鑰產生函數，其中`Zf`可能是一個巨集或範本參數，用於處理不同的組態或實例。
- **參數**：包含隨機數產生器`rng`、多項式`f`、`g`、`F`、`G`以及公鑰`h`的指針，以及用於中間計算的暫存` tmp`。

##### 演算法步驟
1. **產生多項式`f`和`g`**：使用高斯分佈產生多項式`f`和`g`。
2. **奇偶性檢查**：檢查`Res(f,phi)`和`Res(g,phi)`是否為奇數，如果為偶數則重新產生。
3. **範數(Norm)檢查**：檢查`(f,g)`的範數是否過大，如果是，則重新產生。
4. **正交化向量範數檢查**：檢查正交化向量`B~_{f,g}`的範數是否過大，如果是，則重新產生。
5. **模(mod)逆檢查**：檢查`f`是否在 `mod phi mod q` 下可逆，不可逆則重新生成。
6. **計算公鑰`h`**：計算`h = g/f mod phi mod q`。
7. **解NTRU方程式**：解方程式`fG - gF = q`來得到`F`和`G`，如果解失敗，則重新開始。

##### 實作細節
- **隨機數產生**：使用隨機數產生器`rng`來產生符合條件的`f`和`g`。
- **範數(Norm)計算**：透過計算`(g,-f)`的平方範數和正交化向量的範數來決定是否滿足條件。
- **公鑰計算**：使用FFT（快速傅立葉變換）和iFFT（逆快速傅立葉變換）等操作來計算公鑰`h`。
- **NTRU方程解**：透過特定的演算法解NTRU方程，取得`F`和`G`。

##### 循環和重試機制

程式碼中使用了一個無限循環`for(;;)`來重複嘗試產生滿足所有條件的`f`、`g`、`F`、`G`和`h`。 如果在任何步驟中偵測到不滿足條件的情況，將透過`continue`語句跳過目前迴圈的剩餘部分，重新開始產生過程。 一旦所有條件都被滿足，循環將透過`break`語句退出，完成密鑰對的產生。

##### call graph

![Call graph of keygen](https://github.com/vic9112/PQC_Falcon/assets/137171415/658774a4-0f0b-4a6c-8547-ddf854d15c2d)

其中`rt1`和`rt2`是指向浮點數（`fpr`類型，「floating point real」）陣列的指標。 這些指針在處理多項式`f`和`g`的快速傅立葉變換（FFT）和逆變換（iFFT）以及其他相關計算中起到了作用。




#### signature generation

分析sign.c中sign_tree函數和sign_dyn函數

1. `do_sign_tree` 使用一種稱為「擴展私鑰」的形式來產生簽名。 這個擴展私鑰已經包含了所有必要的預計算數據，以便於簽名過程。 這種方法的好處是簽名產生過程比較快，因為它利用了預先計算的結果。

2. `do_sign_dyn` 則是在簽名過程中即時計算所需的數據，而不是使用預先計算好的擴展私鑰。 這種方法需要在簽名時動態地計算私鑰的相關數據，因此相對於 `do_sign_tree` 來說，它的運算成本更高一些。

##### sign_dyn 參數:
- **參數**：
`Zf(sign_dyn)` 函式的參數如下：

1. `int16_t *sig`: 這是一個指向整數陣列的指標，用於存儲簽名的結果。這個陣列將包含簽名的 `s2` 部分。
2. `inner_shake256_context *rng`: 這是一個指向 SHAKE256 上下文的指標，用於隨機數生成。這個上下文應該在呼叫此函式之前已經被初始化，並用於生成簽名過程中所需的隨機數。
3. `const int8_t *restrict f, const int8_t *restrict g, const int8_t *restrict F, const int8_t *restrict G`: 這些參數是指向整數陣列的指標，分別代表私鑰的部分。這些陣列包含了密碼系統中使用的多項式的係數。
4. `const uint16_t *hm`: 這是一個指向整數陣列的指標，代表消息的哈希值，這個哈希值已經被轉換成一個短向量，準備用於簽名過程。
5. `unsigned logn`: 這是一個無符號整數，表示用於簽名操作的多項式的度的對數。這個值決定了多項式的大小，從而影響了簽名和驗證過程的效率和安全性。
6. `uint8_t *tmp`: 這是一個指向臨時存儲空間的指標，該空間在簽名過程中用於各種中間計算。這個臨時存儲空間需要足夠大，以容納簽名過程中所需的所有臨時數據。

##### sign_tree參數:
- **參數**：
`Zf(sign_tree)` 函式的參數如下：

1. `int16_t *sig`: 這是一個指向整數陣列的指標，用於存儲簽名的結果。這個陣列將包含簽名的 `s2` 部分。
2. `inner_shake256_context *rng`: 這是一個指向 SHAKE256 上下文的指標，用於隨機數生成。這個上下文應該在呼叫此函式之前已經被初始化，並用於生成簽名過程中所需的隨機數。
3. `const fpr *restrict expanded_key`: 指向預先擴展的私鑰資料的指標。 這個擴充的金鑰包含了進行簽章操作所需的所有預計算資訊。
4. `const uint16_t *hm`: 這是一個指向整數陣列的指標，代表消息的哈希值，這個哈希值已經被轉換成一個短向量，準備用於簽名過程。
5. `unsigned logn`: 這是一個無符號整數，表示用於簽名操作的多項式的度的對數。這個值決定了多項式的大小，從而影響了簽名和驗證過程的效率和安全性。
6. `uint8_t *tmp`: 這是一個指向臨時存儲空間的指標，該空間在簽名過程中用於各種中間計算。這個臨時存儲空間需要足夠大，以容納簽名過程中所需的所有臨時數據。

##### Call graph

![Call graph of Sign](https://github.com/vic9112/PQC_Falcon/assets/137171415/2512810b-7acd-437a-8a6c-1ed5c64e15cc)

其中ffSampling使用了recursive, The funtion ffsampling shown in Algorithm 2 describes the fast Fourier sampling with its recursive structure.

![image](https://hackmd.io/_uploads/S17_hfmT6.png)



#### sign verification

分析vrfy.c


##### 主要函數

- `mq_NTT` 和 `mq_iNTT`：執行NTT和逆NTT轉換。
- `mq_montymul` 和 `mq_montysqr`：執行[Montgomery](https://en.wikipedia.org/wiki/Montgomery_modular_multiplication)乘法和平方。
- `mq_poly_tomonty`、`mq_poly_montymul_ntt` 和 `mq_poly_sub`：執行多項式相關的運算。
- `Zf(verify_raw)`：驗證Falcon簽名的原始函式。
- `Zf(compute_public)`：計算Falcon演算法的公鑰。
- `Zf(complete_private)`：完成Falcon私鑰的計算。
- `Zf(is_invertible)` 和 `Zf(verify_recover)`：檢查簽章的可逆性並嘗試從簽章中還原公鑰。
- `Zf(count_nttzero)`：統計在NTT表示中為零的係數數量。



##### call graph

![call graph of vrfy](https://github.com/vic9112/PQC_Falcon/assets/137171415/20ba90b5-7e32-4166-a6f2-d35dcef6775f)

Algorithm 3 shows the signature verification steps for FALCON.

![image](https://hackmd.io/_uploads/H1LvHEXTT.png)

