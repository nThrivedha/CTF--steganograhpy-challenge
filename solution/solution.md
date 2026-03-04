# ✅ Solution — Hidden in Plain Sight

> **FOR ORGANIZERS ONLY — DO NOT SHARE WITH PLAYERS**

---

## 🔍 Challenge Summary

A flag is hidden inside `challenge.jpg` using `steghide`.
The image is password protected with the password: `ctf2024`

---

## 🛠️ How the Challenge Was Built

### Step 1 — Create the flag file
```bash
echo "FLAG{h1dd3n_1n_pl41n_s1ght}" > flag.txt
```

### Step 2 — Embed the flag inside the image
```bash
steghide embed -cf challenge.jpg -sf flag.txt -p "ctf2024"
```

---

## 🧩 How to Solve It

### Step 1 — Recognize it's a stego challenge
- File is a `.jpg` image
- Category is Steganography → use stego tools

### Step 2 — Run steghide to extract
```bash
steghide extract -sf challenge.jpg -p "ctf2024"
```

### Step 3 — Read the extracted file
```bash
cat flag.txt
```

### Output
```
FLAG{h1dd3n_1n_pl41n_s1ght}
```

---

## 🏁 Flag
```
FLAG{h1dd3n_1n_pl41n_s1ght}
```

---

## 📚 Concepts Tested
- Awareness of steganography tools
- Basic use of `steghide`
- Understanding of hidden data in image files
-
