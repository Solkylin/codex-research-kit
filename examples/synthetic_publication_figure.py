from pathlib import Path
import numpy as np
import matplotlib.pyplot as plt

ROOT = Path(__file__).resolve().parent
OUT = ROOT.parent / "docs" / "assets"
OUT.mkdir(parents=True, exist_ok=True)
rng = np.random.default_rng(7)
x = np.linspace(0, 10, 160)
mean_a = np.sin(x) * np.exp(-0.08 * x) + 0.08 * np.cos(2 * x)
mean_b = 0.55 * np.cos(0.75 * x) * np.exp(-0.05 * x)
err_a = 0.08 + 0.015 * x
err_b = 0.06 + 0.01 * x

plt.rcParams.update({
    "font.family": "DejaVu Sans",
    "font.size": 9,
    "axes.titlesize": 10,
    "axes.labelsize": 9,
    "legend.fontsize": 8,
    "svg.fonttype": "none",
})
fig, axes = plt.subplots(1, 2, figsize=(8.2, 3.2), constrained_layout=True)
for ax, mean, err, label, color, title in [
    (axes[0], mean_a, err_a, "Method A", "#2563eb", "Response over time"),
    (axes[1], mean_b, err_b, "Method B", "#d97706", "Comparison signal"),
]:
    ax.plot(x, mean, color=color, linewidth=2.0, label=label)
    ax.fill_between(x, mean - err, mean + err, color=color, alpha=0.18, linewidth=0)
    ax.set_xlabel("Time (s)")
    ax.set_ylabel("Normalized response")
    ax.set_title(title, loc="left", fontweight="bold")
    ax.grid(True, color="#cbd5e1", linewidth=0.6, alpha=0.7)
    ax.spines[["top", "right"]].set_visible(False)
    ax.legend(frameon=False, loc="upper right")
fig.suptitle("Synthetic publication-figure example", x=0.02, ha="left", fontsize=12, fontweight="bold")
fig.savefig(OUT / "synthetic-publication-figure.svg", bbox_inches="tight")
fig.savefig(OUT / "synthetic-publication-figure.png", dpi=180, bbox_inches="tight")
