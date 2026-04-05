#!/usr/bin/env python3

from __future__ import annotations

import argparse
from pathlib import Path


BIT_REVERSE_TABLE = bytes(
    int(f"{value:08b}"[::-1], 2) for value in range(256)
)


def reverse_bitstream(src: Path, dst: Path) -> None:
    data = src.read_bytes()
    dst.write_bytes(data.translate(BIT_REVERSE_TABLE))


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Reverse the bit order in each byte of a Quartus RBF file."
    )
    parser.add_argument("input", type=Path, help="Source .rbf file")
    parser.add_argument("output", type=Path, help="Destination reversed .rbf file")
    args = parser.parse_args()

    args.output.parent.mkdir(parents=True, exist_ok=True)
    reverse_bitstream(args.input, args.output)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
