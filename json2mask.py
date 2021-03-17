import cv2
import numpy as np
import json

# 标签的序号和下面排序有关吗？
category_types = ["Background", "brown", "darkbrown", "palegreen", "emerald", "greenyellow", "stronggreen", "tan", "blackbrown", "pink"]

img = cv2.imread("trainResize512/68.png")
h, w = img.shape[:2]
mask = np.zeros([h, w, 1], np.uint8)    # 创建一个大小和原图相同的空白图像

with open("trainResize512/68.json", "r") as f:
    label = json.load(f)

shapes = label["shapes"]
for shape in shapes:
    category = shape["label"]
    points = shape["points"]
    # 填充
    points_array = np.array(points, dtype=np.int32)
    mask = cv2.fillPoly(mask, [points_array], category_types.index(category))

cv2.imwrite("trainResize512/masks/68.png", mask)