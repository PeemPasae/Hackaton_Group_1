import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from pathlib import Path

try:
    get_ipython().run_line_magic("matplotlib", "inline")
except Exception:
    pass

# แสดงคอลัมน์ทั้งหมด ไม่ตัดออก
pd.set_option("display.max_columns", None)
pd.set_option("display.width", 200)

print("Libraries loaded.")

# อ่านไฟล์ Export.csv
# skiprows=1 เพื่อข้าม บรรทัดแรก "sep=," ที่เป็น metadata ของ Excel
df = pd.read_csv(
    "Export.csv",
    skiprows=1,
    parse_dates=["Time"],
)

print(f"\nขนาดข้อมูล: {df.shape[0]:,} แถว × {df.shape[1]} คอลัมน์")
print(f"ช่วงเวลา: {df['Time'].min()}  →  {df['Time'].max()}")
print(f"\nคอลัมน์ทั้งหมด: {list(df.columns)}")
print("\n--- 10 แถวแรก ---")
print(df.head(10).to_string())