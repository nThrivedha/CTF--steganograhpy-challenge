#!/bin/bash

# ============================================
# CTF Challenge Builder — Hidden in Plain Sight
# Run this script to generate challenge.jpg
# ============================================

echo "🚀 Building CTF Challenge..."

# Step 1 - Create flag file
echo "FLAG{h1dd3n_1n_pl41n_s1ght}" > flag.txt
echo "✅ flag.txt created"

# Step 2 - Embed flag into image using steghide
steghide embed -cf challenge.jpg -sf flag.txt -p "ctf2024" -f
echo "✅ Flag embedded into challenge.jpg"

# Step 3 - Clean up flag.txt (don't leave it exposed!)
rm flag.txt
echo "✅ flag.txt removed"

# Step 4 - Move challenge file to correct folder
cp challenge.jpg challenge-files/challenge.jpg
echo "✅ Challenge file ready in challenge-files/"

echo ""
echo "🏁 Challenge built successfully!"
echo "📁 Give players: challenge-files/challenge.jpg"
echo "🔑 Solution:     solution/solution.md"
