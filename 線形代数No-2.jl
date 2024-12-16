### A Pluto.jl notebook ###
# v0.20.0

using Markdown
using InteractiveUtils

# ╔═╡ fc2ae896-494c-11ef-2aec-f94e1d8bc9e1
begin	
using PlutoUI
TableOfContents(title="目次")
end

# ╔═╡ adee8d2c-5f7b-4d2c-8390-ba690f2e6b4c
using LinearAlgebra

# ╔═╡ 36c92a82-9792-422a-9bfe-84529e384f5b
md"""

## 線形代数
## [戻り](./index.html)
"""

# ╔═╡ bd2c3487-0ca5-41cc-838a-6345d12488b7
md"""
### 行列の積
"""

# ╔═╡ 3a8eaa5b-5c31-43c3-88ac-6da224c610e7
A =[1 1
    1 1]

# ╔═╡ 4ec94318-08f1-448a-9566-05e3f137ddf0
B =[2  2
    3  3]

# ╔═╡ 4a07b54a-49a9-4be9-bb55-eff0f0eb5f75
A*B

# ╔═╡ 25093cce-a22d-4744-bb6e-9733cd9a9ab6
B*A

# ╔═╡ 8ee0ff60-6721-45fa-86e6-932b8b684857
md"""
### 行列とベクトルの積
"""

# ╔═╡ 835e2843-dd61-4efb-aeab-ea8fb388914f
c =[1
    2]

# ╔═╡ cb594065-eb39-41be-b49b-5e69cf4a0043
c

# ╔═╡ a6129309-4dd2-4ca9-9ac1-c0bd48c2d3fd
A*c

# ╔═╡ ade6b944-ea36-4b6e-97ca-85a1760d422e
c*A

# ╔═╡ cdb6bd9c-cce3-486c-8d33-5d8c88a5bc1c
md"""
### ベクトルの定義
"""

# ╔═╡ 32b8c828-bd10-461d-b2dd-aff628a0c6e4
c1 =[2
     1
     2]

# ╔═╡ 039c846e-0886-4513-97ca-e5ccf49102fc
c2 =[1
     2
     2]

# ╔═╡ 4dc9b6a6-44f8-414c-8855-1a72ec3522f1
md"""
### 転置行列　
"""

# ╔═╡ 991ea6b4-1ae8-4281-805c-5e5527e4a8c7
c1'

# ╔═╡ 0f319d60-cd52-499e-aab9-1356f2a107c0
transpose(c1)

# ╔═╡ 64f67a75-f7c6-46b1-8860-e309edfe2726
permutedims(c1)

# ╔═╡ 749b6816-ccbb-41eb-a3aa-788fcf3b1781
md"""
### ベクトルの内積
"""

# ╔═╡ 19d5d6a5-6213-4ee1-add5-4100bd86bd48
c1'*c2

# ╔═╡ 31c6f047-cad2-4a08-9111-d5017e136215
dot(c1,c2)

# ╔═╡ 57882e03-c887-4fd7-a1bc-addd9d5dd169
c1·c2   # ·　は　\cdot

# ╔═╡ bac11575-7d89-4167-8060-c38ac1a7d7f1
md"""
### ベクトルの外積
"""

# ╔═╡ 60e1cf49-8772-4532-8039-a19d91cd45e0
cross(c1,c2)

# ╔═╡ bd354862-d333-4817-9cde-87e01ae731ce
c1×c2   # × は \times

# ╔═╡ de0acbc2-5f7e-4a10-ab9b-2eaaa617dae6
md"""
### ベクトルの和，差，スカラー倍
"""

# ╔═╡ 146b49ec-f7ff-435f-884c-98df8a4faf6b
c1 + c2

# ╔═╡ d4a878d4-762f-4ae3-91ce-9d705d7ac80a
c2 + c1

# ╔═╡ fee7fc6a-d081-4b33-a14e-595d75528052
c1 - c2

# ╔═╡ a7153106-38a0-4888-80aa-569486db21ba
c2 - c1

# ╔═╡ 4d0930e2-2bff-4130-bd42-a200fec7dc70
2c1

# ╔═╡ a0d274d5-66f7-462a-b3cb-a818bae90520
-c1

# ╔═╡ 37249ad0-603f-4d1a-b184-477d0e8e679d
md"""
### ゼロベクトル
"""

# ╔═╡ 72d2870c-15c7-43c5-b3b4-ce0b731dc270
O = zeros(3)

# ╔═╡ 3fe176b3-eb04-47c1-befb-1b352681a1ee
let
O = zeros(2,2)
end

# ╔═╡ fefc61fc-5485-438e-b594-4ab3b8921942
A

# ╔═╡ e2b59cdf-0525-4768-bf38-aff04bdea05a
let
O = zeros(2,2)
A*O
end

# ╔═╡ 5eac1b77-ac9e-4ca6-9cec-7c3532fbe255
md"""
### ベクトルの大きさ
"""

# ╔═╡ ef02f28f-a44c-49b0-b00a-ac584c80e9b5
norm(c1)

# ╔═╡ b0ddedcd-992b-4482-a7a6-cf0ee43f996b
c1⋅c1 |> sqrt

# ╔═╡ 42d59814-a150-455a-8c2c-8aaf20d891e1
norm(c2)

# ╔═╡ 423e847d-9186-4c91-ac24-a26d39c1e1ed
md"""
### 単位ベクトルへの計算
"""

# ╔═╡ be9a828f-333c-425e-b07d-6d7ecfe9b501
c1/norm(c1)

# ╔═╡ fd0f656a-dd9a-426c-9a26-9e8756a1ebf3
c1/norm(c1)　|> norm

# ╔═╡ 446cc5d5-6df3-426f-a282-7360e9e1f404
md"""
### 単位行列 I
"""

# ╔═╡ 0c7d500d-6f1c-4efb-929c-bda380a398a3
Matrix(I,2,2)

# ╔═╡ b549a952-52cf-4785-98d8-dee84ba1564d
B

# ╔═╡ db14b723-51f7-41a3-a53f-efc6a95924cd
B*I

# ╔═╡ 6cd8bb07-f477-4583-814c-0026d6280cf9
I*B

# ╔═╡ b44c6ed8-480a-4e39-918d-0238fea24c2a
md"""
### 行列式
"""

# ╔═╡ 218715c1-e731-4d06-abe7-bd452e09af1e
det(A)

# ╔═╡ 3413e031-4904-4a57-870d-bf4056ef9375
md"""
### 固有値，固有ベクトル
"""

# ╔═╡ 493bf0e0-584c-4f69-aed6-e15e31b30b96
eigen(A)

# ╔═╡ bfdba196-ca4e-4aad-9e5f-3b3a9a5c0d9c
eigvals(A)

# ╔═╡ a70a191b-1694-4d11-b653-65a4ca43aa7b
eigvecs(A)

# ╔═╡ 97d2166e-d6ea-4633-acb3-2451cebef4dc
md"""
### 対角化
"""

# ╔═╡ 7d8cf072-df7c-4136-a394-783ea7ebe8dd
let
	P = eigvecs(A)
	inv(P)
end

# ╔═╡ e1810dd9-2a05-4c8a-8eff-2cec2331be9b
let
	P = eigvecs(A)
	inv(P) * A * P
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.54"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.11.1"
manifest_format = "2.0"
project_hash = "361564c5f3f859e049fa7b00b86539313c294a4f"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "6e1d2a35f2f90a4bc7c2ed98079b2ba09c35b83a"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.3.2"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.2"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"
version = "1.11.0"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"
version = "1.11.0"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "b10d0b65641d57b8b4d5e234446582de5047050d"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.5"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.1.1+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"
version = "1.11.0"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"
version = "1.11.0"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "05882d6995ae5c12bb5f36dd2ed3f61c98cbb172"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.5"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "179267cfa5e712760cd43dcae385d7ea90cc25a4"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.5"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "7134810b1afce04bbc1045ca1985fbe81ce17653"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.5"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "b6d6bfdd7ce25b0f9b2f6b3dd56b2673a66c8770"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.5"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"
version = "1.11.0"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.4"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.6.0+0"

[[deps.LibGit2]]
deps = ["Base64", "LibGit2_jll", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"
version = "1.11.0"

[[deps.LibGit2_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll"]
uuid = "e37daf67-58a4-590a-8e99-b0245dd2ffc5"
version = "1.7.2+0"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.0+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"
version = "1.11.0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
version = "1.11.0"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"
version = "1.11.0"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"
version = "1.11.0"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.6+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"
version = "1.11.0"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2023.12.12"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.27+1"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "8489905bcdbcfac64d1daa51ca07c0d8f0283821"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.8.1"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "Random", "SHA", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.11.0"

    [deps.Pkg.extensions]
    REPLExt = "REPL"

    [deps.Pkg.weakdeps]
    REPL = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "eba4810d5e6a01f612b948c9fa94f905b49087b0"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.60"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "5aa36f7049a63a1528fe8f7c3f2113413ffd4e1f"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.2.1"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "9306f6085165d270f7e3db02af26a400d580f5c6"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.3"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"
version = "1.11.0"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"
version = "1.11.0"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"
version = "1.11.0"

[[deps.Statistics]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "ae3bb1eb3bba077cd276bc5cfc337cc65c3075c0"
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.11.1"

    [deps.Statistics.extensions]
    SparseArraysExt = ["SparseArrays"]

    [deps.Statistics.weakdeps]
    SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
version = "1.11.0"

[[deps.Tricks]]
git-tree-sha1 = "7822b97e99a1672bfb1b49b668a6d46d58d8cbcb"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.9"

[[deps.URIs]]
git-tree-sha1 = "67db6cc7b3821e19ebe75791a9dd19c9b1188f2b"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.5.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"
version = "1.11.0"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
version = "1.11.0"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+1"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.11.0+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.59.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+2"
"""

# ╔═╡ Cell order:
# ╠═fc2ae896-494c-11ef-2aec-f94e1d8bc9e1
# ╠═adee8d2c-5f7b-4d2c-8390-ba690f2e6b4c
# ╠═36c92a82-9792-422a-9bfe-84529e384f5b
# ╠═bd2c3487-0ca5-41cc-838a-6345d12488b7
# ╠═3a8eaa5b-5c31-43c3-88ac-6da224c610e7
# ╠═4ec94318-08f1-448a-9566-05e3f137ddf0
# ╠═4a07b54a-49a9-4be9-bb55-eff0f0eb5f75
# ╠═25093cce-a22d-4744-bb6e-9733cd9a9ab6
# ╠═8ee0ff60-6721-45fa-86e6-932b8b684857
# ╠═835e2843-dd61-4efb-aeab-ea8fb388914f
# ╠═cb594065-eb39-41be-b49b-5e69cf4a0043
# ╠═a6129309-4dd2-4ca9-9ac1-c0bd48c2d3fd
# ╠═ade6b944-ea36-4b6e-97ca-85a1760d422e
# ╠═cdb6bd9c-cce3-486c-8d33-5d8c88a5bc1c
# ╠═32b8c828-bd10-461d-b2dd-aff628a0c6e4
# ╠═039c846e-0886-4513-97ca-e5ccf49102fc
# ╠═4dc9b6a6-44f8-414c-8855-1a72ec3522f1
# ╠═991ea6b4-1ae8-4281-805c-5e5527e4a8c7
# ╠═0f319d60-cd52-499e-aab9-1356f2a107c0
# ╠═64f67a75-f7c6-46b1-8860-e309edfe2726
# ╠═749b6816-ccbb-41eb-a3aa-788fcf3b1781
# ╠═19d5d6a5-6213-4ee1-add5-4100bd86bd48
# ╠═31c6f047-cad2-4a08-9111-d5017e136215
# ╠═57882e03-c887-4fd7-a1bc-addd9d5dd169
# ╠═bac11575-7d89-4167-8060-c38ac1a7d7f1
# ╠═60e1cf49-8772-4532-8039-a19d91cd45e0
# ╠═bd354862-d333-4817-9cde-87e01ae731ce
# ╠═de0acbc2-5f7e-4a10-ab9b-2eaaa617dae6
# ╠═146b49ec-f7ff-435f-884c-98df8a4faf6b
# ╠═d4a878d4-762f-4ae3-91ce-9d705d7ac80a
# ╠═fee7fc6a-d081-4b33-a14e-595d75528052
# ╠═a7153106-38a0-4888-80aa-569486db21ba
# ╠═4d0930e2-2bff-4130-bd42-a200fec7dc70
# ╠═a0d274d5-66f7-462a-b3cb-a818bae90520
# ╠═37249ad0-603f-4d1a-b184-477d0e8e679d
# ╠═72d2870c-15c7-43c5-b3b4-ce0b731dc270
# ╠═3fe176b3-eb04-47c1-befb-1b352681a1ee
# ╠═fefc61fc-5485-438e-b594-4ab3b8921942
# ╠═e2b59cdf-0525-4768-bf38-aff04bdea05a
# ╠═5eac1b77-ac9e-4ca6-9cec-7c3532fbe255
# ╠═ef02f28f-a44c-49b0-b00a-ac584c80e9b5
# ╠═b0ddedcd-992b-4482-a7a6-cf0ee43f996b
# ╠═42d59814-a150-455a-8c2c-8aaf20d891e1
# ╠═423e847d-9186-4c91-ac24-a26d39c1e1ed
# ╠═be9a828f-333c-425e-b07d-6d7ecfe9b501
# ╠═fd0f656a-dd9a-426c-9a26-9e8756a1ebf3
# ╠═446cc5d5-6df3-426f-a282-7360e9e1f404
# ╠═0c7d500d-6f1c-4efb-929c-bda380a398a3
# ╠═b549a952-52cf-4785-98d8-dee84ba1564d
# ╠═db14b723-51f7-41a3-a53f-efc6a95924cd
# ╠═6cd8bb07-f477-4583-814c-0026d6280cf9
# ╠═b44c6ed8-480a-4e39-918d-0238fea24c2a
# ╠═218715c1-e731-4d06-abe7-bd452e09af1e
# ╠═3413e031-4904-4a57-870d-bf4056ef9375
# ╠═493bf0e0-584c-4f69-aed6-e15e31b30b96
# ╠═bfdba196-ca4e-4aad-9e5f-3b3a9a5c0d9c
# ╠═a70a191b-1694-4d11-b653-65a4ca43aa7b
# ╠═97d2166e-d6ea-4633-acb3-2451cebef4dc
# ╠═7d8cf072-df7c-4136-a394-783ea7ebe8dd
# ╠═e1810dd9-2a05-4c8a-8eff-2cec2331be9b
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
